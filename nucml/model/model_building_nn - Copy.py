import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers, regularizers
import tensorflow_docs as tfdocs
import tensorflow_docs.plots
import tensorflow_docs.modeling

import shutil
import os


def get_callbacks(name, lr_method="plateau", reset=False):
    logdir = os.path.join("logs", name)
    # logdir = "logs\\" + name + "\\"
    chkpoint_dir = './model_checkpoints/' + name
    if not os.path.exists(chkpoint_dir):
        os.makedirs(chkpoint_dir)
    if not os.path.exists(logdir):
        os.makedirs(logdir)
    if reset:
        filelist = [f for f in os.listdir(chkpoint_dir)]
        for f in filelist:
            os.remove(os.path.join(chkpoint_dir, f))
        if os.path.exists(logdir):
            for filename in os.listdir(logdir):
                shutil.rmtree(os.path.join(logdir, filename))

    filepath = chkpoint_dir + "/model-{epoch:02d}-{loss:.2f}.hdf5"

    if lr_method == "plateau":
        return [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=21), # val_loss
            tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=0,
                                               save_best_only=False, save_weights_only=False,
                                               save_frequency=5),
            tf.keras.callbacks.TensorBoard(log_dir="logs/" + name, histogram_freq=1, profile_batch=0),
            tf.keras.callbacks.ReduceLROnPlateau(
                monitor='loss', factor=0.8, patience=4, verbose=1, mode='auto',
                min_delta=0.0001, cooldown=0, min_lr=0)]
    elif lr_method == "normal":
        return [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=21), # val_loss
            tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=0,
                                               save_best_only=False, save_weights_only=False,
                                               save_frequency=5),
            tf.keras.callbacks.TensorBoard(log_dir="logs/" + name, histogram_freq=1, profile_batch=0)]
    else:
        return [
            tfdocs.modeling.EpochDots(),
            tf.keras.callbacks.EarlyStopping(monitor='loss', patience=21), # val_loss
            tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=0,
                                               save_best_only=False, save_weights_only=False,
                                               save_frequency=5),
            tf.keras.callbacks.TensorBoard(log_dir="logs/" + name, histogram_freq=1, profile_batch=0)]



def compile_and_fit(model, name, x_train, y_train, x_test, y_test, BATCH_SIZE=120, 
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


def resume_training(model, name, x_train, y_train, x_test, y_test, BATCH_SIZE=120, 
                    max_epochs=5, DECAY_EPOCHS=10, lr_method="ITD", initial_epoch=0):
    STEPS_PER_EPOCH = len(x_train) // BATCH_SIZE
    
    history = model.fit(
        x_train, y_train,
        batch_size=BATCH_SIZE,
        steps_per_epoch = STEPS_PER_EPOCH,
        epochs=max_epochs,
        validation_data=(x_test, y_test),
        callbacks=get_callbacks(name, lr_method=lr_method),
        verbose=0, 
        initial_epoch=initial_epoch)   
    return history


def build_model(layers, units):
    model = tf.keras.Sequential()    # INITIALIZE MODEL
    for num_layers in np.linspace(1, layers, layers, dtype=int):
        model.add(tf.keras.layers.Dense(units, activation='relu'))
    model.add(tf.keras.layers.Dense(1))
    return model



# model = tf.keras.models.Sequential([
#     tf.keras.layers.Dense(128, activation='relu'), 
#     tf.keras.layers.Dense(128, activation='relu'),
#     tf.keras.layers.Dense(128, activation='relu'), 
#     tf.keras.layers.Dense(128, activation='relu'),
#     tf.keras.layers.Dense(64, activation='relu'),
#     tf.keras.layers.Dense(64, activation='relu'),
#     tf.keras.layers.Dense(32, activation='relu'), 
#     tf.keras.layers.Dense(32, activation='relu'), 
#     tf.keras.layers.Dense(16, activation='relu'), 
#     tf.keras.layers.Dense(8, activation='relu'), 
#     tf.keras.layers.Dense(1)])


























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

# def get_callbacks(name):
#     return [
#         tfdocs.modeling.EpochDots(),
#         tf.keras.callbacks.EarlyStopping(monitor='val_loss', patience=200), # val_loss
#         tf.keras.callbacks.TensorBoard(logdir/name)]

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

# def tf_dataset_gen(x, y, xt, yt, BUFFER_SIZE, BATCH_SIZE, gpu=False, multiplier=0, cache=False):
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

# train_dataset, test_dataset, STEPS_PER_EPOCH_CPU, BATCH_SIZE_CPU = tf_dataset_gen(
#     x_train, y_train, x_test, y_test, BUFFER_SIZE, BATCH_SIZE)

# %%time
# with cpu_strategy.scope():
#     tiny_model = tf.keras.Sequential([
#         layers.Dense(16, activation='elu', input_shape=(FEATURES,)),
#         layers.Dense(1)])
#     size_histories['Tiny_CPU'] = compile_and_fit(tiny_model, 'sizes/Tiny_CPU', train_dataset, 
#                                                  test_dataset, STEPS_PER_EPOCH_CPU, max_epochs=5000)

# with strategy.scope():
#     tiny_model = tf.keras.Sequential([layers.Dense(16, activation='elu', input_shape=(FEATURES,)), 
#                                       layers.Dense(1)])
#     size_histories['Tiny_mGPU'] = compile_and_fit(tiny_model, 'sizes/mTiny_GPU', 
#                                                  train_dataset_gpu, test_dataset_gpu, 
#                                                       STEPS_PER_EPOCH_GPU, max_epochs=10, DECAY_EPOCHS=50)

# with single_gpu_strategy.scope():
#     tiny_model = tf.keras.Sequential([layers.Dense(16, activation='elu', input_shape=(FEATURES,)), 
#                                       layers.Dense(1)])
#     size_histories['Tiny_sGPU'] = compile_and_fit(tiny_model, 'sizes/Tiny_sGPU', 
#                                                  train_dataset_gpu, test_dataset_gpu, 
#                                                       STEPS_PER_EPOCH_GPU, max_epochs=10, DECAY_EPOCHS=50)

# def get_optimizer(lr_schedule):
#     return tf.keras.optimizers.Adam(lr_schedule)

# def get_callbacks(name):
#     return [
#         tfdocs.modeling.EpochDots(),
#         tf.keras.callbacks.EarlyStopping(monitor='loss', patience=5), # val_loss
#         tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=1,
#                                            save_best_only=False, save_weights_only=False,
#                                            save_frequency=5),
#         tf.keras.callbacks.TensorBoard(logdir/name)]

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


# outputFolder = './output'
# if not os.path.exists(outputFolder):
#     os.makedirs(outputFolder)
# filepath = outputFolder + "/model-{epoch:02d}-{loss:.2f}.hdf5"

# def get_callbacks():
#     return [
#         tfdocs.modeling.EpochDots(),
#         tf.keras.callbacks.EarlyStopping(monitor='loss', patience=12), # val_loss
#         tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=1,
#                                            save_best_only=False, save_weights_only=False,
#                                            save_frequency= 5),
#         tf.keras.callbacks.TensorBoard(histogram_freq=1)]

# def get_callbacks(steps_per_epoch):
#     return [
#         tfdocs.modeling.EpochDots(),
#         tf.keras.callbacks.EarlyStopping(monitor='loss', patience=12), # val_loss
#         tf.keras.callbacks.ModelCheckpoint(filepath, monitor='loss', verbose=1,
#                                            save_best_only=False, save_weights_only=False,
#                                            save_frequency= 5 * steps_per_epoch),
#         tf.keras.callbacks.TensorBoard(histogram_freq=1),
#         tf.keras.callbacks.ReduceLROnPlateau(
#             monitor='loss', factor=0.8, patience=4, verbose=1, mode='auto',
#             min_delta=0.0001, cooldown=0, min_lr=0)]

# lr_schedule = tf.keras.optimizers.schedules.InverseTimeDecay(
#     0.001, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS,
#     decay_rate=1, staircase=False)

# optimizer_w_decay = tf.keras.optimizers.Adam(lr_schedule)

# model.compile(optimizer = optimizer_w_decay,
#           loss = 'mse',
#           metrics = ['mse', 'mae'])

# history = model.fit(
#     x_train.values, y_train.values, 
#     validation_data = (x_test.values, y_test.values),
#     batch_size=BATCH_SIZE,
#     steps_per_epoch = STEPS_PER_EPOCH,
#     epochs=50,
#     callbacks=get_callbacks(),
#     verbose=1)

# model.compile(optimizer = tf.keras.optimizers.Adam(learning_rate=0.001),
#           loss = 'mse',
#           metrics = ['mse', 'mae'])

# history = model.fit(
#     x_train.values, y_train.values, 
#     validation_data = (x_test.values, y_test.values),
#     batch_size=BATCH_SIZE,
#     steps_per_epoch = STEPS_PER_EPOCH,
#     epochs=50,
#     callbacks=get_callbacks(STEPS_PER_EPOCH),
#     verbose=1)  

# model.compile(optimizer = optimizer_w_decay,
#           loss = 'mse',
#           metrics = ['mse', 'mae'])

# history2 = model.fit(
#     x_train.values, y_train.values, 
#     validation_data = (x_test.values, y_test.values),
#     batch_size=BATCH_SIZE,
#     steps_per_epoch = STEPS_PER_EPOCH,
#     epochs=30,
#     callbacks=get_callbacks(),
#     verbose=1)  

# plt.plot(history.epoch, history2.history["loss"])

# history = model.fit(x_train.values, y_train.values,
#                        epochs=20, callbacks=[checkpoint_callback],
#                        validation_data=(x_test.values, y_test.values),
#                        validation_freq=1,
#                        initial_epoch = 9,
#                        batch_size=120, 
#                        steps_per_epoch=STEPS_PER_EPOCH)

# history = model.fit(x_train.values, y_train.values,
#                        epochs=50, callbacks=[checkpoint_callback],
#                        validation_data=(x_test.values, y_test.values),
#                        validation_freq=1,
#                        initial_epoch = 19,
#                        batch_size=120, 
#                        steps_per_epoch=STEPS_PER_EPOCH)

# history = model.fit(x_train.values, y_train.values, 
#                     callbacks=[checkpoint_callback],
#                     validation_data=(x_test.values, y_test.values),
#                     epochs=50, 
#                     batch_size=BATCH_SIZE, 
#                     steps_per_epoch=STEPS_PER_EPOCH)