import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import plotly.graph_objects as go

sns.set(font_scale = 2)
sns.set_style("white")

empty_df = pd.DataFrame()

def plot_level_density(protons, mass_number, ensdf, ensdf2=empty_df, save=False, save_dir=None, 
                        label1="Adopted", label2="Cut-Off", log=False):
    ensdf = ensdf.copy()
    ensdf2 = ensdf2.copy()
    ensdf_cut_df_avaliable = True if ensdf2.shape[0] != 0 else False

    if log:
        ensdf["Level_Number"] = 10**ensdf.Level_Number.values
        ensdf["Level_Energy"] = 10**ensdf.Level_Energy.values
        if ensdf_cut_df_avaliable:
            ensdf2["Level_Number"] = 10**ensdf2.Level_Number.values
            ensdf2["Level_Energy"] = 10**ensdf2.Level_Energy.values

    to_plot = ensdf[(ensdf["Protons"] == protons) & (ensdf["Mass_Number"] == mass_number)].sort_values(
        by='Level_Number', ascending=True)
    plt.figure(figsize=(15,10))
    to_plot["N"] = np.cumsum(to_plot.Level_Number)
    plt.plot(to_plot.Level_Energy, to_plot.N, c='blue', label=label1, marker="x")
    if ensdf_cut_df_avaliable:
        to_plot_2 = ensdf2[(ensdf2["Protons"] == protons) & (ensdf2["Mass_Number"] == mass_number)].sort_values(
            by='Level_Number', ascending=True)
        to_plot_2["N"] = np.cumsum(to_plot_2.Level_Number)
        plt.plot(to_plot_2.Level_Energy, to_plot_2.N, c='green', label=label2, marker="o")
    plt.yscale('log')
    plt.xscale('log')
    if "Target_Element_w_A" in to_plot.columns:
        plt.title("Level Density Plot for {}: {} Protons, {} Mass Number".format(to_plot.Target_Element_w_A.iloc[0], protons, mass_number))
    plt.ylabel("N (Number of Levels)")
    plt.legend()
    plt.xlabel("Energy (MeV)")
    if save == True:
        plt.savefig(os.path.join(save_dir,  'ENSDF_{}_Level_Density.png'.format(to_plot.Target_Element_w_A.iloc[0])), bbox_inches='tight', dpi=300)
    return None

def plot_levels_axh(protons, mass_number, ensdf_df, save=False, save_dir=None):
    to_plot = ensdf_df[(ensdf_df["Protons"] == protons) & (ensdf_df["Mass_Number"] == mass_number)].sort_values(
        by='Level_Number', ascending=True)
    plt.figure(figsize=(10,15))
    for i in to_plot["Level_Energy"].values:
        plt.axhline(i, c="r", alpha=0.7)
    plt.title('{} Protons, {} Mass Number'.format(protons, mass_number))
    plt.ylabel('Energy (MeV)')
    plt.xticks([], [])
    if save == True:
        plt.savefig(os.path.join(save_dir, 'ENSDF_{}_AXH_Level_Density.png'.format(to_plot.Target_Element_w_A.iloc[0])), bbox_inches='tight', dpi=300)

def plot_level_density_ml(ensdf_df, predictions_df, log_sqrt=False, log=False, save=False, save_dir=None):
    if log_sqrt:
        ensdf_df["Level_Energy"] = np.power(ensdf_df["Level_Energy"], 2)
        predictions_df["Level_Energy"] = np.power(predictions_df["Level_Energy"], 2)
    if log:
        ensdf_df["Level_Number"] = 10**ensdf_df.Level_Number.values
        predictions_df["Level_Number"] = 10**predictions_df.Level_Number.values
        ensdf_df["Level_Energy"] = 10**ensdf_df.Level_Energy.values
        predictions_df["Level_Energy"] = 10**predictions_df.Level_Energy.values

    ensdf_df["N"] = np.cumsum(ensdf_df.Level_Number)
    predictions_df["N"] = np.cumsum(predictions_df.Level_Number)

    plt.figure(figsize=(15,10))
    plt.plot(ensdf_df.Level_Energy, ensdf_df.N, c='blue', label="ENSDF", marker="x")
    plt.plot(predictions_df.Level_Energy, predictions_df.N, c='green', label="ML", marker="o")
    plt.yscale('log')
    plt.xscale('log')
    plt.ylabel("N (Number of Levels)")
    plt.legend()
    plt.xlabel("Energy (MeV)")
    if save == True:
        plt.savefig(os.path.join(save_dir,  'ENSDF_{}Z_{}A_Level_Density.png'.format(
            ensdf_df.Protons.values[0], ensdf_df.Mass_Number.values[0])), bbox_inches='tight', dpi=300)
    return None

# def plot_level_density_v2(protons, mass_number, ensdf_df, ensdf_cut_df=empty_df, save=False, save_dir=None):
#     ensdf_cut_df_avaliable = True if ensdf_cut_df.shape[0] != 0 else False
#     to_plot = ensdf_df[(ensdf_df["Protons"] == protons) & (ensdf_df["Mass_Number"] == mass_number)].sort_values(
#         by='Level_Number', ascending=True)
#     plt.figure(figsize=(15,10))
#     to_plot["N"] = np.cumsum(to_plot.Level_Number)
#     plt.plot(to_plot.Level_Energy, to_plot.N, c='blue', label="Adopted")
#     if ensdf_cut_df_avaliable:
#         to_plot_2 = ensdf_cut_df[(ensdf_cut_df["Protons"] == protons) & (ensdf_cut_df["Mass_Number"] == mass_number)].sort_values(
#             by='Level_Number', ascending=True)
#         to_plot_2["N"] = np.cumsum(to_plot_2.Level_Number)
#         plt.plot(to_plot_2.Level_Energy, to_plot_2.N, c='green', label="Cut-Off")
#     plt.yscale('log')
#     if "Target_Element_w_A" in to_plot.columns:
#         plt.title("Level Density Plot for {}: {} Protons, {} Mass Number".format(to_plot.Target_Element_w_A.iloc[0], protons, mass_number))
#     plt.ylabel("N (Number of Levels)")
#     plt.legend()
#     plt.xscale('log')
#     plt.xlabel("Energy (MeV)")
#     if save == True:
#         plt.savefig(os.path.join(save_dir,  'ENSDF_{}_Level_Density.png'.format(to_plot.Target_Element_w_A.iloc[0])), bbox_inches='tight', dpi=300)
#     return None

# def plot_level_density_ml(ensdf_df, predictions_df, log_sqrt=False, log=False, save=False, save_dir=None):
#     if log_sqrt:
#         ensdf_df["Level_Energy"] = np.power(ensdf_df["Level_Energy"], 2)
#         predictions_df["Level_Energy"] = np.power(predictions_df["Level_Energy"], 2)
#     if log:
#         ensdf_df["Level_Energy"] = 10**ensdf_df.Level_Energy.values
#         predictions_df["Level_Energy"] = 10**predictions_df.Level_Energy.values
#     ensdf_df["N"] = np.cumsum(ensdf_df.Level_Number)
#     predictions_df["N"] = np.cumsum(predictions_df.Level_Number)

#     plt.figure(figsize=(15,10))
#     plt.plot(ensdf_df.Level_Energy, ensdf_df.N, c='blue', label="ENSDF", marker="x")
#     plt.plot(predictions_df.Level_Energy, predictions_df.N, c='green', label="ML", marker="o")
#     plt.yscale('log')
#     plt.ylabel("N (Number of Levels)")
#     plt.legend()
#     plt.xlabel("Energy (MeV)")
#     if save == True:
#         plt.savefig(os.path.join(save_dir,  'ENSDF_{}Z_{}A_Level_Density.png'.format(
#             ensdf_df.Protons.values[0], ensdf_df.Mass_Number.values[0])), bbox_inches='tight', dpi=300)
#     return None

# def plot_levels_sctr(protons, mass_number, ensdf_df, ensdf_cut_df=empty_df, save=False, save_dir=None):
#     ensdf_cut_df_avaliable = True if ensdf_cut_df.shape[0] != 0 else False
#     to_plot = ensdf_df[(ensdf_df["Protons"] == protons) & (ensdf_df["Mass_Number"] == mass_number)].sort_values(
#         by='Level_Number', ascending=False)
#     plt.figure(figsize=(15,10))
#     sns.scatterplot(to_plot["Level_Number"], to_plot["Level_Energy"], alpha=0.5, label="All")
#     if ensdf_cut_df_avaliable:
#         to_plot_2 = ensdf_cut_df[(ensdf_cut_df["Protons"] == protons) & (ensdf_cut_df["Mass_Number"] == mass_number)].sort_values(
#             by='Level_Number', ascending=False)
#         sns.scatterplot(to_plot_2["Level_Number"], to_plot_2["Level_Energy"], alpha=0.5, label="Cut-Off")
#     plt.title('{} Protons, {} Mass Number'.format(protons, mass_number))
#     plt.ylabel('Energy (MeV)')
#     plt.xlabel('Level Number')
#     if save:
#         plt.savefig(os.path.join(save_dir, 'ENSDF_Z{}_A{}_Dist.png'.format(protons, mass_number)), bbox_inches='tight', dpi=300)
#     return None