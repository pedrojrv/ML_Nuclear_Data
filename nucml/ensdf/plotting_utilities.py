import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import plotly.graph_objects as go

sns.set(font_scale = 2)
sns.set_style("white")

empty_df = pd.DataFrame()

def plot_level_density(df, Z, A, df2=empty_df, save=False, save_dir=None, label1="Adopted", label2="Cut-Off"):
    """Plots level density for a given isotope.

    Args:
        df (DataFrame): dataframe containing the discrete levels for a given isotope
        Z (int): number of protons.
        A (int): mass number.
        df2 (DataFrame, optional): If passed, this will be plot alongside the main dataframe. Useful for plotting 
            all known levels along the RIPL-cutoff dataframe. Defaults to empty_df.
        save (bool, optional): If True, the image will be saved. Defaults to False.
        save_dir (str, optional): Path-like string where the figure will be stored. Defaults to None.
        label1 (str, optional): Label for the first dataframe line in the plot legend. Defaults to "Adopted".
        label2 (str, optional): Label for the second dataframe line in the plot legend. Defaults to "Cut-Off".

    Returns:
        None
    """    
    ensdf = df.copy()
    ensdf2 = df2.copy()
    ensdf_cut_df_avaliable = True if ensdf2.shape[0] != 0 else False

    to_plot = ensdf[(ensdf["Z"] == Z) & (ensdf["A"] == A)].sort_values(by='Level_Number', ascending=True)
    to_plot["N"] = np.cumsum(to_plot.Level_Number)
    
    plt.figure(figsize=(14,8))
    plt.plot(to_plot.Energy, to_plot.N, c='blue', label=label1, marker="x")
    if ensdf_cut_df_avaliable:
        to_plot_2 = ensdf2[(ensdf2["Z"] == Z) & (ensdf2["A"] == A)].sort_values(by='Level_Number', ascending=True)
        to_plot_2["N"] = np.cumsum(to_plot_2.Level_Number)
        plt.plot(to_plot_2.Energy, to_plot_2.N, c='green', label=label2, marker="o")
    plt.yscale('log')
    plt.ylabel("Level Density")
    plt.xlabel("Energy (MeV)")
    plt.legend()
    if save == True:
        plt.savefig(os.path.join(save_dir,  'ENSDF_{}_Level_Density.png'.format(to_plot.Element_w_A.iloc[0])), bbox_inches='tight', dpi=600)
    return None


def plot_level_density_ml(ensdf_df, predictions_df, log_sqrt=False, log=False, save=False, save_dir=None):
    if log_sqrt:
        ensdf_df["Energy"] = np.power(ensdf_df["Energy"], 2)
        predictions_df["Energy"] = np.power(predictions_df["Energy"], 2)
    if log:
        ensdf_df["Level_Number"] = 10**ensdf_df.Level_Number.values
        predictions_df["Level_Number"] = 10**predictions_df.Level_Number.values
        ensdf_df["Energy"] = 10**ensdf_df.Energy.values
        predictions_df["Energy"] = 10**predictions_df.Energy.values

    ensdf_df["N"] = np.cumsum(ensdf_df.Level_Number)
    predictions_df["N"] = np.cumsum(predictions_df.Level_Number)

    plt.figure(figsize=(15,10))
    plt.plot(ensdf_df.Energy, ensdf_df.N, c='blue', label="ENSDF", marker="x")
    plt.plot(predictions_df.Energy, predictions_df.N, c='green', label="ML", marker="o")
    plt.yscale('log')
    plt.xscale('log')
    plt.ylabel("N (Number of Levels)")
    plt.legend()
    plt.xlabel("Energy (MeV)")
    if save == True:
        plt.savefig(os.path.join(save_dir,  'ENSDF_{}Z_{}A_Level_Density.png'.format(
            ensdf_df.Z.values[0], ensdf_df.A.values[0])), bbox_inches='tight', dpi=300)
    return None


def plot_levels_axh(protons, mass_number, ensdf_df, save=False, save_dir=None):
    to_plot = ensdf_df[(ensdf_df["Z"] == protons) & (ensdf_df["A"] == mass_number)].sort_values(
        by='Level_Number', ascending=True)
    plt.figure(figsize=(10,15))
    for i in to_plot["Energy"].values:
        plt.axhline(i, c="r", alpha=0.7)
    plt.title('{} Protons, {} Mass Number'.format(protons, mass_number))
    plt.ylabel('Energy (MeV)')
    plt.xticks([], [])
    if save == True:
        plt.savefig(os.path.join(save_dir, 'ENSDF_{}_AXH_Level_Density.png'.format(to_plot.Target_Element_w_A.iloc[0])), bbox_inches='tight', dpi=300)