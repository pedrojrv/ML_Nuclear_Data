from comet_ml import Experiment
import wandb

import pandas as pd
import numpy as np
import os
from joblib import dump
import time
from sklearn import tree
import sys
import itertools

# This allows us to import the nucml utilities
sys.path.append("../../..")

import nucml.exfor.data_utilities as exfor_utils # pylint: disable=import-error
import nucml.exfor.plotting_utilities as exfor_plot_utils # pylint: disable=import-error
import nucml.plot.plotting_utilities as plot_utils # pylint: disable=import-error
import nucml.datasets as nuc_data # pylint: disable=import-error
import nucml.ace.data_utilities as ace_utils # pylint: disable=import-error
import nucml.model.model_utilities as model_utils # pylint: disable=import-error

endf_cl = nuc_data.load_endf("Cl035", "MT103", log=True)
endf_u  = nuc_data.load_endf("U233", "MT018", log=True)


# ACE EXTRACTION IMPLEMENTED INTO ANOTHER FUNCTION, NO NEED TO OBTAIN MANUALLY IN FUTURE VERSIONS
ace_dir = "../../../../../Documents/Serpent/xsdata/endfb7/acedata"
ace_u = ace_utils.get_energies("92233", ev=True, log=True, ace_dir=ace_dir)
ace_cl = ace_utils.get_energies("17035", ev=True, log=True)


COMMET_PROJECT_NAME = "dt-scikit-exfor"
WANDB_PROJECT_NAME = COMMET_PROJECT_NAME

DATASET = 'B0'
VERSION = ''

DATASET_DICT = {"B0":0, "B1":1, "B2":2}

order = {
    "3":"endf", 
    "1":"exfor_ml_original", 
    "2":"exfor_ml", 
    "4":"exfor_new"}

def run_chlorine(df, model):
    cl_kwargs =  {"Z":17, "A":35, "MT":"MT_103", "clf_type":None, "scaler":scaler, "to_scale":to_scale, "html":False,
                  "e_array":"ace", "log":True, "show":False, "render":False, "save":False, "inv_trans":True}
    results_cl = exfor_utils.predicting_nuclear_xs_v2(df, clf=model, new_data=new_cl_data, get_endf=True, **cl_kwargs)
    fig = exfor_plot_utils.plotly_ml_results(results_cl, show=True)
    return fig

def run_uranium(df, model):
    u_kwargs =  {"Z":92, "A":233, "MT":"MT_18", "clf_type":None, "scaler":scaler, "to_scale":to_scale, "html":False,
                  "e_array":"ace", "log":True, "show":False, "render":False, "save":False, "inv_trans":True}
    results_u = exfor_utils.predicting_nuclear_xs_v2(df, clf=model, get_endf=True, **u_kwargs)
    fig = exfor_plot_utils.plotly_ml_results(results_u, order_dict=order, show=True)
    return fig


model_error_metrics = pd.DataFrame(columns=["id", 'mt_strategy', 'normalizer', "max_depth", "mss", "msl", "train_mae", "train_mse", 
            "train_evs", "train_mae_m", "train_r2", "test_mae", "test_mse", "test_evs",  "test_mae_m", "test_r2", 
            "model_path", "training_time", "scaler_path"])


parameters_dict = {"max_depth_list":np.arange(10, 320, 10), "min_split_list":[2, 5, 10, 15], "min_leaf_list":[1, 3, 5, 7, 10]}

for mt_strategy in ["one_hot"]:
    for normalizer_type in ["standard"]:
        
        df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
            log=True, low_en=True, num=True, filters=True, basic=DATASET_DICT[DATASET], 
            scaling_type=normalizer_type, mt_coding=mt_strategy)
        
        new_cl_data_kwargs = {"Z":17, "A":35, "MT":"MT_103", "log":True, "scale":True, "scaler":scaler, "to_scale":to_scale, "one_hot":True}
        new_cl_data = exfor_utils.load_newdata("../../../EXFOR/New_Data/Chlorine_Data/new_cl_np.csv", df, **new_cl_data_kwargs)
        new_cl_data.head()


        a = [list(parameters_dict["max_depth_list"]), list(parameters_dict["min_split_list"]), list(parameters_dict["min_leaf_list"])]
        total_num_iterations = len(list(itertools.product(*a)))

        loop_number = 1 # ORIGINAL INDENT
        for i in parameters_dict["max_depth_list"]:
            for mss in parameters_dict["min_split_list"]:
                for msl in parameters_dict["min_leaf_list"]:
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
                        y_hat_test = dt_model.predict(x_test)
                        test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)
                        
                        to_append = model_utils.create_train_test_error_df(loop_number, train_error_metrics, test_error_metrics)

                        to_append['mt_strategy'] = mt_strategy
                        to_append["normalizer"] = normalizer_type
                        to_append["max_depth"] = dt_model.get_depth()
                        to_append["mss"] = mss
                        to_append["msl"] = msl
                        to_append["training_time"] = stop_training_time - start_training_time
                    
                        # ----- COMET and WANDB CONFIG ------------------------------------------------------------------
                        # DEFINING NAME OF RUN/EXPERIMENT AND PARAMETERS
                        params = {
                            'Model Type': "DT",
                            'Dataset': '{}_{}_MT{}'.format(DATASET, normalizer_type, mt_strategy),
                            'Max Depth': dt_model.get_depth(),
                            'Scaler': normalizer_type,
                            'MSS': mss,
                            'MSL': msl,
                            'Training Time': stop_training_time - start_training_time
                        }

                        GROUP_NAME = "DT_{}".format(DATASET) # CHANGED

                        RUN_NAME = 'DT{}_MSS{}_MSL{}_{}_{}_{}_v2'.format(int(dt_model.get_depth()), mss, msl, normalizer_type, mt_strategy, DATASET) 

                        if RUN_NAME in os.listdir("E:ML_Models_EXFOR/DT_{}/".format(DATASET)):
                            print("Duplicate Training. Skipping")
                            loop_number = loop_number + 1
                            continue
                        
                        # LOGGING CHLORINE PLOTLY PLOT
                        fig_to_log_cl = run_chlorine(df, dt_model)
                        fig_to_log_u = run_uranium(df, dt_model)
                        # LOGGING FIGURES TO COMET (DOES NOT ACCEPT PLOTLY)
                        pil_fig_cl = plot_utils.plotly_fig2pil(fig_to_log_cl)
                        pil_fig_u = plot_utils.plotly_fig2pil(fig_to_log_u)

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
                        run = wandb.init(project=WANDB_PROJECT_NAME, name=RUN_NAME, reinit=True, 
                                group=GROUP_NAME, id=RUN_NAME)
                        wandb.config.update(params)
                        
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
                        wandb.log({'Val MSE': test_error_metrics['mse']})
                        wandb.log({'Val MAE': test_error_metrics['mae']})
                        wandb.log({'Chlorine_35_NP': fig_to_log_cl})
                        wandb.log({'Uranium_233_NF': fig_to_log_u})

                        to_append.to_csv(os.path.join(LOGGING_DIR_NAME, "model_metrics_info.csv"), index=False)

                        run.finish()
                        # --------------------------------------- COMET -------------------------------------------------
                        # COMET DOES NOT SAVE MODEL OR ANY OTHER DATA FILES, MUST BE LOGGED MANUALLY
                        # HERE WE LOG THE MODEL, THE TRAINING CSV, THE ENTIRE WANDB FOLDER,
                        # A PIL VERSION OF THE PLOTLY IMAGE AND THE DATASET VERSION
                        # comet_experiment.log_model(RUN_NAME, model_saving_dir) 
                        comet_experiment.log_asset_folder(LOGGING_DIR_NAME) 
                        comet_experiment.log_dataset_info(
                            name='{}_{}_MT{}'.format(DATASET, normalizer_type, mt_strategy), version="1")

                        comet_experiment.log_image(pil_fig_cl, name="Chlorine_35_NP") # MAPTLOTLIB PYPLOT USING LOG_FIGURE
                        comet_experiment.log_image(pil_fig_u, name="Uranium_233_NF")
                            
                        metrics = {
                            'Train MSE': train_error_metrics['mse'],
                            'Train MAE': train_error_metrics['mae'],
                            'Val MSE': test_error_metrics['mse'],
                            'Val MAE': test_error_metrics['mae']
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
