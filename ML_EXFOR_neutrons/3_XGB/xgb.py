"""XGB Model training script."""
import argparse
import numpy as np
import pandas as pd
import os
from joblib import dump
import time
import xgboost as xgb
import itertools
from sklearn.model_selection import train_test_split

import nucml.datasets as nuc_data
import nucml.model.utilities as model_utils
import nucml.model.building_utils as build_utils

CLI = argparse.ArgumentParser()

CLI.add_argument(
    "--version",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="v1",  # default if nothing is provided
)

CLI.add_argument(
    "--max_depth",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="*",  # 0 or more values expected => creates a list
    type=int,
    default=[10, 40, 10],  # default if nothing is provided
)

CLI.add_argument(
    "--dataset",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=str,
    default="B0"  # default if nothing is provided
)

CLI.add_argument(
    "--train_frac",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=int,
    default=0.9  # default if nothing is provided
)

CLI.add_argument(
    "--gpu_num",  # name on the CLI - drop the `--` for positional/required parameters
    nargs="?",  # 0 or more values expected => creates a list
    type=int,
    default=0  # default if nothing is provided
)


args = CLI.parse_args()

DATASET = args.dataset
VERSION = '_' + args.version
DATASET_DICT = {"B0": 0, "B1": 1, "B2": 2, "B3": 3, "B4": 4}
NORMALIZER_TYPE = "none"
MT_STRATEGY = "one_hot"
TRAIN_FRACTION = args.train_frac
GPU_ID = args.gpu_num

ETA = 0.8
NUM_ROUND = 10
MAX_BIN_LIST = [40000, 50000]  # [300, 10000, 20000, 30000]
MAX_DEPTH_LIST = np.arange(args.max_depth[0], args.max_depth[1], args.max_depth[2])
LAMBDA_LIST = [0, 1]  # 5
OBJECTIVE_LIST = ['rmse']  # huber

# #############################################################################################
# ################################## IMPORTING MODULES ########################################
# #############################################################################################

main_storage = "E:ML_Models_EXFOR/XGB_{}/".format(DATASET)
if not os.path.isdir(main_storage):
    os.makedirs(main_storage)


df, x_train, x_test, y_train, y_test = nuc_data.load_exfor(
    normalize=False, pedro_v2=True, basic=DATASET_DICT[DATASET], frac=1-TRAIN_FRACTION, mt_coding=MT_STRATEGY)
x_val, x_test, y_val, y_test = train_test_split(x_test, y_test, test_size=0.5)
dtrain = xgb.DMatrix(x_train.values, y_train.values)
dtest = xgb.DMatrix(x_test.values, y_test.values)
evallist = [(dtrain, 'train'), (dtest, 'eval')]

a = [list(MAX_BIN_LIST), list(MAX_DEPTH_LIST), list(LAMBDA_LIST), list(OBJECTIVE_LIST)]
total_num_iterations = len(list(itertools.product(*a)))
loop_number = 1

for objective in OBJECTIVE_LIST:
    for l2 in LAMBDA_LIST:
        for max_depth in MAX_DEPTH_LIST:
            for max_bin in MAX_BIN_LIST:
                print("Iteration {}/{}".format(loop_number, total_num_iterations))

                RUN_NAME = 'XGB{}_L{}_MB{}_{}_{}_{}{}'.format(
                    max_depth, l2, max_bin, NORMALIZER_TYPE, objective, DATASET, VERSION)
                if RUN_NAME in os.listdir(main_storage):
                    print("Duplicate Training. Skipping")
                    loop_number = loop_number + 1
                    continue

                # ############################# TRAINING ##############################
                params = build_utils.get_xgboost_params(
                    eta=ETA, max_bin=max_bin, max_depth=max_depth, l2=l2, objective=objective, gpu_id=GPU_ID)
                progress = {}

                start_training_time = time.time()
                xgb_model = xgb.train(
                    params, dtrain, NUM_ROUND, evallist, evals_result=progress, verbose_eval=False,
                    early_stopping_rounds=10)
                stop_training_time = time.time()

                train_iteration_metrics = pd.DataFrame(progress['train'])
                test_iteration_metrics = pd.DataFrame(progress['eval'])
                train_iteration_metrics.columns = [x + "_train" for x in train_iteration_metrics.columns]
                test_iteration_metrics.columns = [x + "_test" for x in test_iteration_metrics.columns]
                all_iteration_metrics = pd.merge(
                    train_iteration_metrics, test_iteration_metrics, left_index=True, right_index=True)

                y_hat_train = model_utils.make_predictions(x_train.values, xgb_model, "xgb")
                y_hat_val = model_utils.make_predictions(x_val.values, xgb_model, "xgb")
                y_hat_test = model_utils.make_predictions(x_test.values, xgb_model, "xgb")

                train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
                val_error_metrics = model_utils.regression_error_metrics(y_hat_val, y_val)
                test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)

                # ################ MODEL AND SCALER SAVING ###########################
                model_saving_directory = os.path.join(main_storage, RUN_NAME + "/")
                os.makedirs(model_saving_directory)
                model_saving_path = os.path.join(model_saving_directory, "xgboost_model.joblib")
                dump(xgb_model, model_saving_path)

                all_iteration_metrics.to_csv(os.path.join(model_saving_directory, 'iteration_metrics.csv'), index=False)

                # ################### GATHERING RESULTS ##############################
                model_error_metrics = pd.DataFrame(columns=[
                    "id", "num_round", "max_depth", "l2", "max_bin", 'objective', 'mt_strategy', 'normalizer',
                    "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
                    "val_mae", "val_mse", "val_evs", "val_mae_m", "val_r2",
                    "test_mae", "test_mse", "test_evs", "test_mae_m", "test_r2",
                    "model_path", "training_time", "scaler_path"])
                to_append = model_utils.create_train_test_error_df(
                    loop_number, train_error_metrics, test_error_metrics, val_error_metrics=val_error_metrics)
                to_append['mt_strategy'] = MT_STRATEGY
                to_append["normalizer"] = NORMALIZER_TYPE
                to_append["num_round"] = NUM_ROUND
                to_append["max_depth"] = max_depth
                to_append["l2"] = l2
                to_append["max_bin"] = max_bin
                to_append['objective'] = objective
                to_append["training_time"] = stop_training_time - start_training_time
                to_append["model_path"] = os.path.abspath(model_saving_path)
                to_append["scaler_path"] = "none"
                model_error_metrics = model_error_metrics.append(to_append)

                csv_path = os.path.join("", "xgb_results{}.csv".format(DATASET))
                if os.path.exists(csv_path):
                    previous = pd.read_csv(csv_path)
                    new = previous.append(model_error_metrics)
                    new.to_csv(csv_path, index=False)
                else:
                    model_error_metrics.to_csv(csv_path, index=False)

                loop_number = loop_number + 1
