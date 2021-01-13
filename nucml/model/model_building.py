import itertools
import os
import shutil
import time

import matplotlib.pyplot as plt
import nucml.model.model_utilities as model_utils  # pylint: disable=import-error
import numpy as np
import pandas as pd
import seaborn as sns
import tensorflow as tf
import tensorflow_docs as tfdocs
import tensorflow_docs.modeling
import tensorflow_docs.plots
import wandb
import xgboost as xgb
from joblib import dump, load
from sklearn import tree
from sklearn.neighbors import KNeighborsRegressor
from tensorflow import keras
from tensorflow.keras import layers, regularizers
from wandb.keras import WandbCallback


def train_knn(x_train, y_train, x_test, y_test, k_list, save_models=False, save_dir="./"):
    """Trains multiple KNN models given a list of k-values. Useful for quick experimentation.
    For a more efficient and advanced KNN training method, see the knn.py script.

    Args:
        x_train (DataFrame or np.array): training data.
        y_train (DataFrame or np.array): training labels.
        x_test (DataFrame or np.array): testing data.
        y_test (DataFrame or np.array): testing labels.
        k_list (list): list of k-values to iterate through.
        save_models (bool, optional): If True, the trained models will be saved. Defaults to False.
        save_dir (str, optional): path-like string where the trained models will be saved. Defaults to "./".

    Returns:
        DataFrame: contains the performance metrics for all trained models.
    """    
    # Creating DataFrame to store performance regression metrics
    model_error_metrics = pd.DataFrame(columns=[
            "id", "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
            "test_mae", "test_mse", "test_evs",  "test_mae_m", "test_r2",
            "model_path", "training_time", "scaler_path", "run_name"])

    for i in k_list:
        start_training_time = time.time()
        print("Training kNN with k = {}".format(i))
        neigh_model = KNeighborsRegressor(n_neighbors=i, weights='distance', algorithm='auto', leaf_size=30, p=2, 
                                metric='minkowski', metric_params=None, n_jobs=-1) # MODIFY
        neigh_model.fit(x_train, y_train)

        # neigh_model = load(os.path.join(save_dir, "neigh_model_k{}.joblib".format(str(int(i)))))

        stop_training_time = time.time()

        print("    CalculatSing error metrics...")
        y_hat_train = neigh_model.predict(x_train)
        train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
        
        y_hat_test = neigh_model.predict(x_test)
        test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)
        
        to_append = model_utils.create_train_test_error_df(i, train_error_metrics, test_error_metrics)
        to_append["training_time"] = stop_training_time - start_training_time

        if save_models:
            print("    Saving Model...")
            saving_dir = os.path.join(save_dir, "neigh_model_k{}.joblib".format(str(int(i))))
            dump(neigh_model, saving_dir) 
            to_append["model_path"] = os.path.abspath(saving_dir)

        model_error_metrics = model_error_metrics.append(to_append)

        del neigh_model
    
    print("Done")
    csv_path = os.path.join(save_dir, "knn_results.csv")
    if os.path.exists(csv_path):
        previous = pd.read_csv(csv_path)
        new = previous.append(model_error_metrics)
        new.to_csv(csv_path, index=False)
    else:
        model_error_metrics.to_csv(csv_path, index=False)
    return model_error_metrics


def train_dt(x_train, y_train, x_test, y_test, parameters_dict, save_models=False, save_dir="./"):
    """Trains multiple DT models according to the parameters given in the parameters_dict argument.
    Useful for quick experimentation. For a more efficient and advanced DT training method, s
    ee the dt.py script.

    Args:
        x_train (DataFrame or np.array): training data.
        y_train (DataFrame or np.array): training labels.
        x_test (DataFrame or np.array): testing data.
        y_test (DataFrame or np.array): testing labels.
        parameters_dict (dict): dictionary of key,list dictionary pairs. The needed keys are: 
            max_depth_list, min_split_list, and min_leaf_split. The values are lists of 
            parameters to test. 
        save_models (bool, optional): If True, the trained models will be saved. Defaults to False.
        save_dir (str, optional): path-like string where the trained models will be saved. Defaults to "./".

    Returns:
        DataFrame: contains the performance metrics for all trained models.
    """   
    # Creating DataFrame to store performance regression metrics
    model_error_metrics = pd.DataFrame(columns=[
                    "id", "max_depth", "mss", "msl", 
                    "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2",
                    "test_mae", "test_mse", "test_evs",  "test_mae_m", "test_r2",
                    "model_path", "training_time", "scaler_path"])

    a = [list(parameters_dict["max_depth_list"]), list(parameters_dict["min_split_list"]), list(parameters_dict["min_leaf_list"])]
    total_num_iterations = len(list(itertools.product(*a)))

    # if tuning:
    loop_number = 0 # ORIGINAL INDENT
    for i in parameters_dict["max_depth_list"]:
        for mss in parameters_dict["min_split_list"]:
            for msl in parameters_dict["min_leaf_list"]:
                if mss <= msl:
                    print("Iteration {}/{}".format(loop_number, total_num_iterations))
                    print("MSS smaller than MSL. Skipping Iteration")
                    loop_number = loop_number + 1
                else:
                    print("Iteration {}/{}".format(loop_number, total_num_iterations))
                    start_training_time = time.time()
                    print("Training Decision Tree Regressor")
                    print("Max Depth = {}; Min Samples Split = {}; Min Samples Leaf = {}".format(i, mss, msl))
                    dt_model = tree.DecisionTreeRegressor(max_depth=i, min_samples_split=mss, min_samples_leaf=msl)
                    dt_model.fit(x_train, y_train)
                    stop_training_time = time.time()

                    print("    Calculating error metrics...")
                    y_hat_train = dt_model.predict(x_train)
                    train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
                    
                    y_hat_test = dt_model.predict(x_test)
                    test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)
                    
                    to_append = model_utils.create_train_test_error_df(loop_number, train_error_metrics, test_error_metrics)
                    to_append["max_depth"] = dt_model.get_depth()
                    to_append["mss"] = mss
                    to_append["msl"] = msl
                    to_append["training_time"] = stop_training_time - start_training_time

                    if save_models:
                        print("    Saving Model...")
                        saving_dir = os.path.join(save_dir, "dt_model_md{}_mss{}_msl{}.joblib".format(i, mss, msl))
                        dump(dt_model, saving_dir) 
                        to_append["model_path"] = os.path.abspath(saving_dir)

                    model_error_metrics = model_error_metrics.append(to_append)
                    loop_number = loop_number + 1

                    del dt_model
    print("Done")
    csv_path = os.path.join(save_dir, "dt_results.csv")
    if os.path.exists(csv_path):
        previous = pd.read_csv(csv_path)
        new = previous.append(model_error_metrics)
        new.to_csv(csv_path, index=False)
    else:
        model_error_metrics.to_csv(csv_path, index=False)
    return model_error_metrics


def train_xgb(x_train, y_train, x_test, y_test, parameters_dict, save_models=False, save_dir="./"):
    # Creating DataFrame to store performance regression metrics
    if save_models:
        model_error_metrics = pd.DataFrame(columns=["id", "max_depth", "num_estimator", "lr", 
            "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2", "test_mae", "test_mse", 
            "test_evs", "test_mae_m", "test_r2", "model_path", "training_time"])
    else:
        model_error_metrics = pd.DataFrame(columns=["id", "max_depth", "num_estimator", "lr", 
            "train_mae", "train_mse", "train_evs", "train_mae_m", "train_r2", "test_mae", "test_mse", 
            "test_evs", "test_mae_m", "test_r2", "training_time"])

    a = [list(parameters_dict["max_depth_list"]), list(parameters_dict["num_estimator_list"]), list(parameters_dict["learning_rate_list"])]
    total_num_iterations = len(list(itertools.product(*a)))

    all_dict = {}
    dtrain = xgb.DMatrix(x_train.values, y_train.values)

    evallist = [(dtrain, 'train')]

    loop_number = 1
    for i in parameters_dict["max_depth_list"]:
        for num_estimator in parameters_dict["num_estimator_list"]:
            for lr in parameters_dict["learning_rate_list"]:
                print("Iteration {}/{}".format(loop_number, total_num_iterations))
                start_training_time = time.time()
                print("Training Gradient Boosting Trees")
                print("Max Depth = {}; Number of Estimators = {}; Learning Rate = {}".format(i, num_estimator, lr))

                # specify parameters via map
                param = {"booster":"gbtree", "verbosity":0, 'eta':lr, "gamma":0, 'max_depth':i, "lambda":1, 
                         "tree_method":"hist", 'objective':'reg:squarederror'}
                progress = dict()
                xgb_model = xgb.train(param, dtrain, num_estimator, evallist, evals_result=progress, 
                    verbose_eval=False, early_stopping_rounds=10)

                stop_training_time = time.time()

                print("    Calculating error metrics...")
                y_hat_train = xgb_model.predict(xgb.DMatrix(x_train.values))
                train_error_metrics = model_utils.regression_error_metrics(y_hat_train, y_train)
                
                y_hat_test = xgb_model.predict(xgb.DMatrix(x_test.values))
                test_error_metrics = model_utils.regression_error_metrics(y_hat_test, y_test)
                
                to_append = model_utils.create_train_test_error_df(loop_number, train_error_metrics, test_error_metrics)
                to_append["max_depth"] = i
                to_append["num_estimator"] = num_estimator
                to_append["lr"] = lr
                to_append["training_time"] = stop_training_time - start_training_time

                model_name =  "xgb_md{}_ne{}_lr{}.joblib".format(i, num_estimator, lr)
                if save_models:
                    print("    Saving Model...")
                    saving_dir = os.path.join(save_dir, model_name)
                    dump(xgb_model, saving_dir) 
                    to_append["model_path"] = os.path.abspath(saving_dir)


                all_dict.update({model_name:pd.DataFrame(progress["train"])})
                model_error_metrics = model_error_metrics.append(to_append)
                loop_number = loop_number + 1
                xgb_model.__del__()
                del xgb_model

    print("Done")
    csv_path = os.path.join(save_dir, "xgb_results.csv")
    if os.path.exists(csv_path):
        previous = pd.read_csv(csv_path)
        new = previous.append(model_error_metrics)
        new.to_csv(csv_path, index=False)
    else:
        model_error_metrics.to_csv(csv_path, index=False)

    return model_error_metrics, all_dict


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


def compile_and_fit(model, name, x_train, y_train, x_test, y_test, BATCH_SIZE=120, 
                    max_epochs=5, DECAY_EPOCHS=10, lr_method="plateau", initial_epoch=0,
                    logs_dir_name="logs", append_wandb=False, verbose=0, comet=False, comet_exp=None):
    STEPS_PER_EPOCH = len(x_train) // BATCH_SIZE
    
    if lr_method == "plateau" or lr_method == "normal":
        model.compile(optimizer=tf.keras.optimizers.Adam(0.005), loss='mse', metrics=['mae', 'mse'])        
    else:
        model.compile(
            optimizer=tf.keras.optimizers.Adam(tf.keras.optimizers.schedules.InverseTimeDecay(
                0.005, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS, decay_rate=0.5)), 
            loss='mse', 
            metrics=['mae', 'mse'])
    if comet:
        with comet_exp.train():
            history = model.fit(
                x_train, y_train,
                batch_size=BATCH_SIZE,
                steps_per_epoch = STEPS_PER_EPOCH,
                epochs=max_epochs,
                validation_data=(x_test, y_test),
                callbacks=get_callbacks(name, logs_dir_name=logs_dir_name, lr_method=lr_method, append_wandb=append_wandb),
                verbose=verbose, 
                initial_epoch=initial_epoch)   
        return history
    else:
        history = model.fit(
            x_train, y_train,
            batch_size=BATCH_SIZE,
            steps_per_epoch = STEPS_PER_EPOCH,
            epochs=max_epochs,
            validation_data=(x_test, y_test),
            callbacks=get_callbacks(name, logs_dir_name=logs_dir_name, lr_method=lr_method, append_wandb=append_wandb),
            verbose=verbose, 
            initial_epoch=initial_epoch)   
        return history


def compile_and_fit_lw(model, name, x_train, y_train, x_test, y_test, BATCH_SIZE=120, 
                    max_epochs=5, DECAY_EPOCHS=10, lr_method="plateau", initial_epoch=0):
    STEPS_PER_EPOCH = len(x_train) // BATCH_SIZE
    
    if lr_method == "plateau" or lr_method == "normal":
        model.compile(optimizer=tf.keras.optimizers.Adam(0.001), loss='mse', metrics=['mae', 'mse'])        
    else:
        model.compile(
            optimizer=tf.keras.optimizers.Adam(tf.keras.optimizers.schedules.InverseTimeDecay(
                0.001, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS, decay_rate=1)), 
            loss='mse', 
            metrics=['mae', 'mse'])
    # model.summary()
    
    model.load_weights(os.path.join("./model_checkpoints/"))
    history = model.fit(
        x_train, y_train,
        batch_size=BATCH_SIZE,
        steps_per_epoch = STEPS_PER_EPOCH,
        epochs=max_epochs,
        validation_data=(x_test, y_test),
        callbacks=get_callbacks(name, lr_method=lr_method),
        verbose=1, 
        initial_epoch=initial_epoch)   
    return history

















# def tf_dataset_gen(x, y, xt, yt, BUFFER_SIZE, BATCH_SIZE, N_TRAIN, gpu=False, multiplier=2, cache=False):
#     if gpu == True:
#         BATCH_SIZE = BATCH_SIZE * multiplier
#         print("GPU: ON")
#     train_dataset = tf.data.Dataset.from_tensor_slices((x.values, y.values)).shuffle(BUFFER_SIZE).repeat().batch(BATCH_SIZE)
#     test_dataset = tf.data.Dataset.from_tensor_slices((xt.values, yt.values)).batch(BATCH_SIZE)
#     if cache == True: # Ensures loader doesnt re-read data at each epoch.
#         train_dataset = train_dataset.cache()
#         test_dataset = test_dataset.cache()
#     STEPS_PER_EPOCH = N_TRAIN//BATCH_SIZE
#     print("BATCH SIZE: ", BATCH_SIZE)
#     print("STEPS PER EPOCH: ", STEPS_PER_EPOCH)
#     return train_dataset, test_dataset, STEPS_PER_EPOCH, BATCH_SIZE


# def get_optimizer(lr_schedule):
#     return tf.keras.optimizers.Adam(lr_schedule)


# def compile_and_fit(model, name, train_dataset, test_dataset, STEPS_PER_EPOCH, BATCH_SIZE=None, 
#                     optimizer=None, max_epochs=10000, DECAY_EPOCHS=1000):
#     lr_schedule = tf.keras.optimizers.schedules.InverseTimeDecay(
#         0.001, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS,
#         decay_rate=1, staircase=False)
    
#     if optimizer is None:
#         optimizer = get_optimizer(lr_schedule)
#     model.compile(optimizer=optimizer,
#                   loss='mse',
#                   metrics=['mae', 'mse'])
#     model.summary()
#     history = model.fit(
#         train_dataset,
#         steps_per_epoch = STEPS_PER_EPOCH,
#         epochs=max_epochs,
#         validation_data=test_dataset,
#         callbacks=get_callbacks(name),
#         verbose=0)        
#     return history


# def train_ensdf_network(strategy):
# 	with strategy.scope():
# 	    tiny_model = tf.keras.Sequential([
# 	        layers.Dense(16, activation='elu', input_shape=(FEATURES,)),
# 	        layers.Dense(1)])
# 	    history = compile_and_fit(tiny_model, 'sizes/Tiny_CPU', train_dataset, 
# 	                                                 test_dataset, STEPS_PER_EPOCH_CPU, max_epochs=5000)
# 	    return history



# N_VALIDATION = len(x_test)
# N_TRAIN = len(x_train)
# FEATURES = len(x_train.columns)
# BUFFER_SIZE = N_TRAIN
# BATCH_SIZE_PER_REPLICA = 64
# BATCH_SIZE = BATCH_SIZE_PER_REPLICA * strategy.num_replicas_in_sync


# train_dataset, test_dataset, STEPS_PER_EPOCH_CPU, BATCH_SIZE_CPU = tf_dataset_gen(
#     x_train, y_train, x_test, y_test, BUFFER_SIZE, BATCH_SIZE)



# # def compile_and_fit(model, name, train_dataset, test_dataset, STEPS_PER_EPOCH, BATCH_SIZE=None, 
# #                     optimizer=None, max_epochs=10000, DECAY_EPOCHS=1000):
# def compile_and_fit(model, name, x_train, y_train, x_test, y_test, STEPS_PER_EPOCH, BATCH_SIZE=None, 
#                     optimizer=None, max_epochs=10000, DECAY_EPOCHS=1000):
#     lr_schedule = tf.keras.optimizers.schedules.InverseTimeDecay(
#         0.001, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS,
#         decay_rate=1, staircase=False)
    
#     if optimizer is None:
#         optimizer = get_optimizer(lr_schedule)
#     model.compile(optimizer=optimizer,
#                   loss='mse',
#                   metrics=['mae', 'mse'])
#     model.summary()
# #     history = model.fit(
# #         train_dataset,
# #         steps_per_epoch = STEPS_PER_EPOCH,
# #         epochs=max_epochs,
# #         validation_data=test_dataset,
# #         callbacks=get_callbacks(name),
# #         verbose=1)   
#     history = model.fit(
#         x_train, y_train,
#         batch_size=BATCH_SIZE,
#         steps_per_epoch = STEPS_PER_EPOCH,
#         epochs=max_epochs,
#         validation_data=(x_test, y_test),
#         callbacks=get_callbacks(name),
#         verbose=1)   
#     return history
