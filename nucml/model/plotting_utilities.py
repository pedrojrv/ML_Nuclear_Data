import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import imageio
import io 
from PIL import Image
from joblib import dump, load
import plotly.graph_objects as go
from plotly.subplots import make_subplots
import sys
from matplotlib.ticker import MaxNLocator

# This allows us to import the nucml utilities
sys.path.append("..")

import nucml.exfor.data_utilities as exfor_utils  # pylint: disable=import-error
import nucml.plot.plotting_utilities as plot_utils  # pylint: disable=import-error

def plot_xgb_training(dictionary, save=False, show=True, title="", path=""):
    plt.figure(figsize=(10,8))
    plt.plot(dictionary["eval"]["rmse"], label="Evaluation")
    plt.plot(dictionary["train"]["rmse"], label="Training")
    plt.legend()
    plt.xlabel("Number of Estimators")
    plt.ylabel("RMSE")
    plt.title(title)
    if save == True:
        plt.savefig(path, bbox_inches="tight")
    if show == False:
        plt.close()

def plotly_train_test(df, id_column, train_column, test_column, save_dir='', save=False, render_browser=False, paper=False):
    fig = make_subplots(specs=[[{"secondary_y": True}]])
    fig.add_trace(go.Scatter(x=df[id_column], y=df[train_column], name=train_column), secondary_y=False)
    fig.add_trace(go.Scatter(x=df[id_column], y=df[test_column], name=test_column), secondary_y=True)

    fig.update_xaxes(title_text=id_column)
    fig.update_yaxes(title_text="<b>{}</b>".format(train_column), secondary_y=False)
    fig.update_yaxes(title_text="<b>{}</b>".format(test_column), secondary_y=True)

    fig.update_layout(template="simple_white")

    if paper:
        fig.update_layout(height=600, width=700)
        fig.update_layout(legend=dict(x=0.7, y=1))
    if render_browser:
        fig.show(renderer="browser")
    else:
        fig.show()
    if save:
        fig.write_image(os.path.join(save_dir, "model_performance_metric.svg"))
        fig.write_html(os.path.join(save_dir, "model_performance_metric.html"))

def plot_knn_training(results_df):
    fig, ax1 = plt.subplots(figsize=(14,10))

    color = 'tab:orange'
    lns1 = ax1.plot(results_df.id, results_df.train_mae, color=color, marker="o", label="Train MAE")
    ax1.set_xlabel('Number of Neighbors (K)')
    ax1.set_ylabel('Train MAE (b)', color=color)
    ax1.tick_params(axis='y', labelcolor=color)
    # ax1.legend()


    ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
    color = 'tab:blue'
    lns2 = ax2.plot(results_df.id, results_df.val_mae, color=color, marker="o", label="Val MAE")
    lns3 = ax2.plot(results_df.id, results_df.test_mae, color=color, marker="x", markersize=10, label="Test MAE")
    ax2.set_ylabel('Test and Validation MAE (b)', color=color)  # we already handled the x-label with ax1
    ax2.tick_params(axis='y', labelcolor=color)
    ax2.xaxis.set_major_locator(MaxNLocator(integer=True))
    # ax2.legend()

    # added these three lines
    lns = lns1+lns2+lns3
    labs = [l.get_label() for l in lns]
    ax1.legend(lns, labs, loc=0)

    fig.tight_layout()  # otherwise the right y-label is slightly clipped
    plt.savefig("knn_mae.png", bbox_inches="tight", dpi=600)
    plt.show()

def plot_dt_parameters(results_df):
    fig, (ax1, ax3) = plt.subplots(2, figsize=(14,18))

    color = 'tab:orange'
    ax1.set_xlabel('Train MAE (b)')
    ax1.set_ylabel('Max Depth', color=color)
    ax1.scatter(results_df.train_mae, results_df.max_depth, color=color, marker="o")
    ax1.tick_params(axis='y', labelcolor=color)


    ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
    color = 'tab:blue'
    ax2.set_ylabel('Minimum Samples per Leaf (MSL)', color=color)  # we already handled the x-label with ax1
    ax2.scatter(results_df.train_mae, results_df.msl, color=color, marker="o")
    ax2.tick_params(axis='y', labelcolor=color)


    color = 'tab:orange'
    ax3.set_xlabel('Test MAE (b)')
    ax3.set_ylabel('Max Depth', color=color)
    ax3.scatter(results_df.test_mae, results_df.max_depth, color=color, marker="o")
    ax3.tick_params(axis='y', labelcolor=color)

    ax4 = ax3.twinx()  # instantiate a second axes that shares the same x-axis
    color = 'tab:blue'
    ax4.set_ylabel('Minimum Samples per Leaf (MSL)', color=color)  # we already handled the x-label with ax1
    ax4.scatter(results_df.test_mae, results_df.msl, color=color, marker="o")
    ax4.tick_params(axis='y', labelcolor=color)


    fig.tight_layout()  # otherwise the right y-label is slightly clipped
    plt.savefig("dt_mae.png", bbox_inches="tight", dpi=600)
    plt.show()



# def generate_gif_w_models(model_df, df, figure_dir, scaler, to_scale, ace_cl, ace_u, endf_cl, endf_u):
#     for i in model_df["model_path"]:
#         # Loading already saved Model
#         print(i)
#         model = load(i) 
#         figure_path_cl_35 = figure_dir + "Chlorine_35/chlorine_" + os.path.splitext(os.path.basename(i))[0] + ".png"
#         figure_path_u_233 = figure_dir + "Uranium_233/uranium_" + os.path.splitext(os.path.basename(i))[0] + ".png"
#         figure_path_cl_37 = figure_dir + "Chlorine_37/chlorine_" + os.path.splitext(os.path.basename(i))[0] + ".png"
#         figure_path_fe_56 = figure_dir + "Iron_56/iron_" + os.path.splitext(os.path.basename(i))[0] + ".png"

#         cl_kwargs =  {"Z":17, "A":35, "MT":"MT_103", "clf_type":None, "scaler":scaler, "to_scale":to_scale, 
#                       "E_min":0, "E_max":1.5E7, "N":0, "e_array":ace_cl, "log":True,  
#                       "error":True, "show":True, "save":True, "path":figure_path_cl_35, "render":False}
#         results_cl = exfor_utils.predicting_nuclear_xs(df, clf=model, new_data=new_cl_data, endf=endf_cl, **cl_kwargs)

#         u_kwargs =  {"Z":92, "A":233, "MT":"MT_18", "clf_type":None, "scaler":scaler, "to_scale":to_scale, 
#                       "E_min":0, "E_max":1.5E7, "N":0, "e_array":ace_u, "log":True, 
#                      "error":True, "show":True, "save":True, "path":figure_path_u_233, "render":False}
#         results_u = exfor_utils.predicting_nuclear_xs(df, clf=model, endf=endf_u, **u_kwargs)
        
#         cl_37_kwargs =  {"Z":17, "A":37, "MT":"MT_102", "clf_type":None, "scaler":scaler, "to_scale":to_scale, 
#                       "E_min":0, "E_max":1.5E7, "N":0, "e_array":ace_cl_37, "log":True,  
#                       "error":True, "show":True, "save":True, "path":figure_path_cl_37, "render":False}
#         results_cl_37 = exfor_utils.predicting_nuclear_xs(df, clf=model, endf=endf_cl_37, **cl_37_kwargs)
        
#         fe_56_kwargs =  {"Z":26, "A":56, "MT":"MT_2", "clf_type":None, "scaler":scaler, "to_scale":to_scale, 
#                       "E_min":0, "E_max":1.5E7, "N":0, "e_array":ace_fe_56, "log":True, 
#                      "error":True, "show":True, "save":True, "path":figure_path_fe_56, "render":False}
#         results_fe = exfor_utils.predicting_nuclear_xs(df, clf=model, endf=endf_fe_56, **fe_56_kwargs)

#     plot_utils.create_gif(figure_dir + "Chlorine_35/", ".png", "chlorine_knn.gif", duration=0.5)
#     plot_utils.create_gif(figure_dir + "Uranium_233/", ".png", "uranium_knn.gif", duration=0.5)
#     plot_utils.create_gif(figure_dir + "Chlorine_37/", ".png", "chlorine_37_knn.gif", duration=0.5)
#     plot_utils.create_gif(figure_dir + "Iron_56/", ".png", "iron_knn.gif", duration=0.5)