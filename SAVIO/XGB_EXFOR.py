import pandas as pd
import numpy as np
import xgboost as xgb
import sys
sys.path.append("..") 
from Utilities import EXFOR_utilities as exfor_utils
from Utilities import ENDF_utilities as endf_utils
from Utilities import Plotting_utilities as plot_utils

endf_dir = "./ENDF/"
figure_dir="./Figures/"
log_E = True

df, x_train, x_test, y_train, y_test, to_scale, scaler = exfor_utils.load_exfor(
    ("../ML_Data/working_xs_v2_unraw.csv"), numerical=True, plotting_df=False, give_split=True, norm=True, log_e=log_E)



new_data = exfor_utils.load_exfor_newdata(endf_dir + "Chlorine_Data/new_cl_np.csv", append_exfor=True, 
                                          df=df, protons=17, mass_number=35, MT="MT_103", log_e=log_E)
endf_cl = endf_utils.load_endf(endf_dir + "Chlorine_Data/endf_Cl_np_all.csv", log_e=log_E)
endf_u = endf_utils.load_endf(endf_dir + "Uranium_Data/endf_U_tot.csv", mev_to_ev=True, log_e=log_E)




dtrain = xgb.DMatrix(x_train.values, y_train.values)
dtest = xgb.DMatrix(x_test.values, y_test.values)
evallist = [(dtrain, 'train'), (dtest, 'eval')]


param = {'max_depth':20, 'eta':0.3, 'objective':'reg:squarederror', "booster":"gbtree", 
         "tree_method":"auto", "verbosity":2, "gamma":0, "lambda":1}
num_round = 50

progress = dict()


plot_utils.plot_xgb_training(progress)


bst = xgb.train(param, dtrain, num_round, evallist, evals_result=progress, 
                verbose_eval=True, early_stopping_rounds=10)


exfor_utils.predicting_nuclear_xs(df, "MT_103", 17, 35, bst, to_scale, scaler, additional_data=new_data, 
                      endf=endf_cl, E_min=-4, E_max=7, N=2500, error_metrics=True, log_e=log_E, clf_type="xgb")