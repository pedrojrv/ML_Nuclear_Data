from scipy.optimize import curve_fit
import pandas as pd
import numpy as np
import logging
from sklearn import preprocessing
from joblib import dump, load

from nucml.general_utilities import func     # pylint: disable=import-error

pd.options.mode.chained_assignment = None  # default='warn'

def impute_values(df):
    """Imputes values column-wise element-wise using linear interpolation.

    Args:
        df (DataFrame): dataframe to impute values off. It must contain the following features:
            'Z' (integer): Representing the proton number.
            'A' (integer): Representing the mass number (not the precise atomic mass).

    Returns:
        df: new imputed DataFrame.
    """
    for i in range(0,119):
        df[df["Z"] == i] = df[df["Z"] == i].sort_values(by="A").interpolate()

        if len(df[df["Z"] == i]) > 1:
            fit_df_original = df[df["Z"] == i].sort_values(by="A").reset_index(drop=True).copy()
            fit_df = fit_df_original.copy()

            col_params = {}
            guess = (0.5, 0.5)

            # Curve fit each column
            for col in fit_df.select_dtypes(np.number).columns:
                if len(fit_df[col].dropna()) > 1: # SHOULD IT BE 0?
                    # Get x & y
                    x = fit_df[col].dropna().index.astype(float).values
                    y = fit_df[col].dropna().values
                    # Curve fit column and get curve parameters
                    params = curve_fit(func, x, y, guess)
                    # Store optimized parameters
                    col_params[col] = params[0]

            # Extrapolate each column
            for col in col_params.keys():
                # Get the index values for NaNs in the column
                x = fit_df_original[pd.isnull(fit_df_original[col])].index.astype(float).values
                # Extrapolate those points with the fitted function
                fit_df_original[col][x] = func(x, *col_params[col])

            df[df["Z"] == i] = fit_df_original.values
    return df

def normalize_features(df, to_scale, scaling_type, scaler_dir):
    if scaler_dir is not None:
        logging.info("Using previously saved scaler.")
        scaler_object = load(open(scaler_dir, 'rb'))
    else:
        logging.info("Fitting new scaler.")
        if scaling_type == "power_yeo":
            scaler_object = preprocessing.PowerTransformer().fit(df[to_scale])
        elif scaling_type == "standard":
            scaler_object = preprocessing.StandardScaler().fit(df[to_scale])
        elif scaling_type == "minmax":
            scaler_object = preprocessing.MinMaxScaler().fit(df[to_scale])
        elif scaling_type == "maxabs":
            scaler_object = preprocessing.MaxAbsScaler().fit(df[to_scale])
        elif scaling_type == 'robust':
            scaler_object = preprocessing.RobustScaler().fit(df[to_scale])
        elif scaling_type == 'quantile_normal':
            scaler_object = preprocessing.QuantileTransformer(output_distribution='normal').fit(df[to_scale])
    return scaler_object

