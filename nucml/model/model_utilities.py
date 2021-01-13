import pandas as pd
import os 
import shutil
from joblib import dump, load
import tensorflow as tf
import xgboost as xgb

from sklearn.metrics import mean_absolute_error, mean_squared_error, explained_variance_score
from sklearn.metrics import median_absolute_error, r2_score


def regression_error_metrics(v1, v2):
    """Calculates the MAE, MSE, EVS, MAEM, and R2 between two vectors. 

    Args:
        v1 (np.array): first array.
        v2 (np.array): second array.

    Returns:
        Dict: dictionary containing all 5 error metrics in key:value pairs.
    """    
    error_metrics = {}
    error_metrics["mae"] = mean_absolute_error(v1, v2)
    error_metrics["mse"] = mean_squared_error(v1, v2)
    error_metrics["evs"] = explained_variance_score(v1, v2)
    error_metrics["mae_m"] = median_absolute_error(v1, v2)
    error_metrics["r2"] = r2_score(v1, v2)

    return error_metrics

def create_error_df(identifier, error_metrics_dict):
    """Creates a simple dataframe from the performance metrics dictionary yielded by the regression_error_metrics() function.

    Args:
        identifier (str or int or float): string or number used for identifying the created dataframe row.
        error_metrics_dict (dict): dictionary containing the performance metrics.

    Returns:
        DataFrame
    """    
    error_metrics_df = pd.DataFrame({"id":[identifier], 
                              "mae":[error_metrics_dict["mae"]], 
                              "mse":[error_metrics_dict["mse"]], 
                              "evs":[error_metrics_dict["evs"]], 
                              "mae_m":[error_metrics_dict["mae_m"]], 
                              "r2":[error_metrics_dict["r2"]]})
    return error_metrics_df

def create_train_test_error_df(identifier, train_error_metrics, test_error_metrics, val_error_metrics=None):
    """Creates a pandas DataFrame of the error metrics provided by the dictionary from the
    regression_error_metrics() function.

    Args:
        identifier (str, int): label use for identification of the row.
        train_error_metrics (dict): dictionary containing the error metrics for the train set.
        test_error_metrics (dict): dictionary containing the error metrics for the test set.
        val_error_metrics (dict, optional): dictionary containing the error metrics for the val set. Defaults to None.

    Returns:
        DataFrame
    """    
    if val_error_metrics is not None:
        error_metrics_df = pd.DataFrame({"id":[identifier], 
                                "train_mae":[train_error_metrics["mae"]], 
                                "train_mse":[train_error_metrics["mse"]], 
                                "train_evs":[train_error_metrics["evs"]], 
                                "train_mae_m":[train_error_metrics["mae_m"]], 
                                "train_r2":[train_error_metrics["r2"]], 
                                "val_mae":[val_error_metrics["mae"]], 
                                "val_mse":[val_error_metrics["mse"]], 
                                "val_evs":[val_error_metrics["evs"]], 
                                "val_mae_m":[val_error_metrics["mae_m"]], 
                                "val_r2":[val_error_metrics["r2"]],
                                "test_mae":[test_error_metrics["mae"]], 
                                "test_mse":[test_error_metrics["mse"]], 
                                "test_evs":[test_error_metrics["evs"]], 
                                "test_mae_m":[test_error_metrics["mae_m"]], 
                                "test_r2":[test_error_metrics["r2"]]
                                })
    else:
        error_metrics_df = pd.DataFrame({"id":[identifier], 
                                "train_mae":[train_error_metrics["mae"]], 
                                "train_mse":[train_error_metrics["mse"]], 
                                "train_evs":[train_error_metrics["evs"]], 
                                "train_mae_m":[train_error_metrics["mae_m"]], 
                                "train_r2":[train_error_metrics["r2"]], 
                                "test_mae":[test_error_metrics["mae"]], 
                                "test_mse":[test_error_metrics["mse"]], 
                                "test_evs":[test_error_metrics["evs"]], 
                                "test_mae_m":[test_error_metrics["mae_m"]], 
                                "test_r2":[test_error_metrics["r2"]]})
    return error_metrics_df


def make_predictions(data, model, model_type):
    """    Makes prediction using a trained classifier.
    Currently handles tensorflow, xgboost, and scikit-learn models

    Args:
        data (np.array): numpy matrix needed for model predictions. The data will be prepared
            using tf.data.Dataset for tensorflow, xgb.DMatrix for xgboost, and passed as is 
            for sklearn models. 
        model (object): trained machine learning model.
        model_type (str): type of trained model. Options include "tf" for tensorflow, "xgb" for 
            xgboost, and "sk" for sklearn models.  


    Returns:
        object: object containing the model predictions. Type will be dependent on model type.
    """
    if model_type == "tf":
        tf_dataset = tf.data.Dataset.from_tensor_slices((data)).batch(len(data))
        pred_vector = model.predict(tf_dataset)
    elif model_type == "xgb":
        xg_dataset = xgb.DMatrix(data)
        pred_vector = model.predict(xg_dataset)
    else:
        pred_vector = model.predict(data)
    return pred_vector



def get_best_models_df(results_df, keep_first=False):
    """Python training scripts including knn.py, dt.py, and xgb.py yield a CSV which includes results
    for all training iterations along with stored model and scaler paths. This function returns a three row
    minimum dataframe with the best models based on training, validation, and testing performance. 

    Args:
        results_df (DataFrame): results dataframe created by the model training scripts. 
        keep_first (bool, optional): In some cases there might be duplicates. If True, this will keep the 
        the first instance of a duplicate value. Defaults to False.

    Returns:
        DataFrame
    """    
    best_train = results_df[results_df.train_mae == results_df.train_mae.min()].drop_duplicates(keep="last")
    best_train["tag"] = "Train"

    best_val = results_df[results_df.val_mae == results_df.val_mae.min()].drop_duplicates(keep="last")
    best_val["tag"] = "Val"

    best_test = results_df[results_df.test_mae == results_df.test_mae.min()].drop_duplicates(keep="last")
    best_test['tag'] = "Test"

    if keep_first:
        best_train = best_train.head(1)
        best_val = best_val.head(1)
        best_test = best_test.head(1)

    best_train = best_train.append(best_val)
    best_models = best_train.append(best_test)
    return best_models

def load_model_and_scaler(model_scaler_info, df=True):
    """Loads both the model and scaler given a dataframe with path's specified.

    Args:
        model_scaler_info (DataFrame): must contain a "model_path" and a "scaler_path" feature if "df" is True. 
            If "df" is False, it must be a python dictionary with "model_path" and "scaler_path" as keys.

    Returns:
        object, object: returns the loaded model and scaler.
    """    
    if df:
        path_to_model = model_scaler_info["model_path"].values[0]
        path_to_scaler = model_scaler_info["scaler_path"].values[0]
    else:
        path_to_model = model_scaler_info["model_path"]
        path_to_scaler = model_scaler_info["scaler_path"]
    model = load(path_to_model) 
    scaler = load(path_to_scaler)
    return model, scaler



def cleanup_model_dir(results_df, model_dir, keep_best=True, keep_first=False):
    """Deletes unwanted models and scalers. Keeps best models based on training, validation, and testing perfromance if wanted.

    Args:
        results_df (DataFrame): the loaded results csv created by the various training scripts.
        model_dir (str): path-like string where all model directories are stored.
        keep_best (bool, optional): If True, it will keep three or more models based on performance. Defaults to True.
        keep_first (bool, optional): If True, it will keep the first appearance in case of a duplicate. Defaults to False.
    
    Returns:
        None
    """    
    not_to_delete = []
    if keep_best:
        best_models = get_best_models_df(results_df, keep_first=keep_first)
        for i in best_models.model_path.values:
            not_to_delete.extend([os.path.basename(os.path.dirname(i))])

    for i in os.listdir(model_dir):
        if i not in not_to_delete:
            if os.path.isdir(os.path.join(model_dir,i)):
                shutil.rmtree(os.path.join(model_dir,i))
    return None