import pandas as pd

import tensorflow as tf
import xgboost as xgb

from sklearn.metrics import mean_absolute_error, mean_squared_error, explained_variance_score
from sklearn.metrics import median_absolute_error, r2_score


def regression_error_metrics(v1, v2):
    """
    Calculates the MSE and MAE from two vectors
    """
    error_metrics = {}
    error_metrics["mae"] = mean_absolute_error(v1, v2)
    error_metrics["mse"] = mean_squared_error(v1, v2)
    error_metrics["evs"] = explained_variance_score(v1, v2)
    error_metrics["mae_m"] = median_absolute_error(v1, v2)
    error_metrics["r2"] = r2_score(v1, v2)

    return error_metrics

def create_train_test_error_df(identifier, train_error_metrics, test_error_metrics):
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
