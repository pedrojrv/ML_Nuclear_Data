import os
os.environ["CUDA_DEVICE_ORDER"]="PCI_BUS_ID"   # see issue #152
os.environ["CUDA_VISIBLE_DEVICES"]="0"
# # If you don't want your script to sync to the cloud
# os.environ['WANDB_IGNORE_GLOBS'] = "*.patch"

from comet_ml import Optimizer

import importlib
import pathlib
import shutil
import tempfile
from joblib import dump, load
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
import tensorflow as tf
import tensorflow_docs as tfdocs
import tensorflow_docs.plots
import tensorflow_docs.modeling
import sys
sys.path.append("..")

import nucml.datasets as nuc_data                     # pylint: disable=import-error
import nucml.exfor.data_utilities as exfor_utils      # pylint: disable=import-error
import nucml.plot.plotting_utilities as plot_utils    # pylint: disable=import-error

##################################################################################
############ SETTING UP HYPERPARAMS DEFAULTS AND INITIATING WANDB ################
##################################################################################

config = {
    "algorithm": "bayes",
    "name": "Optimize EXFOR B1 Network",
    "spec": {
        "maxCombo": 10,          # Limit of Paramter Combinatios to Try 
        "objective": "minimize", 
        "metric": "loss",
        "gridSize": 10,          # Number of bins per parameter when creating grid
        "minSampleSize": 100,    # Number of samples to help find appropiate grid ranges
        "retryLimit": 20,        # the limit to try creating a unique parameter set before giving up
        "retryAssignLimit": 0    # Limit to re-assign non-completed experiments 
        },
    "parameters": {
        "layer_1_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_2_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_3_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_4_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_5_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_6_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_7_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_8_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_9_size": {"type": "integer", "min": 70, "max": 1000},
        "layer_10_size": {"type": "integer", "min": 70, "max": 1000},

        "activation_fn": {"type": "categorical", "values": ["relu"]},
        "batch_size": {"type": "discrete", "values": [500]},
        "learning_rate": {"type": "float", "min": 0.0005, "max": 0.005, "scalingType": "loguniform"},
        "epochs" : {"type": "discrete", "values": [150]},
        "scaler_type": {"type": "categorical", "values": ["std"]},
        "dataset_type" : {"type": "discrete", "values": [1]},
        "lr_schedule_type": {"type": "categorical", "values":["ITD", "plateau", "normal"]},
        "lr_decay_epochs" : {"type": "discrete", "values": [0, 10, 20]},
        "lr_decay_rate" : {"type": "discrete", "values": [0.5]},
        "loss_metric": {"type": "categorical", "values":["mse"]},
        },
    "trials": 1, # The number of trials per experiment to run
}


#####################################################################
######################## LOADING DATA ###############################
#####################################################################
df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
    log=True, 
    basic=config["parameters"]["dataset_type"]["values"][0], 
    num=True, low_en=True, 
    scaling_type=config["parameters"]["scaler_type"]["values"][0],
    # scaler_dir="../ML_Data/Models/NN/scaler_ext_std.pkl"
    )

dump(scaler, open(os.path.join("", 'scaler.pkl'), 'wb'))

new_cl_data_kwargs = {"Z":17, "A":35, "MT":"MT_103", "log":True, "scale":False, "scaler":scaler, "to_scale":to_scale}
new_cl_data = exfor_utils.load_exfor_newdata("../EXFOR/New_Data/Chlorine_Data/new_cl_np.csv", df, **new_cl_data_kwargs)
new_cl_data.head()

##################################################################################
######################## DEFINING HELPER FUNCTIONS ###############################
##################################################################################
order = {
    "3":"endf", 
    "1":"exfor_ml_original", 
    "2":"exfor_ml", 
    "4":"exfor_new"}

def run_chlorine(model, df=df, scaler=scaler, to_scale=to_scale):
    cl_kwargs =  {"Z":17, "A":35, "MT":"MT_103", "clf_type":"tf", "scaler":scaler, "to_scale":to_scale, "html":False,
                  "e_array":"ace", "log":True, "show":False, "render":False, "save":False, "inv_trans":True}
    results_cl = exfor_utils.predicting_nuclear_xs_v2(df, clf=model, new_data=new_cl_data, get_endf=True, **cl_kwargs)
    fig = plot_utils.plotly_ml_results(results_cl, show=True)
    return fig

def run_uranium(model, df=df, scaler=scaler, to_scale=to_scale, order=order):
    u_kwargs =  {"Z":92, "A":233, "MT":"MT_18", "clf_type":"tf", "scaler":scaler, "to_scale":to_scale, "html":False,
                  "e_array":"ace", "log":True, "show":False, "render":False, "save":False, "inv_trans":True}
    results_u = exfor_utils.predicting_nuclear_xs_v2(df, clf=model, get_endf=True, **u_kwargs)
    fig = plot_utils.plotly_ml_results(results_u, order_dict=order, show=True)
    return fig

def get_callbacks(name, logs_dir_name="logs", lr_method="plateau", reset=False, patience_epochs=10, save_freq=7531*5):
    logdir = logs_dir_name
    chkpoint_dir = os.path.abspath(os.path.join(logs_dir_name, "checkpoints"))
    csv_logger_dir = os.path.join(logs_dir_name, "training_metrics.csv")

    if not os.path.exists(chkpoint_dir):
        os.makedirs(chkpoint_dir)

    chkpoint_dir = os.path.abspath(os.path.join(logs_dir_name, "checkpoints/best_model.hdf5"))

    if lr_method == "plateau":
        all_callbacks =  [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.CSVLogger(csv_logger_dir),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=patience_epochs, restore_best_weights=True), # val_loss
            tf.keras.callbacks.ModelCheckpoint(chkpoint_dir, monitor='loss', verbose=0,
                                               save_best_only=True, save_weights_only=False,
                                               save_frequency=save_freq),
            tf.keras.callbacks.ReduceLROnPlateau(
                monitor='loss', factor=0.8, patience=4, verbose=1, mode='auto',
                min_delta=0.0001, cooldown=2, min_lr=0.001),
            tf.keras.callbacks.TensorBoard(log_dir=logdir, histogram_freq=1, profile_batch=0)]
    elif lr_method == "normal":
        all_callbacks = [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.CSVLogger(csv_logger_dir),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=patience_epochs, restore_best_weights=True), # val_loss
            tf.keras.callbacks.ModelCheckpoint(chkpoint_dir, monitor='loss', verbose=0,
                                               save_best_only=True, save_weights_only=False,
                                               save_frequency=save_freq),
            tf.keras.callbacks.TensorBoard(log_dir=logdir, histogram_freq=1, profile_batch=0)]
    else:
        all_callbacks = [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.CSVLogger(csv_logger_dir),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=patience_epochs, restore_best_weights=True), # val_loss
            tf.keras.callbacks.ModelCheckpoint(chkpoint_dir, monitor='loss', verbose=0,
                                               save_best_only=True, save_weights_only=False,
                                               save_frequency=save_freq),
            tf.keras.callbacks.TensorBoard(log_dir=logdir, histogram_freq=1, profile_batch=0)]
    return all_callbacks


##################################################################################
############################# DEFINING MODEL #####################################
##################################################################################
COMMET_PROJECT_NAME = "ml-nuclear-sweeps"
GROUP_NAME = "EXFOR_Basic_1" # CHANGED
NUM_FEATURES = x_train.shape[1]
STEPS_PER_EPOCH = len(x_train) // config["parameters"]["batch_size"]["values"][0]

opt = Optimizer(config, api_key="fJ314gp1hdwdnn3632Z3VCZ2B", project_name=COMMET_PROJECT_NAME)

for experiment in opt.get_experiments():
    LOGGING_DIR = "run_lr_{}_layers_{}_{}_{}_{}_{}_{}_{}_{}_{}_{}".format(
        str(experiment.get_parameter("learning_rate")).replace("0.", ""),
        experiment.get_parameter("layer_1_size"),
        experiment.get_parameter("layer_2_size"),
        experiment.get_parameter("layer_3_size"),
        experiment.get_parameter("layer_4_size"),
        experiment.get_parameter("layer_5_size"),
        experiment.get_parameter("layer_6_size"),
        experiment.get_parameter("layer_7_size"),
        experiment.get_parameter("layer_8_size"),
        experiment.get_parameter("layer_9_size"),
        experiment.get_parameter("layer_10_size")
    )
    RUN_NAME = LOGGING_DIR
    if not os.path.exists(LOGGING_DIR):
        os.makedirs(LOGGING_DIR)

    model = tf.keras.models.Sequential([
        tf.keras.layers.Dense(experiment.get_parameter("layer_1_size"), activation=experiment.get_parameter("activation_fn")),
        tf.keras.layers.Dense(experiment.get_parameter("layer_2_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_3_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_4_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_5_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_6_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_7_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_8_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_9_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(experiment.get_parameter("layer_10_size"), activation=experiment.get_parameter("activation_fn")), 
        tf.keras.layers.Dense(1)])

    model.build((None, NUM_FEATURES))
    if experiment.get_parameter("lr_schedule_type") == "plateau" or experiment.get_parameter("lr_schedule_type") == "normal":
        model.compile(optimizer=tf.keras.optimizers.Adam(experiment.get_parameter("learning_rate")), 
        loss=experiment.get_parameter("loss_metric"), 
        metrics=['mae', experiment.get_parameter("loss_metric")])        
    else:
        model.compile(
            optimizer=tf.keras.optimizers.Adam(tf.keras.optimizers.schedules.InverseTimeDecay(
                experiment.get_parameter("learning_rate"), 
                decay_steps=STEPS_PER_EPOCH*experiment.get_parameter("lr_decay_epochs"), 
                decay_rate=experiment.get_parameter("lr_decay_rate"))), 
            loss=experiment.get_parameter("loss_metric"), 
            metrics=['mae', experiment.get_parameter("loss_metric")])


    train_dataset = tf.data.Dataset.from_tensor_slices((x_train.values, y_train.values))
    test_dataset = tf.data.Dataset.from_tensor_slices((x_test.values, y_test.values))
    train_dataset = train_dataset.shuffle(len(x_train)).batch(experiment.get_parameter("batch_size")).prefetch(1)
    test_dataset = test_dataset.batch(experiment.get_parameter("batch_size"))


    history = model.fit(train_dataset,
        steps_per_epoch = STEPS_PER_EPOCH,
        epochs = experiment.get_parameter("epochs"),
        validation_data=test_dataset,
        callbacks=get_callbacks("", logs_dir_name=LOGGING_DIR, lr_method=experiment.get_parameter("lr_schedule_type")),
        verbose=0)

    # history = model.fit(x_train.values, y_train.values,
    #     batch_size = experiment.get_parameter("batch_size"),
    #     steps_per_epoch = STEPS_PER_EPOCH,
    #     epochs = experiment.get_parameter("epochs"),
    #     validation_data=(x_test.values, y_test.values),
    #     callbacks=get_callbacks("", logs_dir_name=LOGGING_DIR, lr_method=experiment.get_parameter("lr_schedule_type")),
    #     verbose=0)   
    
    experiment.log_metric("loss", history.history['loss'][-1])

    experiment.log_model(RUN_NAME, os.path.join(LOGGING_DIR, "checkpoints/best_model.hdf5")) 
    experiment.log_asset_folder(LOGGING_DIR) 
    experiment.log_table(os.path.join(LOGGING_DIR, "training_metrics.csv")) 
    experiment.log_dataset_info(name="EXFOR_Basic", version="1")
    
    fig_to_log_cl = run_chlorine(history.model)
    fig_to_log_u = run_uranium(history.model)
    pil_fig_cl = plot_utils.plotly_fig2pil(fig_to_log_cl)
    pil_fig_u = plot_utils.plotly_fig2pil(fig_to_log_u)
    experiment.log_image(pil_fig_cl, name="Chlorine_35_NP") 
    experiment.log_image(pil_fig_u, name="Uranium_233_NF")

