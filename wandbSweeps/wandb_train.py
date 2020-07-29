import os
# os.environ["CUDA_DEVICE_ORDER"]="PCI_BUS_ID"   # see issue #152
# os.environ["CUDA_VISIBLE_DEVICES"]="1"
# # If you don't want your script to sync to the cloud
# os.environ['WANDB_IGNORE_GLOBS'] = "*.patch"

import wandb
from wandb.keras import WandbCallback

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

# Set up your default hyperparameters before wandb.init so they get properly set in the sweep
hyperparameter_defaults = dict(
    layer_1_size = 100,
    layer_2_size = 100,
    layer_3_size = 100,
    layer_4_size = 100,
    layer_5_size = 100,
    layer_6_size = 100,
    layer_7_size = 100,
    layer_8_size = 100,
    layer_9_size = 100,
    layer_10_size = 100,
    activation_fn = "relu",
    batch_size = 500,
    learning_rate = 0.005,
    epochs = 150,
    scaler_type = "std",
    dataset_type = 1,
    lr_schedule_type = "ITD",
    lr_decay_epochs = 10,
    lr_decay_rate = 0.5,
    loss_metric = "mse"
    )

# Pass your defaults to wandb.init
# wandb.init(project="ml-nuclear-sweeps", config=hyperparameter_defaults, sync_tensorboard=True) 
wandb.init(config=hyperparameter_defaults) 
config = wandb.config

#####################################################################
######################## LOADING DATA ###############################
#####################################################################
df, x_train, x_test, y_train, y_test, to_scale, scaler = nuc_data.load_exfor(
    log=True, 
    basic=1, 
    num=True, low_en=True, 
    scaler_dir="scaler.pkl")

# dump(scaler, open(os.path.join(wandb.run.dir, 'scaler.pkl'), 'wb'))

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

def get_callbacks(name, logs_dir_name="logs", lr_method="plateau", reset=False, patience_epochs=10, save_freq=7531*5, append_wandb=False):
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
    if append_wandb:
        all_callbacks.append(WandbCallback())
    return all_callbacks


##################################################################################
############################# DEFINING MODEL #####################################
##################################################################################

NUM_FEATURES = x_train.shape[1]
STEPS_PER_EPOCH = len(x_train) // config.batch_size

model = tf.keras.models.Sequential([
    tf.keras.layers.Dense(config.layer_1_size, activation=config.activation_fn),
    tf.keras.layers.Dense(config.layer_2_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_3_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_4_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_5_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_6_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_7_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_8_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_9_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(config.layer_10_size, activation=config.activation_fn), 
    tf.keras.layers.Dense(1)])

# NUM_FEATURES = x_train.shape[1]
# STEPS_PER_EPOCH = len(x_train) // 500

# model = tf.keras.models.Sequential([
#     tf.keras.layers.Dense(100, activation="relu"),
#     tf.keras.layers.Dense(100, activation="relu"), 
#     tf.keras.layers.Dense(100, activation="relu"), 
#     tf.keras.layers.Dense(100, activation="relu"), 
#     tf.keras.layers.Dense(100, activation="relu"), 
#     tf.keras.layers.Dense(1)])


model.build((None, NUM_FEATURES))

# model.compile(
#     optimizer=tf.keras.optimizers.Adam(tf.keras.optimizers.schedules.InverseTimeDecay(
#         0.001, decay_steps=STEPS_PER_EPOCH*10, decay_rate=0.5)), 
#     loss="mse", 
#     metrics=['mae', 'mse'])


train_dataset = tf.data.Dataset.from_tensor_slices((x_train.values, y_train.values))
test_dataset = tf.data.Dataset.from_tensor_slices((x_test.values, y_test.values))
train_dataset = train_dataset.shuffle(len(x_train)).batch(config.batch_size).prefetch(1)
test_dataset = test_dataset.batch(config.batch_size)

# history = model.fit(train_dataset,
#     validation_data = test_dataset,
#     steps_per_epoch = STEPS_PER_EPOCH,
#     epochs = 5, verbose=1)

if config.lr_schedule_type == "plateau" or config.lr_schedule_type == "normal":
    model.compile(optimizer=tf.keras.optimizers.Adam(config.learning_rate), loss=config.loss_metric, metrics=['mae', 'mse'])        
else:
    model.compile(
        optimizer=tf.keras.optimizers.Adam(tf.keras.optimizers.schedules.InverseTimeDecay(
            config.learning_rate, decay_steps=STEPS_PER_EPOCH*config.lr_decay_epochs, decay_rate=config.lr_decay_rate)), 
        loss=config.loss_metric, 
        metrics=['mae', 'mse'])

# history = model.fit(x_train.values, y_train.values,
#     batch_size = config.batch_size,
#     steps_per_epoch = STEPS_PER_EPOCH,
#     epochs = config.epochs,
#     validation_data=(x_test.values, y_test.values),
#     callbacks=get_callbacks("", logs_dir_name=wandb.run.dir, lr_method=config.lr_schedule_type, append_wandb=True),
#     verbose=0)   


history = model.fit(train_dataset,
    steps_per_epoch = STEPS_PER_EPOCH,
    epochs = config.epochs,
    validation_data=test_dataset,
    callbacks=get_callbacks("", logs_dir_name=wandb.run.dir, lr_method=config.lr_schedule_type, append_wandb=True),
    verbose=0)   


fig_to_log_cl = run_chlorine(history.model)
fig_to_log_u = run_uranium(history.model)
wandb.log({'Chlorine_35_NP': fig_to_log_cl})
wandb.log({'Uranium_233_NF': fig_to_log_u})

# Log metrics inside your training loop
wandb.log({'loss': history.history['loss'][-1]})
