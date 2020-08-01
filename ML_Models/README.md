# Machine Learning Pre-Trained Models 

This directory contains pre-trained ML models all of which are trained using the EXFOR database. These are my personal models but feel free to use them. You can still use all `NucML` utilities with your own models as described in the documentation.

## Directory Description

The `NucML` utilities assumes the following structure.

```
| ML_Nuclear_Data
    | ML_Models
        | DT
            dt_results.csv
            dt_scaler.pkl
            dt_model_mdXX_mssX_mslX.joblib
            ...
            dt_model_mdXX_mssX_mslX.joblib
        | KNN
            knn_results.csv
            knn_scaler.pkl
            neigh_model_kX.joblib
            ...
            neigh_model_kX.joblib
        | NN
        | XGB
            xgb_results.csv
            xgb_scaler.pkl
            xgb_mdXX_neX_lrX.joblib
            ...
            xgb_mdXX_neX_lrX.joblib
```

You will notice three main file types in each of these directories.

- `results.csv`: contains global performance metrics for each of the existing pretrained models for each category (i.e. DT, KNN)
- `scaler.pkl`: this is an impotant file. It contains the parameters use to standarize/normalize the dataset previous to training and inference. For new predictions, the appropiate scaler needs to be used. Normalizing the data with using other methods will generate inaccurate results. 
- `model.joblib` or `model.h5`: it contains the scikit-learn, xgboost, or tensorflow model. It can be loaded using the appropiate libraries to make new predictions using the `NucML` tools.

## Browsing more Models

Some of the ML models are more than 100 MB and are therfore not part of this repository. You can browse and download models from the Comet ML dashboard. You can see the performance on some common isotopes and some global metrics for you to choose one. Once downloaded you can place them in the appropiate directory for use by NucML. 

