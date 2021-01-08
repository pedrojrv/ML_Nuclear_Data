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


def make_predictions(data, clf, clf_type):
    """
    Makes prediction using a trained classifier.
    Currently handles tensorflow, xgboost, and scikit-learn models
    """
    if clf_type == "tf":
        tf_dataset = tf.data.Dataset.from_tensor_slices((data)).batch(len(data))
        pred_vector = clf.predict(tf_dataset)
    elif clf_type == "xgb":
        xg_dataset = xgb.DMatrix(data)
        pred_vector = clf.predict(xg_dataset)
    else:
        pred_vector = clf.predict(data)
    return pred_vector


def create_error_df(identifier, error_metrics_v1):
    error_metrics_df = pd.DataFrame({"id":[identifier], 
                              "mae":[error_metrics_v1["mae"]], 
                              "mse":[error_metrics_v1["mse"]], 
                              "evs":[error_metrics_v1["evs"]], 
                              "mae_m":[error_metrics_v1["mae_m"]], 
                              "r2":[error_metrics_v1["r2"]]})
    return error_metrics_df

def get_best_models_df(results_df, keep_first=False):
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

def load_model_and_scaler(models_df):
    path_to_model = models_df["model_path"].values[0]
    path_to_scaler = models_df["scaler_path"].values[0]
    model = load(path_to_model) 
    scaler = load(path_to_scaler)
    return model, scaler

def load_model_and_scaler_w_path(model_path, scaler_path):
    model = load(model_path) 
    scaler = load(scaler_path)
    return model, scaler

def keep_best_delete_rest(results_df, model_dir, keep_first=False):
    best_models = get_best_models_df(results_df)
    not_to_delete = []
    for i in best_models.model_path.values:
        not_to_delete.extend([os.path.basename(os.path.dirname(i))])

    for i in os.listdir(model_dir):
        if i not in not_to_delete:
            if os.path.exists(os.path.join(model_dir,i)):
                shutil.rmtree(os.path.join(model_dir,i))