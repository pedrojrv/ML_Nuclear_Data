from comet_ml import Experiment
import wandb
import argparse
import numpy as np

CLI=argparse.ArgumentParser()

CLI.add_argument(
  "--version",  # name on the CLI - drop the `--` for positional/required parameters
  nargs="?",  # 0 or more values expected => creates a list
  type=str,
  default="v5",  # default if nothing is provided
)

CLI.add_argument(
  "--range",  # name on the CLI - drop the `--` for positional/required parameters
  nargs="*",  # 0 or more values expected => creates a list
  type=int,
  default=[60, 410, 10],  # default if nothing is provided
)

args = CLI.parse_args()

COMMET_PROJECT_NAME = "dt-scikit-exfor"
WANDB_PROJECT_NAME = COMMET_PROJECT_NAME
DATASET = 'B0'
VERSION = '_' + args.version
DATASET_DICT = {"B0":0, "B1":1, "B2":2}
NORMALIZER_TYPE = "standard"
MT_STRATEGY = "one_hot"
TRAIN_FRACTION = 0.9
MAX_DEPTH_LIST = np.arange(args.range[0], args.range[1], args.range[2])
MIN_SPLIT_LIST = [2, 5, 10, 15]
MIN_LEAF_LIST = [1, 3, 5, 7, 10]

import pandas as pd
import os
from joblib import dump
import time
from sklearn import tree
import sys
import itertools

# This allows us to import the nucml utilities
sys.path.append("../../..")

from sklearn.model_selection import train_test_split

import nucml.exfor.data_utilities as exfor_utils # pylint: disable=import-error
import nucml.exfor.plotting_utilities as exfor_plot_utils # pylint: disable=import-error
import nucml.plot.plotting_utilities as plot_utils # pylint: disable=import-error
import nucml.datasets as nuc_data # pylint: disable=import-error
import nucml.ace.data_utilities as ace_utils # pylint: disable=import-error
import nucml.model.model_utilities as model_utils # pylint: disable=import-error



parameters_dict = {"max_depth_list":MAX_DEPTH_LIST, "min_split_list":MIN_SPLIT_LIST, "min_leaf_list":MIN_LEAF_LIST}


df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
    log=True, low_en=True, num=True, filters=True, basic=DATASET_DICT[DATASET], frac=1-TRAIN_FRACTION,
    scaling_type=NORMALIZER_TYPE, mt_coding=MT_STRATEGY)

x_val, x_test, y_val, y_test = train_test_split(x_test, y_test, test_size=0.5)

new_cl_data_kwargs = {"Z":17, "A":35, "MT":"MT_103", "log":True, "scale":True, "scaler":scaler, "to_scale":to_scale, "one_hot":True}
new_cl_data = exfor_utils.load_newdata("../../../EXFOR/New_Data/Chlorine_Data/new_cl_np.csv", df, **new_cl_data_kwargs)
new_cl_data.head()




a = [list(MAX_DEPTH_LIST), list(MIN_SPLIT_LIST), list(MIN_LEAF_LIST)]
total_num_iterations = len(list(itertools.product(*a)))
loop_number = 1 # ORIGINAL INDENT
for i in MAX_DEPTH_LIST:
    for mss in MIN_SPLIT_LIST:
        for msl in MIN_LEAF_LIST:
            model_error_metrics = pd.DataFrame(columns=["id", "max_depth", "mss", "msl" 'mt_strategy', 'normalizer', 
                                                        "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
                                                        "val_mae", "val_mse", "val_evs",  "val_mae_m", "val_r2", 
                                                        "test_mae", "test_mse", "test_evs",  "test_mae_m", "test_r2",
                                                        "model_path", "training_time", "scaler_path"])
            if mss <= msl:
                print("Iteration {}/{}".format(loop_number, total_num_iterations))
                print("MSS smaller than MSL. Skipping Iteration")
                loop_number = loop_number + 1
            else:
                print("Iteration {}/{}".format(loop_number, total_num_iterations))
                # ------------------------------------------ TRAINING -------------------------------------------
                # BUILDING MODEL AND LOGGING NUMBER OF LAYERS AND UNITS
                start_training_time = time.time()
                print("Training Decision Tree Regressor")
                print("Max Depth = {}; Min Samples Split = {}; Min Samples Leaf = {}".format(i, mss, msl))
                dt_model = tree.DecisionTreeRegressor(max_depth=i, min_samples_split=mss, min_samples_leaf=msl)
                dt_model.fit(x_train, y_train)
                stop_training_time = time.time()

                y_hat_train = dt_model.predict(x_train)
                train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
                y_hat_val = dt_model.predict(x_val)
                val_error_metrics = model_utils.regression_error_metrics(y_hat_val, y_val)
                y_hat_test = dt_model.predict(x_test)
                test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)

                to_append = model_utils.create_train_test_error_df(loop_number, train_error_metrics, test_error_metrics, val_error_metrics=val_error_metrics)
                to_append['mt_strategy'] = MT_STRATEGY
                to_append["normalizer"] = NORMALIZER_TYPE
                to_append["max_depth"] = dt_model.get_depth()
                to_append["mss"] = mss
                to_append["msl"] = msl
                to_append["training_time"] = stop_training_time - start_training_time
            
                # ----- COMET and WANDB CONFIG ------------------------------------------------------------------
                # DEFINING NAME OF RUN/EXPERIMENT AND PARAMETERS
                params = {
                    'Model Type': "DT",
                    'Dataset': '{}_{}_MT{}'.format(DATASET, NORMALIZER_TYPE, MT_STRATEGY),
                    'Max Depth': dt_model.get_depth(),
                    'Scaler': NORMALIZER_TYPE,
                    'MSS': mss,
                    'MSL': msl,
                    'Training Time': stop_training_time - start_training_time
                }

                GROUP_NAME = "DT_{}".format(DATASET) # CHANGED

                RUN_NAME = 'DT{}_MSS{}_MSL{}_{}_{}_{}{}'.format(int(dt_model.get_depth()), mss, msl, NORMALIZER_TYPE, MT_STRATEGY, DATASET, VERSION) 

                if RUN_NAME in os.listdir("E:ML_Models_EXFOR/DT_{}/".format(DATASET)):
                    print("Duplicate Training. Skipping")
                    loop_number = loop_number + 1
                    continue
                

                model_saving_directory = os.path.join("E:/ML_Models_EXFOR/DT_{}/".format(DATASET), RUN_NAME + "/")
                os.makedirs(model_saving_directory)
                model_saving_path = os.path.join(model_saving_directory, RUN_NAME + ".joblib")
                scaler_saving_path = os.path.join(model_saving_directory, 'scaler.pkl')

                dump(dt_model, model_saving_path)  # dump it on wandb.run.dir
                dump(scaler, open(scaler_saving_path, 'wb'))

                to_append["model_path"] = os.path.abspath(model_saving_path)
                to_append["scaler_path"] = os.path.abspath(scaler_saving_path)

                model_error_metrics = model_error_metrics.append(to_append)
                
                # --------------------------------------- WANDB -------------------------------------------------
                # INITIATING WANDB RUN AND UPDATING CONFIG WITH HYPERPARAMETER VALUES
                # run = wandb.init(project=WANDB_PROJECT_NAME, name=RUN_NAME, reinit=True, 
                #         group=GROUP_NAME, id=RUN_NAME)
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

                csv_path = os.path.join("", "dt_results.csv")
                if os.path.exists(csv_path):
                    previous = pd.read_csv(csv_path)
                    new = previous.append(model_error_metrics)
                    new.to_csv(csv_path, index=False)
                else:
                    model_error_metrics.to_csv(csv_path, index=False)

                loop_number = loop_number + 1
