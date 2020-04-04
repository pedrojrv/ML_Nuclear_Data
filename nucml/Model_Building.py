import pandas as pd
import numpy as np


from sklearn import tree
from sklearn.tree import plot_tree
from sklearn.tree import DecisionTreeRegressor
def train_tree(max_depth, x_train, y_train):
	xs_tree = tree.DecisionTreeRegressor(max_depth=max_depth)
	xs_tree.fit(x_train, y_train)
	print("The depth of the three is: ", xs_tree.get_depth())

	xs_test_pred = xs_tree.predict(x_test)
	print("Testing MSE: ", mean_squared_error(xs_test_pred, y_test))
	print("Testing R2-Score: ", r2_score(xs_test_pred, y_test))



from sklearn.neighbors import KNeighborsRegressor

def train_knn(x, y, neigh, weight="uniform", metric="minkowski"):
    knn = KNeighborsRegressor(n_neighbors=neigh, weights=weight, metric=metric, metric_params=None, n_jobs=-1)
    knn.fit(x, y)
    return knn



import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras import regularizers
import tensorflow_docs as tfdocs
import tensorflow_docs.plots
import tensorflow_docs.modeling

def tf_dataset_gen(x, y, xt, yt, BUFFER_SIZE, BATCH_SIZE, N_TRAIN, gpu=False, multiplier=2, cache=False):
    if gpu == True:
        BATCH_SIZE = BATCH_SIZE * multiplier
        print("GPU: ON")
    train_dataset = tf.data.Dataset.from_tensor_slices((x.values, y.values)).shuffle(BUFFER_SIZE).repeat().batch(BATCH_SIZE)
    test_dataset = tf.data.Dataset.from_tensor_slices((xt.values, yt.values)).batch(BATCH_SIZE)
    if cache == True: # Ensures loader doesnt re-read data at each epoch.
        train_dataset = train_dataset.cache()
        test_dataset = test_dataset.cache()
    STEPS_PER_EPOCH = N_TRAIN//BATCH_SIZE
    print("BATCH SIZE: ", BATCH_SIZE)
    print("STEPS PER EPOCH: ", STEPS_PER_EPOCH)
    return train_dataset, test_dataset, STEPS_PER_EPOCH, BATCH_SIZE


def get_optimizer(lr_schedule):
    return tf.keras.optimizers.Adam(lr_schedule)

def get_callbacks(name):
    return [
        tfdocs.modeling.EpochDots(),
        tf.keras.callbacks.EarlyStopping(monitor='val_loss', patience=200), # val_loss
        tf.keras.callbacks.TensorBoard(logdir/name)]

def compile_and_fit(model, name, train_dataset, test_dataset, STEPS_PER_EPOCH, BATCH_SIZE=None, 
                    optimizer=None, max_epochs=10000, DECAY_EPOCHS=1000):
    lr_schedule = tf.keras.optimizers.schedules.InverseTimeDecay(
        0.001, decay_steps=STEPS_PER_EPOCH*DECAY_EPOCHS,
        decay_rate=1, staircase=False)
    
    if optimizer is None:
        optimizer = get_optimizer(lr_schedule)
    model.compile(optimizer=optimizer,
                  loss='mse',
                  metrics=['mae', 'mse'])
    model.summary()
    history = model.fit(
        train_dataset,
        steps_per_epoch = STEPS_PER_EPOCH,
        epochs=max_epochs,
        validation_data=test_dataset,
        callbacks=get_callbacks(name),
        verbose=0)        
    return history


def train_ensdf_network(strategy):
	with strategy.scope():
	    tiny_model = tf.keras.Sequential([
	        layers.Dense(16, activation='elu', input_shape=(FEATURES,)),
	        layers.Dense(1)])
	    history = compile_and_fit(tiny_model, 'sizes/Tiny_CPU', train_dataset, 
	                                                 test_dataset, STEPS_PER_EPOCH_CPU, max_epochs=5000)
	    return history