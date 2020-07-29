def get_tiny():
    model = tf.keras.models.Sequential([
        tf.keras.layers.Dense(500, activation='relu'), 
        tf.keras.layers.Dense(400, activation='relu'),
        tf.keras.layers.Dense(300, activation='relu'), 
        tf.keras.layers.Dense(200, activation='relu'),
        tf.keras.layers.Dense(100, activation='relu'),
        tf.keras.layers.Dense(50, activation='relu'),
        tf.keras.layers.Dense(25, activation='relu'), 
        tf.keras.layers.Dense(15, activation='relu'), 
        tf.keras.layers.Dense(10, activation='relu'), 
        tf.keras.layers.Dense(5, activation='relu'), 
        tf.keras.layers.Dense(1)])
    return model

def get_medium():
    medium_model = tf.keras.Sequential([
        layers.Dense(64, activation='relu'),
        layers.Dense(64, activation='relu'),
        layers.Dense(64, activation='relu'),
        layers.Dense(1)])
    return medium_model

def get_large():
    large_model = tf.keras.Sequential([
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(1)])
    return large_model

def get_large_exp():
    large_model_exp = tf.keras.Sequential([
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(1)])
    return large_model_exp

def get_large_exp_2():
    large_model_exp_2 = tf.keras.Sequential([
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(512, activation='relu'),
        layers.Dense(1)])
    return large_model_exp_2

def get_large_exp_1000():
    large_model_exp_1000 = tf.keras.Sequential([
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1000, activation='relu'),
        layers.Dense(1)])

def get_large_2000():
    large_model_2000 = tf.keras.Sequential([
        layers.Dense(2000, activation='relu'),
        layers.Dense(2000, activation='relu'),
        layers.Dense(2000, activation='relu'),
        layers.Dense(2000, activation='relu'),
        layers.Dense(1)])
    return model 











def get_l2():
    l2_model = tf.keras.Sequential([
        layers.Dense(512, activation='relu',
                     kernel_regularizer=regularizers.l2(0.001)),
        layers.Dense(512, activation='relu',
                     kernel_regularizer=regularizers.l2(0.001)),
        layers.Dense(512, activation='relu',
                     kernel_regularizer=regularizers.l2(0.001)),
        layers.Dense(512, activation='relu',
                     kernel_regularizer=regularizers.l2(0.001)),
        layers.Dense(1)])
    return l2_model

def get_dropout():
    dropout_model = tf.keras.Sequential([
        layers.Dense(512, activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(1)])
    return dropout_model



def get_combined():
    combined_model = tf.keras.Sequential([
        layers.Dense(512, kernel_regularizer=regularizers.l2(0.0001),
                     activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, kernel_regularizer=regularizers.l2(0.0001),
                     activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, kernel_regularizer=regularizers.l2(0.0001),
                     activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(512, kernel_regularizer=regularizers.l2(0.0001),
                     activation='relu'),
        layers.Dropout(0.5),
        layers.Dense(1)])
    return combined_model

# histories['L2_ITD'] = model_tools.compile_and_fit(l2_model, 'L2_ITD', x_train.values, y_train.values, 
#                                                 x_test.values, y_test.values, BATCH_SIZE=300, max_epochs=100, 
#                                                 DECAY_EPOCHS=10, lr_method="ITD")

# histories['Dropout_ITD'] = model_tools.compile_and_fit(dropout_model, 'Dropout_ITD', x_train.values, y_train.values, 
#                                                 x_test.values, y_test.values, BATCH_SIZE=300, max_epochs=100, 
#                                                 DECAY_EPOCHS=10, lr_method="ITD")

# histories['Combined_ITD'] = model_tools.compile_and_fit(dropout_model, 'Combined_ITD', x_train.values, y_train.values, 
#                                                 x_test.values, y_test.values, BATCH_SIZE=300, max_epochs=100, 
#                                                 DECAY_EPOCHS=10, lr_method="ITD")