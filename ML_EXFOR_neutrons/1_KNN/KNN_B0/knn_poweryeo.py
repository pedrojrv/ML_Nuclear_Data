from comet_ml import Experiment
import wandb
import argparse

CLI=argparse.ArgumentParser()

CLI.add_argument(
  "--version",  # name on the CLI - drop the `--` for positional/required parameters
  nargs="?",  # 0 or more values expected => creates a list
  type=str,
  default="v4",  # default if nothing is provided
)

CLI.add_argument(
  "--k_list",  # name on the CLI - drop the `--` for positional/required parameters
  nargs="*",  # 0 or more values expected => creates a list
  type=int,
  default=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20],  # default if nothing is provided
)

args = CLI.parse_args()

COMMET_PROJECT_NAME = "ml-scikit-exfor"
WANDB_PROJECT_NAME = COMMET_PROJECT_NAME
DATASET = 'B0'
VERSION = '_' + args.version
DATASET_DICT = {"B0":0, "B1":1, "B2":2}
NORMALIZER_TYPE = "power_yeo"
MT_STRATEGY = "one_hot"
TRAIN_FRACTION = 0.9
K_LIST = args.k_list
DISTANCE_METRIC = ["euclidean", "manhattan"]

import pandas as pd
import itertools
import numpy as np
import os
from joblib import dump
import time
from sklearn.neighbors import KNeighborsRegressor
import sys
from sklearn.model_selection import train_test_split

# This allows us to import the nucml utilities
sys.path.append("../../..")

import nucml.exfor.data_utilities as exfor_utils # pylint: disable=import-error
import nucml.exfor.plotting_utilities as exfor_plot_utils # pylint: disable=import-error
import nucml.plot.plotting_utilities as plot_utils # pylint: disable=import-error
import nucml.datasets as nuc_data # pylint: disable=import-error
import nucml.ace.data_utilities as ace_utils # pylint: disable=import-error
import nucml.model.model_utilities as model_utils # pylint: disable=import-error



df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
    log=True, low_en=True, num=True, filters=True, basic=DATASET_DICT[DATASET], frac=1-TRAIN_FRACTION,
    scaling_type=NORMALIZER_TYPE, mt_coding=MT_STRATEGY)

x_val, x_test, y_val, y_test = train_test_split(x_test, y_test, test_size=0.5)

new_cl_data_kwargs = {"Z":17, "A":35, "MT":"MT_103", "log":True, "scale":True, "scaler":scaler, "to_scale":to_scale, "one_hot":True}
new_cl_data = exfor_utils.load_newdata("../../../EXFOR/New_Data/Chlorine_Data/new_cl_np.csv", df, **new_cl_data_kwargs)
new_cl_data.head()


a = [list(K_LIST), list(DISTANCE_METRIC)]
total_num_iterations = len(list(itertools.product(*a)))
loop_number = 1 # ORIGINAL INDENT
for k_number in K_LIST:   
    for distance_metric in DISTANCE_METRIC:

        GROUP_NAME = "KNN_{}".format(DATASET) # CHANGED
        RUN_NAME = 'k{}_{}_{}_{}_{}_{}{}'.format(
            k_number, "distance", distance_metric, NORMALIZER_TYPE, MT_STRATEGY, DATASET, VERSION) 

        if RUN_NAME in os.listdir("E:ML_Models_EXFOR/KNN_{}/".format(DATASET)):
            print("Duplicate Training. Skipping")
            loop_number = loop_number + 1
            continue

        print("Iteration {}/{}".format(loop_number, total_num_iterations))
        # ------------------------------------------ TRAINING -------------------------------------------
        # BUILDING MODEL AND LOGGING NUMBER OF LAYERS AND UNITS
        model_error_metrics = pd.DataFrame(columns=["id", "distance_metric", "distance_type", 'mt_strategy', 'normalizer', 
                                            "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
                                            "val_mae", "val_mse", "val_evs",  "val_mae_m", "val_r2", 
                                            "test_mae", "test_mse", "test_evs",  "test_mae_m", "test_r2",
                                            "model_path", "training_time", "scaler_path", "run_name"])

        if distance_metric == "euclidean":
            p_type = 2
        elif distance_metric == "manhattan":
            p_type = 1

        start_training_time = time.time()
        print("Training kNN with k = {}".format(k_number))
        neigh_model = KNeighborsRegressor(n_neighbors=k_number, weights="distance", p=p_type, metric='minkowski', n_jobs=-1) # MODIFY
        neigh_model.fit(x_train, y_train)
        stop_training_time = time.time()

        y_hat_train = neigh_model.predict(x_train)
        train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
        y_hat_val = neigh_model.predict(x_val)
        val_error_metrics = model_utils.regression_error_metrics(y_hat_val, y_val)
        y_hat_test = neigh_model.predict(x_test)
        test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)


        to_append = model_utils.create_train_test_error_df(k_number, train_error_metrics, test_error_metrics, val_error_metrics=val_error_metrics)
        to_append["training_time"] = stop_training_time - start_training_time
        to_append["distance_metric"] = distance_metric
        to_append["distance_type"] = "distance"
        to_append['mt_strategy'] = MT_STRATEGY
        to_append["normalizer"] = NORMALIZER_TYPE
        to_append["run_name"] = RUN_NAME


        # ----- COMET and WANDB CONFIG ------------------------------------------------------------------
        # DEFINING NAME OF RUN/EXPERIMENT AND PARAMETERS
        params = {
            'Model Type': "KNN",
            'Dataset': '{}_{}_MT{}'.format(DATASET, NORMALIZER_TYPE, MT_STRATEGY),
            'K':k_number,
            'Scaler':NORMALIZER_TYPE,
            'Distance Function': "distance",
            'Distance': distance_metric
        }


        model_saving_directory = os.path.join("E:/ML_Models_EXFOR/KNN_{}/".format(DATASET), RUN_NAME + "/")
        os.makedirs(model_saving_directory)
        model_saving_path = os.path.join(model_saving_directory, RUN_NAME + ".joblib")
        scaler_saving_path = os.path.join(model_saving_directory, 'scaler.pkl')


        dump(neigh_model, model_saving_path)  # dump it on wandb.run.dir
        dump(scaler, open(scaler_saving_path, 'wb'))

        to_append["model_path"] = os.path.abspath(model_saving_path)
        to_append["scaler_path"] = os.path.abspath(scaler_saving_path)

        model_error_metrics = model_error_metrics.append(to_append)
        
        # --------------------------------------- WANDB -------------------------------------------------
        # INITIATING WANDB RUN AND UPDATING CONFIG WITH HYPERPARAMETER VALUES
        # run = wandb.init(project=WANDB_PROJECT_NAME, name=RUN_NAME, reinit=True, group=GROUP_NAME, id=RUN_NAME)
        # wandb.config.update(params)
        connection = False
        while connection is False:
            try:
                # connect
                time.sleep(30)
                run = wandb.init(project=WANDB_PROJECT_NAME, name=RUN_NAME, reinit=True, group=GROUP_NAME, id=RUN_NAME)
                connection = True
            except:
                print("Connection to WANDB not succesfull. Trying again...")
                pass
        
        # --------------------------------------- COMET -------------------------------------------------
        # COMET ML WORKS BY INITIATING EXPERIMENT AND BY LOGGING A DICTIONARY
        comet_experiment = Experiment(api_key="Jv0hkDdkBwkl7DB5mjjdphg9a", auto_param_logging=False,
                        project_name=COMMET_PROJECT_NAME, workspace="pedrojrv", 
                        log_git_metadata=False, log_git_patch=False)
        comet_experiment.set_name(RUN_NAME)
        params.update({"Group":GROUP_NAME})
        comet_experiment.log_parameters(params) # LOGGING HYPERPARAMETERS TO COMET EXPERIMENT
        LOGGING_DIR_NAME =  wandb.run.dir  # SETTING DIRECTORY TO SAVE CHECKPOINTS, TENSORBOARD, AND CSV
        # -----------------------------------------------------------------------------------------------
        
        
        # ----- COMET and WANDB LOGGING -----------------------------------------------------------------
        # --------------------------------------- WANDB -------------------------------------------------
        wandb.log({'Train MSE': train_error_metrics['mse']})
        wandb.log({'Train MAE': train_error_metrics['mae']})
        wandb.log({'Val MSE': val_error_metrics['mse']})
        wandb.log({'Val MAE': val_error_metrics['mae']})
        wandb.log({'Test MSE': test_error_metrics['mse']})
        wandb.log({'Test MAE': test_error_metrics['mae']})

        to_append.to_csv(os.path.join(LOGGING_DIR_NAME, "model_metrics_info.csv"), index=False)

        run.finish()
        # --------------------------------------- COMET -------------------------------------------------
        # COMET DOES NOT SAVE MODEL OR ANY OTHER DATA FILES, MUST BE LOGGED MANUALLY
        # HERE WE LOG THE MODEL, THE TRAINING CSV, THE ENTIRE WANDB FOLDER,
        # A PIL VERSION OF THE PLOTLY IMAGE AND THE DATASET VERSION
        # comet_experiment.log_model(RUN_NAME, model_saving_dir) 
        comet_experiment.log_asset_folder(LOGGING_DIR_NAME) 
        comet_experiment.log_dataset_info(
            name='{}_{}_MT{}'.format(DATASET, NORMALIZER_TYPE, MT_STRATEGY), version="1")
                
        metrics = {
            'Train MSE': train_error_metrics['mse'],
            'Train MAE': train_error_metrics['mae'],
            'Val MSE': val_error_metrics['mse'],
            'Val MAE': val_error_metrics['mae'],
            'Test MSE': test_error_metrics['mse'],
            'Test MAE': test_error_metrics['mae']
        }


        comet_experiment.log_metrics(metrics)
        comet_experiment.end()

        csv_path = os.path.join("", "knn_results.csv")
        if os.path.exists(csv_path):
            previous = pd.read_csv(csv_path)
            new = previous.append(model_error_metrics)
            new.to_csv(csv_path, index=False)
        else:
            model_error_metrics.to_csv(csv_path, index=False)

        loop_number = loop_number + 1
