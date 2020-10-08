from comet_ml import Experiment
import wandb

import pandas as pd
import numpy as np
import os
from joblib import dump
import time
from sklearn.neighbors import KNeighborsRegressor
import sys

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


COMMET_PROJECT_NAME = "ml-scikit-exfor"
WANDB_PROJECT_NAME = COMMET_PROJECT_NAME


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



model_error_metrics = pd.DataFrame(columns=["id", "distance_metric", "distance_type", 'mt_strategy', 
                                            'normalizer', "train_mae", "train_mse", "train_evs", "train_mae_m", 
                                            "train_r2", "test_mae", "test_mse", "test_evs",  "test_mae_m", 
                                            "test_r2", "model_path", "training_time", "scaler_path"])

for mt_strategy in ["one_hot"]:
    for normalizer_type in ["maxabs"]:
        
        df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
            log=True, low_en=True, num=True, filters=True, basic=0, 
            scaling_type=normalizer_type, mt_coding=mt_strategy)
        
        new_cl_data_kwargs = {"Z":17, "A":35, "MT":"MT_103", "log":True, "scale":True, "scaler":scaler, "to_scale":to_scale, "one_hot":True}
        new_cl_data = exfor_utils.load_newdata("../../../EXFOR/New_Data/Chlorine_Data/new_cl_np.csv", df, **new_cl_data_kwargs)
        new_cl_data.head()
        
        for k_number in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]:   
            for distance_type in ["uniform", "distance"]:
                for distance_metric in ["euclidean", "manhattan"]:        

                    # ------------------------------------------ TRAINING -------------------------------------------
                    # BUILDING MODEL AND LOGGING NUMBER OF LAYERS AND UNITS

                    if distance_metric == "euclidean":
                        p_type = 2
                    elif distance_metric == "manhattan":
                        p_type = 1

                    start_training_time = time.time()
                    print("Training kNN with k = {}".format(k_number))
                    neigh_model = KNeighborsRegressor(n_neighbors=k_number, weights=distance_type, p=p_type, 
                                            metric='minkowski', n_jobs=-2) # MODIFY

                    neigh_model.fit(x_train, y_train)
                    stop_training_time = time.time()
                    y_hat_train = neigh_model.predict(x_train)
                    train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
                    y_hat_test = neigh_model.predict(x_test)
                    test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)

                    to_append = model_utils.create_train_test_error_df(k_number, train_error_metrics, test_error_metrics)
                    to_append["training_time"] = stop_training_time - start_training_time
                    to_append["distance_metric"] = distance_metric
                    to_append["distance_type"] = distance_type
                    to_append['mt_strategy'] = mt_strategy
                    to_append["normalizer"] = normalizer_type

                
                    # ----- COMET and WANDB CONFIG ------------------------------------------------------------------
                    # DEFINING NAME OF RUN/EXPERIMENT AND PARAMETERS
                    params = {
                        'Model Type': "KNN",
                        'Dataset': 'B0_{}_MT{}'.format(normalizer_type, mt_strategy),
                        'K':k_number,
                        'Scaler':normalizer_type,
                        'Distance Function': distance_type,
                        'Distance': distance_metric
                    }

                    GROUP_NAME = "KNN_B0" # CHANGED
                    RUN_NAME = 'k{}_{}_{}_{}_{}'.format(
                        k_number, distance_type, distance_metric, normalizer_type, mt_strategy) 

                    # LOGGING CHLORINE PLOTLY PLOT
                    fig_to_log_cl = run_chlorine(df, neigh_model)
                    fig_to_log_u = run_uranium(df, neigh_model)
                    # LOGGING FIGURES TO COMET (DOES NOT ACCEPT PLOTLY)
                    pil_fig_cl = plot_utils.plotly_fig2pil(fig_to_log_cl)
                    pil_fig_u = plot_utils.plotly_fig2pil(fig_to_log_u)

                    model_saving_directory = os.path.join("ML_Models/", RUN_NAME + "/")
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
                    run = wandb.init(project=WANDB_PROJECT_NAME, name=RUN_NAME, reinit=True, 
                               group=GROUP_NAME, id=RUN_NAME)
                    os.environ['WANDB_NOTEBOOK_NAME'] = '3_KNN_B0'
                    wandb.config.update(params)
                    
                    # --------------------------------------- COMET -------------------------------------------------
                    # COMET ML WORKS BY INITIATING EXPERIMENT AND BY LOGGING A DICTIONARY
                    comet_experiment = Experiment(api_key="Jv0hkDdkBwkl7DB5mjjdphg9a", auto_param_logging=False,
                                    project_name=COMMET_PROJECT_NAME, workspace="pedrojrv", 
                                    log_git_metadata=False, log_git_patch=False)
                    comet_experiment.set_name(RUN_NAME)
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
                        name='B0_{}_MT{}'.format(normalizer_type, mt_strategy), version="1")

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

                    csv_path = os.path.join("", "knn_results.csv")
                    if os.path.exists(csv_path):
                        previous = pd.read_csv(csv_path)
                        new = previous.append(model_error_metrics)
                        new.to_csv(csv_path, index=False)
                    else:
                        model_error_metrics.to_csv(csv_path, index=False)
