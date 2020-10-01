import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import imageio
import io 
from PIL import Image

import plotly.graph_objects as go
from plotly.subplots import make_subplots



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


def create_gif(directory, extension, name, duration=2):
    images = []
    for file_name in os.listdir(directory):
        if file_name.endswith(extension):
            file_path = os.path.join(directory, file_name)
            images.append(imageio.imread(file_path))
    
    imageio.mimsave(os.path.join(directory, name), images, duration=duration)


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


def kdeplot(x, labels=[''], xlabel='', ylabel='', title='', figsize=(15,10), save=False, path=''):
    plt.figure(figsize=figsize)
    if isinstance(x, list):
        z = 0
        for i in x:
            g = sns.kdeplot(i, shade=True, label=labels[z])
            z = z + 1
    else:
        g = sns.kdeplot(x, shade=True)
    if len(xlabel) > 0:
        g.set(xlabel=xlabel, ylabel=ylabel)
        plt.title(title)
    if save:
        plt.savefig(path, bbox_inches='tight')


def cat_plot(features, df, groupby, top=10, reverse=False, save=False, path=''):
    cat_cols_plot = features
    for i in cat_cols_plot:
        for_plotting = df[[i, groupby]].drop_duplicates()
        if reverse:
            sns.catplot(x=i, kind="count", data=for_plotting,
                order=for_plotting[i].value_counts().iloc[-top:].index,
                palette="GnBu_r", height=15, aspect=2)
        else:
            sns.catplot(x=i, kind="count", data=for_plotting,
                order=for_plotting[i].value_counts().iloc[:top].index,
                palette="GnBu_r", height=15, aspect=2)
        plt.title("{} Distribution".format(i))
        if save:
            if reverse:
                plt.savefig(path + '_{}_reverse.svg'.format(i), bbox_inches='tight')
            else:
                plt.savefig(path + '_{}.svg'.format(i), bbox_inches='tight')


def plotly_fig2pil(fig):
    #convert Plotly fig to  an array
    fig_bytes = fig.to_image(format="png")
    buf = io.BytesIO(fig_bytes)
    img = Image.open(buf)
    return img

def plotly_fig2array(fig):
    #convert Plotly fig to  an array
    fig_bytes = fig.to_image(format="png")
    buf = io.BytesIO(fig_bytes)
    img = Image.open(buf)
    return np.asarray(img)



# from matplotlib.ticker import MaxNLocator
# fig, ax1 = plt.subplots(figsize=(10,7))

# color = 'tab:red'
# ax1.set_xlabel('K')
# ax1.set_ylabel('Train MAE', color=color)
# ax1.plot(knn_results.id, knn_results.train_mae, color=color, marker='o')
# ax1.tick_params(axis='y', labelcolor=color)

# ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis

# color = 'tab:blue'
# ax2.set_ylabel('Test MAE', color=color)  # we already handled the x-label with ax1
# ax2.plot(knn_results.id, knn_results.test_mae, color=color, marker='o')
# ax2.tick_params(axis='y', labelcolor=color)
# ax1.xaxis.set_major_locator(MaxNLocator(integer=True))

# fig.tight_layout()  # otherwise the right y-label is slightly clipped
# plt.show()