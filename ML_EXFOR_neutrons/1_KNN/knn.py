"""KNN Model training script."""

import argparse
import pandas as pd
import itertools
import os
from joblib import dump
import time
from sklearn.neighbors import KNeighborsRegressor
from sklearn.model_selection import train_test_split


import nucml.datasets as nuc_data
import nucml.model.utilities as model_utils


CLI = argparse.ArgumentParser()

CLI.add_argument(
    "--version",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="v1"  # default if nothing is provided
)

CLI.add_argument(
    "--k_list",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="*",  # 0 or more values expected => creates a list
    type=int,
    default=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20]
)

CLI.add_argument(
    "--dataset",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="B0"  # default if nothing is provided
)

CLI.add_argument(
    "--normalizer",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="standard"  # default if nothing is provided
)

CLI.add_argument(
    "--n_jobs",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=int,
    default=-2  # default if nothing is provided
)

CLI.add_argument(
    "--scale_e",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="n"  # default if nothing is provided
)


args = CLI.parse_args()

DATASET = args.dataset
VERSION = '_' + args.version
DATASET_DICT = {"B0": 0, "B1": 1, "B2": 2, "B3": 3, 'B4': 4}
NORMALIZER_TYPE = args.normalizer
MT_STRATEGY = "one_hot"
TRAIN_FRACTION = 0.9
K_LIST = args.k_list
# DISTANCE_METRIC = ["euclidean", "manhattan"]
DISTANCE_METRIC = ["manhattan"]
NJOBS = args.n_jobs
SCALE_ENERGY_DICT = {"y": True, "n": False}
SCALE_ENERGY = SCALE_ENERGY_DICT[args.scale_e]

# #############################################################################################
# ################################## IMPORTING MODULES ########################################
# #############################################################################################

df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
    pedro=True, basic=DATASET_DICT[DATASET], frac=1-TRAIN_FRACTION, scaling_type=NORMALIZER_TYPE, mt_coding=MT_STRATEGY,
    scale_energy=SCALE_ENERGY)

x_val, x_test, y_val, y_test = train_test_split(x_test, y_test, test_size=0.5)

a = [list(K_LIST), list(DISTANCE_METRIC)]
total_num_iterations = len(list(itertools.product(*a)))
loop_number = 1  # ORIGINAL INDENT
for k_number in K_LIST:
    for distance_metric in DISTANCE_METRIC:

        RUN_NAME = 'k{}_{}_{}_{}_{}_{}{}'.format(
            k_number, "distance", distance_metric, NORMALIZER_TYPE, MT_STRATEGY, DATASET, VERSION)

        main_storage = "E:ML_Models_EXFOR/KNN_{}/".format(DATASET)
        if not os.path.isdir(main_storage):
            os.makedirs(main_storage)
        if RUN_NAME in os.listdir("E:ML_Models_EXFOR/KNN_{}/".format(DATASET)):
            print("Duplicate Training. Skipping")
            loop_number = loop_number + 1
            continue

        print("Iteration {}/{}".format(loop_number, total_num_iterations))
        # ############################# TRAINING ##############################
        if distance_metric == "euclidean":
            p_type = 2
        elif distance_metric == "manhattan":
            p_type = 1

        print("Training kNN with k = {}".format(k_number))
        start_training_time = time.time()
        neigh_model = KNeighborsRegressor(
            n_neighbors=k_number, weights="distance", p=p_type, metric='minkowski', n_jobs=NJOBS)
        neigh_model.fit(x_train, y_train)
        stop_training_time = time.time()

        y_hat_train = neigh_model.predict(x_train)
        y_hat_val = neigh_model.predict(x_val)
        y_hat_test = neigh_model.predict(x_test)

        train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
        val_error_metrics = model_utils.regression_error_metrics(y_hat_val, y_val)
        test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)

        # ################ MODEL AND SCALER SAVING ###########################
        model_saving_directory = os.path.join("E:/ML_Models_EXFOR/KNN_{}/".format(DATASET), RUN_NAME + "/")
        os.makedirs(model_saving_directory)
        model_saving_path = os.path.join(model_saving_directory, RUN_NAME + ".joblib")
        scaler_saving_path = os.path.join(model_saving_directory, 'scaler.pkl')
        dump(neigh_model, model_saving_path)  # dump it on wandb.run.dir
        dump(scaler, open(scaler_saving_path, 'wb'))

        # ################### GATHERING RESULTS ##############################
        model_error_metrics = pd.DataFrame(columns=[
            "id", "distance_metric", 'mt_strategy', 'normalizer',
            "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
            "val_mae", "val_mse", "val_evs", "val_mae_m", "val_r2",
            "test_mae", "test_mse", "test_evs", "test_mae_m", "test_r2",
            "model_path", "training_time", "scaler_path", "run_name"])
        to_append = model_utils.create_train_test_error_df(
            k_number, train_error_metrics, test_error_metrics, val_error_metrics=val_error_metrics)
        to_append["training_time"] = stop_training_time - start_training_time
        to_append["distance_metric"] = distance_metric
        to_append['mt_strategy'] = MT_STRATEGY
        to_append["normalizer"] = NORMALIZER_TYPE
        to_append["run_name"] = RUN_NAME
        to_append["model_path"] = os.path.abspath(model_saving_path)
        to_append["scaler_path"] = os.path.abspath(scaler_saving_path)
        model_error_metrics = model_error_metrics.append(to_append)

        csv_path = os.path.join("", "knn_results_{}.csv".format(DATASET))
        if os.path.exists(csv_path):
            previous = pd.read_csv(csv_path)
            new = previous.append(model_error_metrics)
            new.to_csv(csv_path, index=False)
        else:
            model_error_metrics.to_csv(csv_path, index=False)

        loop_number = loop_number + 1
