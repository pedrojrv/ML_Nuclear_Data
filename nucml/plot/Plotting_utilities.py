import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

def kdeplot(x, labels=[''], xlabel='', ylabel='', title='', figsize=(15,10), save=False, path=''):
    plt.figure(figsize=figsize)
    if isinstance(x, list):
        z = 0
        for i in x:
            g = sns.kdeplot(i, shade=True, label=labels[z]);
            z = z + 1
    else:
        g = sns.kdeplot(x, shade=True);
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
                palette="GnBu_r", height=15, aspect=2);
        else:
            sns.catplot(x=i, kind="count", data=for_plotting,
                order=for_plotting[i].value_counts().iloc[:top].index,
                palette="GnBu_r", height=15, aspect=2);
        plt.title("{} Distribution".format(i))
        if save:
            if reverse:
                plt.savefig(path + '_{}_reverse.svg'.format(i), bbox_inches='tight')
            else:
                plt.savefig(path + '_{}.svg'.format(i), bbox_inches='tight')


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
