import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


import data_utilities as exfor_util
empty_df = pd.DataFrame()

def plot_exfor_w_references(df, Z, A, MT, nat_iso="I", new_data=empty_df, endf=empty_df, error=False,
    save=False, interpolate=False, legend=True, alpha=0.7, one_hot=True, log_e=False, path='', ref=False):
    # Extracting dataframe to make predictions and creating copy for evaluation
    to_plot = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
    # Initializing Figure and Plotting
    plt.figure(figsize=(16,10))
    if ref:
        fg = sns.FacetGrid(data=to_plot[["Energy", "Data", "Reference"]], hue='Reference',
                           hue_order=to_plot["Reference"].unique(), aspect=1.5, legend_out=False, height=10)
        fg.map(plt.scatter, "Energy", "Data", alpha=alpha)

        if legend:
            fg.add_legend()
            if interpolate == True:
                sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, label="Interpolation", ci=None)
            if endf.shape[0] != 0:
                sns.lineplot(endf["Energy"], endf["Data"], color="g", label="ENDF", alpha=alpha, ci=None)
            if new_data.shape[0] != 0:
                sns.scatterplot(new_data["Energy"], new_data["Data"], color="r",
                                alpha=0.5, label="New Data", ci=None)
        else:
            if interpolate == True:
                sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
            if endf.shape[0] != 0:
                sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
            if new_data.shape[0] != 0:
                sns.scatterplot(new_data["Energy"], new_data["Data"], legend=False, ci=None, label="Additional Data")
    else:
        sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=0.7, legend=False, label="EXFOR", ci=None, marker="o")
        if interpolate == True:
            sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
        if endf.shape[0] != 0:
            sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
        if new_data.shape[0] != 0:
            sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=1.0, legend=False, ci=None, label="Additional Data")
        if legend:
            plt.legend()
    # Setting Figure Limits
    if (new_data.shape[0] != 0 and endf.shape[0] != 0): #if both
        all_y = np.concatenate((to_plot["Data"], endf["Data"], new_data["Data"]))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif new_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
        all_y = np.concatenate((to_plot["Data"], endf["Data"]))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif new_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
        all_y = np.concatenate((to_plot["Data"].values, new_data["Data"].values))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    else: # if no ENDF and Additional
        all_y = to_plot["Data"].values
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    # Formatting Figure
    # if one_hot:
    #     plt.title("{} Protons, {} Neutrons, {}".format(Z, A-Z, MT))
    # else:
    #     plt.title("{} MT = {}".format(to_plot.Target_Element_w_A.values[0], MT))
    plt.xlabel('Energy(eV)')
    plt.ylabel('Cross Section (b)')
    plt.yscale('log')
    if log_e == False:
        plt.xscale('log')
    if save == True:
        plt.savefig(path + "EXFOR_{}_XS.png".format(to_plot.Target_Element_w_A.values[0]), bbox_inches='tight')


    if error:
        endf_all_int = endf.copy()
        to_plot_2 = to_plot.copy()
        to_plot_2 = to_plot_2[to_plot_2.Energy > endf_all_int.Energy.min()]
        # We start our index numbering after len(endf) that way it does not collide
        indexes = np.arange(len(endf), len(endf) + len(to_plot_2))
        # This will return a dataframe with non zero index
        to_plot_2.index = indexes
        # energy_interest will carry previous indexes
        energy_interest = to_plot_2[["Energy"]]
        energy_interest["Data"] = np.nan
        endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
        endf_all_int = endf_all_int.sort_values(by=['Energy'])
        endf_all_int["Data"] = endf_all_int["Data"].interpolate(limit_direction="forward")

        # Measuring metrics on predictions.
        print("ENDF vs EXFOR:")
        regression_error_metrics(to_plot_2["Data"], endf_all_int[["Data"]].loc[indexes])

        if new_data.shape[0] != 0:
            endf_all_int = endf.copy()
            additio_data = new_data.copy()
            indexes = np.arange(len(endf), len(endf) + len(additio_data))
            additio_data.index = indexes
            energy_interest = additio_data[["Energy"]]
            energy_interest["Data"] = np.nan
            endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
            endf_all_int = endf_all_int.sort_values(by=['Energy'])
            endf_all_int["Data"] = endf_all_int["Data"].interpolate()

            # Measuring metrics on predictions.
            print("NEW DATA: ENDF vs EXFOR:")
            regression_error_metrics(additio_data[["Data"]], endf_all_int[["Data"]].loc[indexes])
