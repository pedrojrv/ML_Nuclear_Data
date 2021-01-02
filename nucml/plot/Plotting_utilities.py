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

# This allows us to import the nucml utilities
sys.path.append("..")

import nucml.exfor.data_utilities as exfor_utils  # pylint: disable=import-error


def create_gif(directory, extension, name, duration=2):
    images = []
    for file_name in os.listdir(directory):
        if file_name.endswith(extension):
            file_path = os.path.join(directory, file_name)
            images.append(imageio.imread(file_path))
    
    imageio.mimsave(os.path.join(directory, name), images, duration=duration)


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
    
