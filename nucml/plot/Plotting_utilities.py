import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import imageio
import io 
from PIL import Image


def create_gif(directory, extension, name, duration=2):
    """Gathers all images in a directory and creates a gif file.

    Args:
        directory (str): path-like string where all images are saved.
        extension (str): extension of images to be gathered (i.e. jpg).
        name (str): name by which the gif will be saved.
        duration (int, optional): wanted duration of the created gif. Defaults to 2.
    
    Returns:
        None
    """    
    images = []
    for file_name in os.listdir(directory):
        if file_name.endswith(extension):
            file_path = os.path.join(directory, file_name)
            images.append(imageio.imread(file_path))
    
    imageio.mimsave(os.path.join(directory, name), images, duration=duration)
    return None


def kdeplot(x, labels=[''], xlabel='', ylabel='', title='', figsize=(15,10), save=False, path=''):
    """Creates a KDE plot for a given array.

    Args:
        x (np.array or list): numpy array or list of numpy arrays. If a list is given, all provided arrays will be ploted in the same figure.
        labels (list, optional): If x is a list, this argument represents the labels that will be plotted. Defaults to [''].
        xlabel (str, optional): Label for the X-axis. Defaults to ''.
        ylabel (str, optional): Label for the Y-axis. Defaults to ''.
        title (str, optional): Title of the plotted figure. Defaults to ''.
        figsize (tuple, optional): Figure size. Defaults to (15,10).
        save (bool, optional): If True, the figure will be saved. Defaults to False.
        path (str, optional): path-like string where the figure will be saved in case save=True. Defaults to ''.

    Returns:
        None
    """    
    plt.figure(figsize=figsize)
    if isinstance(x, list):
        z = 0
        for i in x:
            g = sns.kdeplot(i, shade=True, label=labels[z])
            z = z + 1
    else:
        g = sns.kdeplot(x, shade=True)
    if len(xlabel) > 0:
        g.set(xlabel=xlabel)
    if len(ylabel) > 0:
        g.set(ylabel=ylabel)
    if len(title) > 0:
        plt.title(title)
    if save:
        plt.savefig(path, bbox_inches='tight')
    return None


def cat_plot(features, df, groupby, top=10, reverse=False, save=False, path=''):
    """Plots a categorical bar plot.

    Args:
        features (list): list of column names for which a separate bar plot will be created.
        df (pd.DataFrame): pandas dataframe containing data to be ploted. Must have the columns in the features argument.
        groupby (str): column by which the dataframe will be grouped for each bar plot.
        top (int, optional): In cases where there are a lot of categories, it is a good idea to limit the number of bars in the plot. This argument specifies the maximum number of bars per plot. Defaults to 10.
        reverse (bool, optional): If True, the lowest frequent items are plotted rather than the most popular. Defaults to False.
        save (bool, optional): If True, the figure will be saved. Defaults to False.
        path (str, optional): path-like string where the figure will be saved in case save=True. Defaults to ''.

    Returns:
        None
    """    
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
    return None


def plotly_fig2pil(fig):
    """Converts a plotly figure object to a PIL image.

    Args:
        fig (object): plotly object to convert to array.

    Returns:
        object: PIL Image object.
    """ 
    fig_bytes = fig.to_image(format="png")
    buf = io.BytesIO(fig_bytes)
    img = Image.open(buf)
    return img

def plotly_fig2array(fig):
    """Converts a plotly figure object into a numpy array.

    Args:
        fig (object): plotly object.

    Returns:
        np.array: numpy array representation of the plotly figure.
    """
    fig_bytes = fig.to_image(format="png")
    buf = io.BytesIO(fig_bytes)
    img = Image.open(buf)
    return np.asarray(img)
    
