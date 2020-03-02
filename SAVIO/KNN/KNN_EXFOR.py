import pandas as pd
import numpy as np
import xgboost as xgb
import sys
sys.path.append("..") 
from Utilities import EXFOR_utilities as exfor_utils
from Utilities import ENDF_utilities as endf_utils
from Utilities import Plotting_utilities as plot_utils

endf_dir = "../ENDF/"
figure_dir="./Figures/"
log_E = True
data_path = "/global/scratch/pedrovicentevz/"

df, x_train, x_test, y_train, y_test, to_scale, scaler = exfor_utils.load_exfor((data_path + "ML_Data/working_xs_v2_unraw.csv"), 
    numerical=True, plotting_df=False, give_split=True, norm=True, log_e=log_E)


# For error and plotting
new_data = exfor_utils.load_exfor_newdata(endf_dir + "Chlorine_Data/new_cl_np.csv", append_exfor=True, 
                                          df=df, protons=17, mass_number=35, MT="MT_103", log_e=log_E)
endf_cl = endf_utils.load_endf(endf_dir + "Chlorine_Data/endf_Cl_np_all.csv", log_e=log_E)
endf_u = endf_utils.load_endf(endf_dir + "Uranium_Data/endf_U_tot.csv", mev_to_ev=True, log_e=log_E)


# XGBoost
dtrain = xgb.DMatrix(x_train.values, y_train.values)
dtest = xgb.DMatrix(x_test.values, y_test.values)
evallist = [(dtrain, 'train'), (dtest, 'eval')]

max_depths = [100, 200, 400, 700]
learning_rates = [0.3, 0.1, 0.001]
estimators = [100, 200, 400, 700]

all_models_progress = {}
all_models_best_iter = {}
all_models_best_score = {}
models = {}

for md in max_depths:
    for lr in learning_rates:
        for es in estimators:
            progress = {}
            param = {'max_depth':md, 'eta':lr, 'objective':'reg:squarederror', "booster":"gbtree", 
                    "tree_method":"auto", "verbosity":2, "gamma":0, "lambda":1}
            num_round = es
            bst = xgb.train(param, dtrain, num_round, evallist, evals_result=progress, 
                            verbose_eval=True, early_stopping_rounds=5)
            all_models_progress[str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"] = progress
            all_models_best_iter[str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"] = bst.best_iteration
            all_models_best_score[str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"] = bst.best_score
            models[str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"] = bst


best_model_name = max(all_models_best_score, key=all_models_best_score.get)
best_model = models[best_model_name]
best_model.save_model('./Models/XGBoost/' + best_model_name + '.model')  # load data


for md in max_depths:
    for lr in learning_rates:
        for es in estimators:
            name = str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"
            plot_utils.plot_xgb_training(all_models_progress[name], title=name, 
                                         save=False, path=("./Figures/Model_Training_Progress/" + name + ".png"))


for md in max_depths:
    for lr in learning_rates:
        for es in estimators:
            name = str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"
            exfor_utils.predicting_nuclear_xs(df, "MT_103", 17, 35, models[name], 
                                              to_scale, scaler, endf=endf_cl, E_min=-4, E_max=7, N=0, 
                                              error_metrics=True, log_e=log_E, clf_type="xgb", save=False,
                                              path=("./Figures/Chlorine_Predictions/" + name + "_xs.png"),
                                              path_add=("./Figures/Chlorine_Predictions/" + name + "_additional_xs.png"))

for md in max_depths:
    for lr in learning_rates:
        for es in estimators:
            name = str(es) + "_est_" + str(md) + "_depth_" + str(lr) + "_lr"
            exfor_utils.predicting_nuclear_xs(df, "MT_1", 92, 235, models[name], to_scale, scaler, 
                                              endf=endf_u, E_min=-4, E_max=7, N=0, error_metrics=True, 
                                              log_e=log_E, clf_type="xgb", save=False,
                                              path=("./Figures/Uranium_Predictions/" + name + "_xs.png"),
                                              path_add=("./Figures/Uranium_Predictions/" + name + "_additional_xs.png"))