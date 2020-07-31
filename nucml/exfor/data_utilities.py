import os
import sys
import warnings

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
import tensorflow as tf
import xgboost as xgb
from sklearn import preprocessing
from sklearn.metrics import (explained_variance_score, mean_absolute_error,
                             mean_squared_error, median_absolute_error,
                             r2_score)
from sklearn.model_selection import train_test_split

import nucml.ace.data_utilities as ace_utils
import nucml.datasets as nuc_data
import nucml.model.model_utilities as model_utils
import nucml.plot.plotting_utilities as plot_utils

# This allows us to import the nucml utilities
sys.path.append("..")

ame_dir_path = os.path.abspath("../AME/")


# If more columns are added we need to fix norm column indexing to not include one hot encoded features.
# If we want dEnergy back we need to change load_exfor_newdata from [2:] to [3:] and do not drop it in load_Exfor

empty_df = pd.DataFrame()

def add_new_features(df, drop_q=True, ame_dir=ame_dir_path):
    logging.info("EXFOR CSV: Adding Nuclear Radius and Neutron to Nucleus Radius Ratio data...")
    df["Nuc_Radius_fm"] = 1.25 * np.power(df["Mass_Number"], 1/3)
    df["Neut_Nuc_Rad_Ratio"] = 0.8 / df["Nuc_Radius_fm"]


    if drop_q:
        logging.info("EXFOR CSV: Dropping Q-Values...")
        q_value = [col for col in df.columns if 'Q' in col]
        df = df.drop(columns=q_value)

    logging.info("EXFOR CSV: Adding information for Compound Nucleus...")
    df["Compound_Neutrons"] = df.Target_Neutrons + 1
    df["Compound_Mass_Number"] = df.Target_Mass_Number + 1
    df["Compound_Protons"] = df.Target_Protons

    masses = pd.read_csv(os.path.join(ame_dir, "AME_Natural_Properties_no_NaN.csv"))
    masses = masses[masses.Flag == "I"]
    masses = masses.drop(columns=["Neutrons", "Mass_Number", "Flag"])
    masses = masses.rename(columns={'N': 'Neutrons', 'A': 'Mass_Number', "Z":"Protons", "O":"Origin"})

    nuclear_data_compound = list(masses.columns)
    nuclear_data_compound_cols = ["Compound_" + s for s in nuclear_data_compound]
    masses.columns = nuclear_data_compound_cols

    df = df.reset_index(drop=True)
    masses = masses.reset_index(drop=True)

    df = df.merge(masses, on=['Compound_Neutrons', 'Compound_Protons'], how='left')

    df = df.drop(columns=["Compound_Mass_Number_y"])
    df = df.rename(columns={'Compound_Mass_Number_x': 'Compound_Mass_Number'})
    return df

def load_exfor_samples(df, Z, A, MT, nat_iso="I", one_hot=True, scale=False, scaler=None, to_scale=[]):
    """
    Loads EXFOR data for a particular Isotope, Reaction Channel
    """
    print("Extracting samples from dataframe.")
    if one_hot:
        sample = df[(df["Target_Protons"] == Z) & (df[MT] == 1) & (df["Target_Mass_Number"] == A) &
                    (df["Target_Flag_" + nat_iso] == 1)].sort_values(by='Energy', ascending=True)
    else:
        sample = df[(df["Target_Protons"] == Z) & (df["MT"] == MT) & (df["Target_Mass_Number"] == A) &
                    (df["Target_Flag"] == nat_iso)].sort_values(by='Energy', ascending=True)
    if scale:
        print("Scaling dataset...")
        sample[to_scale] = scaler.transform(sample[to_scale])
    print("EXFOR extracted DataFrame has shape: ", sample.shape)
    return sample

def load_exfor_isotope(df, Z, A, nat_iso="I", one_hot=True, scale=False, scaler=None, to_scale=[]):
    """
    Loads EXFOR data for a particular Isotope, Reaction Channel
    """
    print("Extracting samples from dataframe.")
    if one_hot:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Mass_Number"] == A) &
                    (df["Target_Flag_" + nat_iso] == 1)].sort_values(by='Energy', ascending=True)
    else:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Mass_Number"] == A) &
                    (df["Target_Flag"] == nat_iso)].sort_values(by='Energy', ascending=True)
    if scale:
        print("Scaling dataset...")
        sample[to_scale] = scaler.transform(sample[to_scale])
    print("EXFOR extracted DataFrame has shape: ", sample.shape)
    return sample


def load_exfor_element(df, Z, nat_iso="I", one_hot=True, scale=False, scaler=None, to_scale=[]):
    """
    Loads EXFOR data for a particular element (includes all isotopes)
    """
    print("Extracting samples from dataframe.")
    if one_hot:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Flag_" + nat_iso] == 1)].sort_values(by='Energy', ascending=True)
    else:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Flag"] == nat_iso)].sort_values(by='Energy', ascending=True)
    if scale:
        print("Scaling dataset...")
        sample[to_scale] = scaler.transform(sample[to_scale])
    print("EXFOR extracted DataFrame has shape: ", sample.shape)
    return sample


def load_exfor_newdata(datapath, df, Z=0, A=0, MT="MT_1", one_hot=True, log=False, nat_iso="I",  scale=False, scaler=None, to_scale=[]):
    """
    Loads New Measurments and appends EXFOR isotopic data to it. 
    Assumes new data only has an Energy and Data column
    """
    new_data = pd.read_csv(datapath)
    if log:
        new_data["Energy"] = np.log10(new_data["Energy"])
        new_data["Data"] = np.log10(new_data["Data"])
    # Getting data from df. 
    isotope_exfor = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
    for i in list(isotope_exfor.columns)[2:]:
        new_data[i] = isotope_exfor[i].values[1]
    if "dData" in list(new_data.columns):
        new_data.drop(columns="dData", inplace=True)
    if "dEnergy" in list(new_data.columns):
        new_data.drop(columns="dEnergy", inplace=True)
    if scale:
        print("Scaling dataset...")
        new_data[to_scale] = scaler.transform(new_data[to_scale])
    print("Expanded Dataset has shape: ", new_data.shape)
    return new_data

def append_exfor_energy(e_array, df, Z=0, A=0, MT="MT_1", nat_iso="I", one_hot=True, log=False, scale=True, scaler=None, to_scale=[]):
    """
    Loads New Measurments and appends EXFOR isotopic data to it. 
    Assumes new data only has an Energy and Data column
    """
    new_data = pd.DataFrame({"Energy":e_array})
    if log:
        new_data["Energy"] = np.log10(new_data["Energy"])
    isotope_exfor = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
    for i in list(isotope_exfor.columns)[2:]:
        new_data[i] = isotope_exfor[i].values[1]
    if "dData" in list(new_data.columns):
        new_data.drop(columns="dData", inplace=True)
    if "dEnergy" in list(new_data.columns):
        new_data.drop(columns="dEnergy", inplace=True)
    print("Expanded Dataset has shape: ", new_data.shape)
    if scale:
        print("Scaling dataset...")
        new_data[to_scale] = scaler.transform(new_data[to_scale])
    return new_data



def make_predictions_w_energy(e_array, Z, A, MT, df, clf, clf_type, scaler, to_scale, log=False, show=False):
    data_kwargs = {"Z":Z, "A":A, "MT":MT, "log":log, "scale":True, "scaler":scaler, "to_scale":to_scale}
    to_infer = append_exfor_energy(e_array, df, **data_kwargs)
    exfor = load_exfor_samples(df, Z, A, MT)
    # Make Predictions
    y_hat = model_utils.make_predictions(to_infer.values, clf, clf_type)
    if show:
        plt.plot(exfor.Energy, exfor.Data, alpha=0.5, c="g")
        plt.plot(to_infer.Energy, y_hat)
    return y_hat

def make_predictions_from_df(Z, A, MT, df, clf, clf_type, scaler, to_scale, log=False, show=False):
    kwargs = {"nat_iso": "I", "one_hot": True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    exfor = load_exfor_samples(df, Z, A, MT, **kwargs)
    # Make Predictions
    y_hat = model_utils.make_predictions(exfor.drop(columns=["Data"]).values, clf, clf_type)
    if show:
        plt.plot(exfor.Energy, exfor.Data, alpha=0.5, c="g")
        plt.plot(exfor.Energy, y_hat)
    return y_hat


def predicting_nuclear_xs_v2(df, Z, A, MT, clf, to_scale, scaler, e_array="ace", log=True, clf_type=None, html=False,
    new_data=empty_df, save=False, show=True, path="", nat_iso="I", render=False, order_dict={}, get_endf=True, inv_trans=False):
    '''
    endf=empty_df, 
    Used to plot predictions of the clf model for specific isotope (Z, A) and runs.
    MT is the reaction type (e.g 1 is total cross section)
    E_min and E_max are the energy region in which to make additional inferences.

    pred_exfor_expanded: expanded or non expanded to infer data
    pred_exfor_original: original exfor data points.
    pred_exfor_new: new data predictions (if avaliable)

    '''
    if get_endf:
        endf = get_endf_for_pred_xs(Z, A, MT)
    if e_array == "ace":
        e_array = ace_utils.get_energies('{:<02d}'.format(Z) + str(A).zfill(3), ev=True, log=log)

    new_data_avaliable = True if new_data.shape[0] != 0 else False
    endf_avaliable = True if endf.shape[0] != 0 else False
    e_array_avaliable = True if e_array.shape[0] != 0 else False

    kwargs = {"nat_iso":nat_iso, "one_hot":True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    to_infer = to_plot = load_exfor_samples(df, Z, A, MT, **kwargs)
    to_infer = to_infer.drop(columns=["Data"])

    kwargs = {"nat_iso":nat_iso, "one_hot":True, "scaler": scaler, "to_scale": to_scale}
    to_infer = load_exfor_samples(df, Z, A, MT, scale=False, **kwargs)
    to_plot = load_exfor_samples(df, Z, A, MT, scale=True, **kwargs)
    to_infer = to_infer.drop(columns=["Data"])    

    if e_array_avaliable: 
        to_infer = expanding_inference_dataset(to_infer, 0, 0, log, 0, e_array=e_array)
    else:
        to_infer = expanding_inference_dataset(to_infer, -5.00, 7.30, log, 500)

    to_infer[to_scale] = scaler.transform(to_infer[to_scale])
    
    # Making Predictions
    pred_exfor_expanded = model_utils.make_predictions(to_infer.values, clf, clf_type)
    pred_exfor_original = model_utils.make_predictions(to_plot.drop(columns=["Data"]).values, clf, clf_type)

    if inv_trans:
        # De-Transforming Scaled Data
        to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
        to_plot[to_scale] = scaler.inverse_transform(to_plot[to_scale])

    all_dict = {"exfor_ml_expanded":{"df":to_infer, "predictions":pred_exfor_expanded}, 
                "exfor_ml_original":{"df":to_plot, "predictions":pred_exfor_original}}

    exfor_ml_error = model_utils.regression_error_metrics(to_plot["Data"], pred_exfor_original)
    error_df = model_utils.create_error_df("EXFOR VS ML", exfor_ml_error)
    all_dict.update({"error_metrics":error_df})
    if new_data_avaliable:
        pred_exfor_new = model_utils.make_predictions(new_data.drop(columns=["Data"]).values, clf, clf_type)
        all_dict.update({"exfor_ml_new":{"df":new_data, "predictions":pred_exfor_new}})

        exfor_ml_new_error = model_utils.regression_error_metrics(new_data["Data"], pred_exfor_new)
        error_new_df = model_utils.create_error_df("EXFOR VS ML (NEW DATA)", exfor_ml_new_error)
        error_df = error_df.append(error_new_df)
        all_dict.update({"error_metrics":error_df})
    if endf_avaliable:
        # Gets interpolated endf data with anchor exfor
        exfor_endf, error_endf = get_error_endf_exfor(endf, to_plot)
        error_df = error_df.append(error_endf)
        all_dict.update({"exfor_endf_original":exfor_endf, "error_metrics":error_df, "endf":endf})
        if new_data_avaliable:
            # Gets interpolated endf data with anchor new exfor
            exfor_endf_new_data, error_endf_new = get_error_endf_new(endf, new_data)
            error_df = error_df.append(error_endf_new)
            all_dict.update({"exfor_endf_new":exfor_endf_new_data, "error_metrics":error_df})
    if show:
        plot_utils.plotly_ml_results(all_dict, save=save, save_dir=path, order_dict=order_dict, html=html, show=show)
    return all_dict


def get_endf_for_pred_xs(Z, A, MT):
    element_for_endf = list(elements_dict.keys())[list(elements_dict.values()).index(Z)] + str(A).zfill(3)
    mt_endf, mt_num_endf = MT.split("_")
    mt_num_endf = mt_num_endf.zfill(3)
    mt_endf = mt_endf + mt_num_endf
    endf = nuc_data.load_endf(element_for_endf, mt_endf, log=True)
    if endf is not None:
        return endf
    else:
        return empty_df


def expanding_inference_dataset(data, E_min, E_max, log, N, e_array=empty_df):
    """
    Creates new data points for prediction (expands energy)
    """
    e_array_avaliable = True if e_array.shape[0] != 0 else False
    if e_array_avaliable:
        energy_to_add = pd.DataFrame({"Energy": e_array})
    else:
        if log:
            energy_range = np.linspace(E_min, E_max, N)
        else:
            energy_range = np.power(10, np.linspace(np.log10(E_min), np.log10(E_max), N))
        energy_to_add = pd.DataFrame({"Energy": energy_range})
    for i in list(data.columns)[1:]:
        energy_to_add[i] = data[i].values[1]
    data = data.append(energy_to_add, ignore_index=True).sort_values(by='Energy', ascending=True)
    return data

def plot_limits_exfor(to_plot, endf, new_data, y_hat, y_hat2, y_hat3):
    endf_avaliable = True if endf.shape[0] != 0 else False
    new_data_avaliable = True if new_data.shape[0] != 0 else False
    if (new_data_avaliable and endf_avaliable): #if both
        plt.legend()
        all_y = np.concatenate((to_plot["Data"].values, y_hat.flatten(),
            endf["Data"].values, new_data["Data"].values))
        minimum_y = all_y.min() - all_y.min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif not new_data_avaliable and endf_avaliable: # if ENDF only
        # plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
        plt.legend()
        all_y = np.concatenate((to_plot["Data"].values, y_hat[0].flatten(), y_hat2[0].flatten(), endf["Data"].values))
        minimum_y = all_y.min() - all_y.min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif new_data_avaliable and not endf_avaliable: # if ADDITIONAL only
        # plt.legend((true, unseen, pred, pred_unseen),
        #            ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
        plt.legend()
        all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, new_data["Data"].values))
        minimum_y = all_y.min() - all_y.min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    else: # if no ENDF and Additional
        # plt.legend((true, pred), ('EXFOR', "EXFOR Pred"), loc='upper left')
        plt.legend()
        all_y = np.concatenate((to_plot["Data"].values.flatten(), y_hat, y_hat2))
        minimum_y = all_y.min() - all_y.min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)

def get_error_endf_exfor(endf, exfor_sample):
    endf_copy = endf.copy()
    exfor_copy = exfor_sample.copy()
    exfor_copy = exfor_copy[exfor_copy.Energy > endf_copy.Energy.min()]
    indexes = np.arange(len(endf), len(endf) + len(exfor_copy)) # start our index numbering after len(endf) (does not collide)
    exfor_copy.index = indexes # This will return a dataframe with non zero index
    energy_interest = exfor_copy[["Energy"]] # energy_interest will carry previous indexes
    energy_interest["Data"] = np.nan
    endf_copy = endf_copy.append(energy_interest, ignore_index=False).sort_values(by=['Energy'])
    endf_copy["Data"] = endf_copy["Data"].interpolate(limit_direction="forward")
    # Measuring metrics on predictions.
    error_endf_exfor = model_utils.regression_error_metrics(exfor_copy["Data"], endf_copy[["Data"]].loc[indexes])
    error_endf_exfor_df = model_utils.create_error_df("EXFOR VS ENDF", error_endf_exfor)

    exfor_endf = pd.DataFrame({"Energy":exfor_copy.Energy.values, 
        "EXFOR":exfor_copy["Data"].values, "ENDF":endf_copy["Data"].loc[indexes].values})
    # ORIGINAL return exfor_endf
    return exfor_endf, error_endf_exfor_df

def get_error_endf_new(endf, new_data):
    endf_copy = endf.copy()
    indexes = np.arange(len(endf), len(endf) + len(new_data))
    new_data.index = indexes
    energy_interest = new_data[["Energy"]]
    energy_interest["Data"] = np.nan
    endf_copy = endf_copy.append(energy_interest, ignore_index=False)
    endf_copy = endf_copy.sort_values(by=['Energy'])
    endf_copy["Data"] = endf_copy["Data"].interpolate()

    # Measuring metrics on predictions.
    error_endf_exfor_new = model_utils.regression_error_metrics(new_data["Data"], endf_copy[["Data"]].loc[indexes])
    error_endf_exfor_new_df = model_utils.create_error_df("EXFOR VS ENDF (NEW DATA)", error_endf_exfor_new)


    exfor_endf_new_data = pd.DataFrame({"Energy":new_data.Energy.values, 
        "EXFOR":new_data["Data"].values, "ENDF":endf_copy["Data"].loc[indexes].values})

    # ORIGINAL return exfor_endf_new_data
    return exfor_endf_new_data, error_endf_exfor_new_df


def plot_exfor_w_references(df, Z, A, MT, nat_iso="I", new_data=empty_df, endf=empty_df, error=False,
    save=False, interpolate=False, legend=True, alpha=0.7, one_hot=True, log_plot=False, path='', ref=False):
    """
    Plots Cross Section for a particular Isotope with or without references. 
    If Ref is true then EXFOR will be ploted per experimental campaign (one color for each)
    Legend will show up the
    """
    # Extracting dataframe to make predictions and creating copy for evaluation
    exfor_sample = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
    # Initializing Figure and Plotting
    if ref:
        fg = sns.FacetGrid(data=exfor_sample[["Energy", "Data", "Reference"]], hue='Reference',
                           hue_order=exfor_sample["Reference"].unique(), aspect=1.5, legend_out=False, height=10)
        fg.map(plt.scatter, "Energy", "Data", alpha=alpha)
        if legend:
            fg.add_legend()
            if interpolate == True:
                sns.lineplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha*0.5, label="Interpolation", ci=None)
            if endf.shape[0] != 0:
                sns.lineplot(endf["Energy"], endf["Data"], color="tab:orange", label="ENDF", alpha=alpha*0.5, ci=None)
            if new_data.shape[0] != 0:
                sns.scatterplot(new_data["Energy"], new_data["Data"], color="r",
                                alpha=0.5, label="New Data", ci=None)
        else:
            if interpolate == True:
                sns.lineplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
            if endf.shape[0] != 0:
                sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
            if new_data.shape[0] != 0:
                sns.scatterplot(new_data["Energy"], new_data["Data"], legend=False, ci=None, label="Additional Data")
    else:
        plt.figure(figsize=(14,10))
        if log_plot:
            plt.xscale('log')
        sns.scatterplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha, legend=False, label="EXFOR", ci=None, marker="o")
        if interpolate == True:
            sns.lineplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
        if endf.shape[0] != 0:
            sns.lineplot(endf["Energy"], endf["Data"], color="tab:orange", alpha=alpha*0.7, legend=False, ci=None, label="ENDF")
        if new_data.shape[0] != 0:
            sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=1.0, legend=False, ci=None, label="Additional Data")
        if legend:
            plt.legend()
    # Setting Figure Limits
    plot_limits_exfor_ref(exfor_sample, endf, new_data)
    plt.xlabel('Energy(eV)', fontsize=18)
    plt.ylabel('Cross Section (b)', fontsize=18)
    plt.yscale('log')
    if ref:
        if log_plot:
            plt.xscale('log')
    if save:
        plt.savefig(path + "EXFOR_{}_XS.png".format(exfor_sample.Target_Element_w_A.values[0]), bbox_inches='tight')
    if error:
        if endf.shape[0] != 0:
            exfor_endf = get_error_endf_exfor(endf=endf, exfor_sample=exfor_sample)
            if new_data.shape[0] != 0:
                exfor_endf_new_data = get_error_endf_new(endf=endf, new_data=new_data)
            return exfor_endf


def plot_limits_exfor_ref(exfor_sample, endf, new_data):
    # Setting Figure Limits
    if (new_data.shape[0] != 0 and endf.shape[0] != 0): #if both
        all_y = np.concatenate((exfor_sample["Data"], endf["Data"], new_data["Data"]))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif new_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
        all_y = np.concatenate((exfor_sample["Data"], endf["Data"]))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif new_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
        all_y = np.concatenate((exfor_sample["Data"].values, new_data["Data"].values))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    else: # if no ENDF and Additional
        all_y = exfor_sample["Data"].values
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)


def predicting_nuclear_xs(df, Z, A, MT, clf, to_scale, scaler, E_min=0, E_max=0, N=0, e_array=empty_df, error=False, log=True, clf_type=None,
    endf=empty_df, new_data=empty_df, save=False, show=True, path="", nat_iso="I", render=False):
    '''
    Used to plot predictions of the clf model for specific isotope (Z, A) and runs.
    MT is the reaction type (e.g 1 is total cross section)
    E_min and E_max are the energy region in which to make additional inferences.

    pred_exfor_expanded: expanded or non expanded to infer data
    pred_exfor_original: original exfor data points.
    pred_exfor_new: new data predictions (if avaliable)

    '''
    # Extracting dataframe to make predictions and creating copy for evaluation
    endf_avaliable = True if endf.shape[0] != 0 else False
    new_data_avaliable = True if new_data.shape[0] != 0 else False
    e_array_avaliable = True if e_array.shape[0] != 0 else False


    kwargs = {"nat_iso":nat_iso, "one_hot":True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    to_infer = to_plot = load_exfor_samples(df, Z, A, MT, **kwargs)
    to_infer = to_infer.drop(columns=["Data"])
    if N != 0:
        to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log, N)
    elif e_array_avaliable:
        to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log, N, e_array=e_array)
    else:
        to_infer = expanding_inference_dataset(to_infer, -5.00, 7.30, log, 500)

    # Making Predictions
    pred_exfor_expanded = model_utils.make_predictions(to_infer.values, clf, clf_type)
    pred_exfor_original = model_utils.make_predictions(to_plot.drop(columns=["Data"]).values, clf, clf_type)

    all_dict = {"exfor_ml_expanded":{"df":to_infer, "predictions":pred_exfor_expanded}, 
                "exfor_ml_original":{"df":to_plot, "predictions":pred_exfor_original}}
    if show:
        # Initializing Figure and Plotting
        plt.figure(figsize=(16,10))
        alpha = 0.8
        if endf_avaliable:
            endf_eval = plt.plot(endf["Energy"], endf["Data"], alpha=alpha, c="orange", linestyle="--", label="ENDF")
        pred = plt.plot(to_infer["Energy"], pred_exfor_expanded, alpha=alpha, c="green", linestyle="-", label="ML", linewidth=5)
        true = plt.plot(to_plot["Energy"], to_plot["Data"], alpha=alpha, c='b', label="EXFOR", linestyle="--")
        if new_data_avaliable:
            pred_exfor_new = model_utils.make_predictions(new_data.drop(columns=["Data"]).values, clf, clf_type)
            # all_dict.update({"exfor_new":{"df":new_data, "predictions":pred_exfor_new}})
            pred_unseen = plt.scatter(new_data["Energy"], pred_exfor_new, alpha=alpha, c="green", label="ML New Data")
            unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=alpha*0.5, c="b")
            plot_limits_exfor(to_plot, endf, new_data, pred_exfor_expanded, pred_exfor_original, pred_exfor_new)
        else:
            plot_limits_exfor(to_plot, endf, new_data, pred_exfor_expanded, pred_exfor_original, None)
        plt.title('Cross Section Inference ' + MT)
        plt.xlabel('Energy(eV)')
        plt.ylabel('Cross Section (b)')
        if save:
            filename, file_extension = os.path.splitext(path)
            plt.savefig(filename + file_extension, bbox_inches="tight")
        if render:
            plt.show()
        else:
            plt.close()

        # HERE GOES FOCUS IF NEEDED

    if error:
        # print("EXFOR VS ML: Original Data")
        # ORIGINAL regression_error_metrics(to_plot["Data"], pred_exfor_original)
        exfor_ml_error = model_utils.regression_error_metrics(to_plot["Data"], pred_exfor_original)
        error_df = model_utils.create_error_df("EXFOR VS ML", exfor_ml_error)
        all_dict.update({"error_metrics":error_df})
        if new_data_avaliable:
            # print("EXFOR VS ML: New Data")
            # ORIGINAL regression_error_metrics(new_data["Data"], pred_exfor_new)
            exfor_ml_new_error = model_utils.regression_error_metrics(new_data["Data"], pred_exfor_new)
            error_new_df = model_utils.create_error_df("EXFOR VS ML (NEW DATA)", exfor_ml_new_error)
            error_df = error_df.append(error_new_df)
            all_dict.update({"error_metrics":error_df})
        if endf_avaliable:
            # Gets interpolated endf data with anchor exfor
            # ORIGINAL exfor_endf = get_error_endf_exfor(endf, to_plot)
            exfor_endf, error_endf = get_error_endf_exfor(endf, to_plot)
            error_df = error_df.append(error_endf)
            all_dict.update({"exfor_endf_original":exfor_endf, "error_metrics":error_df, "endf":endf})
            if new_data_avaliable:
                # Gets interpolated endf data with anchor new exfor
                # ORIGINAL exfor_endf_new_data = get_error_endf_new(endf, new_data)
                exfor_endf_new_data, error_endf_new = get_error_endf_new(endf, new_data)
                error_df = error_df.append(error_endf_new)
                all_dict.update({"exfor_endf_new":exfor_endf_new_data, "error_metrics":error_df})
    return all_dict




def get_mt_errors_exfor_ml(df, Z, A, scaler, to_scale, model):
    kwargs = {"nat_iso": "I", "one_hot": True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    error_results = pd.DataFrame(columns=['MT', 'MAE', 'MSE', 'EVS', 'MAE_M', 'R2'])
    exfor_isotope = load_exfor_isotope(df, Z, A, **kwargs)
    # NEXT WE REMOVE ANY MT COLUMNS THAT ARE FILLED WITH ZEROS
    exfor_isotope_cols = exfor_isotope.loc[:, (exfor_isotope != 0).any(axis=0)][:1]
    for col in exfor_isotope_cols.columns:
        if "MT" in col:
            exfor_sample = load_exfor_samples(df, Z, A, col, **kwargs)
            error_dict = model_utils.regression_error_metrics(model.predict(exfor_sample.drop(columns=["Data"])), 
                                                              exfor_sample.Data)
            error_results = error_results.append(pd.DataFrame({"MT":[col], "MAE":[error_dict["mae"]], 
                                                               "MSE":[error_dict["mse"]], "EVS":[error_dict["evs"]], 
                                                               "MAE_M":[error_dict["mae_m"]], "R2":[error_dict["r2"]]}))
    return error_results


def get_mt_error_exfor_endf(df, Z, A, scaler, to_scale):
    kwargs = {"nat_iso": "I", "one_hot": True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    error_results = pd.DataFrame(columns=['id', 'mae', 'mse', 'evs', 'mae_m', 'r2', 'MT'])
    exfor_isotope = load_exfor_isotope(df, Z, A, **kwargs)
    exfor_isotope_cols = exfor_isotope.loc[:, (exfor_isotope != 0).any(axis=0)][:1]
    for col in exfor_isotope_cols.columns:
        if "MT" in col:
            if col in ["MT_101", "MT_9000"]:
                continue
            else:
                exfor_sample = load_exfor_samples(df, Z, A, col, **kwargs)
                endf_data = get_endf_for_pred_xs(Z, A, col)
                _, error_exfor_endf = get_error_endf_exfor(endf_data, exfor_sample)
                error_exfor_endf["MT"] = col
                error_results = error_results.append(error_exfor_endf)
    return error_results


def get_csv_for_ace(df, Z, A, scaler, to_scale, model):
    ace_array = ace_utils.get_energies('{:<02d}'.format(Z) + str(A).zfill(3), ev=True, log=True)
    data_ace = pd.DataFrame({"Energy":ace_array})
    
    kwargs = {"nat_iso": "I", "one_hot": True, "scale": True, "scaler": scaler, "to_scale": to_scale}
    exfor_isotope = load_exfor_isotope(df, Z, A, **kwargs)
    exfor_isotope_cols = exfor_isotope.loc[:, (exfor_isotope != 0).any(axis=0)][:1]
    for col in exfor_isotope_cols.columns:
        if "MT" in col:
            if col in ["MT_101", "MT_9000"]:
                continue
            else:
                print(col)
                predictions = make_predictions_w_energy(ace_array, Z, A, col, df, model, 
                                              None, scaler, to_scale, log=False, show=False)
                data_ace[col] = predictions
    return data_ace


elements_dict = {
    "H":1,
    "He":2,
    "Li":3,
    "Be":4,
    "B":5,
    "C":6,
    "N":7,
    "O":8,
    "F":9,
    "Ne":10,
    "Na":11,
    "Mg":12,
    "Al":13,
    "Si":14,
    "P":15,
    "S":16,
    "Cl":17,
    "Ar":18,
    "K":19,
    "Ca":20,
    "Sc":21,
    "Ti":22,
    "V":23,
    "Cr":24,
    "Mn":25,
    "Fe":26,
    "Co":27,
    "Ni":28,
    "Cu":29,
    "Zn":30,
    "Ga":31,
    "Ge":32,
    "As":33,
    "Se":34,
    "Br":35,
    "Kr":36,
    "Rb":37,
    "Sr":38,
    "Y":39,
    "Zr":40,
    "Nb":41,
    "Mo":42,
    "Tc":43,
    "Ru":44,
    "Rh":45,
    "Pd":46,
    "Ag":47,
    "Cd":48,
    "In":49,
    "Sn":50,
    "Sb":51,
    "Te":52,
    "I":53,
    "Xe":54,
    "Cs":55,
    "Ba":56,
    "La":57,
    "Ce":58,
    "Pr":59,
    "Nd":60,
    "Pm":61,
    "Sm":62,
    "Eu":63,
    "Gd":64,
    "Tb":65,
    "Dy":66,
    "Ho":67,
    "Er":68,
    "Tm":69,
    "Yb":70,
    "Lu":71,
    "Hf":72,
    "Ta":73,
    "W":74,
    "Re":75,
    "Os":76,
    "Ir":77,
    "Pt":78,
    "Au":79,
    "Hg":80,
    "Tl":81,
    "Pb":82,
    "Bi":83,
    "Po":84,
    "At":85,
    "Rn":86,
    "Fr":87,
    "Ra":88,
    "Ac":89,
    "Th":90,
    "Pa":91,
    "U":92,
    "Np":93,
    "Pu":94,
    "Am":95,
    "Cm":96,
    "Bk":97,
    "Cf":98,
    "Es":99,
    "Fm":100,
    "Md":101,
    "No":102,
    "Lr":103,
    "Rf":104,
    "Db":105,
    "Sg":106,
    "Bh":107,
    "Hs":108,
    "Mt":109,
    "Ds":110,
    "Rg":111,
    "Cn":112,
    "Nh":113,
    "Fi":114,
    "Mc":115,
    "Lv":116,
    "Ts":117,
    "Og":118,
}



# def predicting_nuclear_xs_v2(df, Z, A, MT, clf, to_scale, scaler, e_array=empty_df, error=False, log=True, clf_type=None,
#     new_data=empty_df, save=False, show=True, path="", nat_iso="I", render=False, order_dict={}):
#     '''
#     endf=empty_df, 
#     Used to plot predictions of the clf model for specific isotope (Z, A) and runs.
#     MT is the reaction type (e.g 1 is total cross section)
#     E_min and E_max are the energy region in which to make additional inferences.

#     pred_exfor_expanded: expanded or non expanded to infer data
#     pred_exfor_original: original exfor data points.
#     pred_exfor_new: new data predictions (if avaliable)

#     '''
#     # Extracting dataframe to make predictions and creating copy for evaluation
#     # endf_avaliable = True if endf.shape[0] != 0 else False
#     new_data_avaliable = True if new_data.shape[0] != 0 else False
#     e_array_avaliable = True if e_array.shape[0] != 0 else False

#     element_for_endf = list(elements_dict.keys())[list(elements_dict.values()).index(Z)] + str(A).zfill(3)
#     mt_endf, mt_num_endf = MT.split("_")
#     mt_num_endf = mt_num_endf.zfill(3)
#     mt_endf = mt_endf + mt_num_endf
#     endf = nuc_data.load_endf(element_for_endf, mt_endf, log=True)
#     endf_avaliable = False if endf == None else True

#     e_array = ace_utils.get_energies('{:<02d}'.format(Z) + str(A).zfill(3), ev=True)

#     kwargs = {"nat_iso":nat_iso, "one_hot":True, "scale": True, "scaler": scaler, "to_scale": to_scale}
#     to_infer = to_plot = load_exfor_samples(df, Z, A, MT, **kwargs)
#     to_infer = to_infer.drop(columns=["Data"])
#     if N != 0:
#         to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log, N)
#     elif e_array_avaliable:
#         to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log, N, e_array=e_array)
#     else:
#         to_infer = expanding_inference_dataset(to_infer, -5.00, 7.30, log, 500)

#     # Making Predictions
#     pred_exfor_expanded = model_utils.make_predictions(to_infer.values, clf, clf_type)
#     pred_exfor_original = model_utils.make_predictions(to_plot.drop(columns=["Data"]).values, clf, clf_type)

#     all_dict = {"exfor_ml_expanded":{"df":to_infer, "predictions":pred_exfor_expanded}, 
#                 "exfor_ml_original":{"df":to_plot, "predictions":pred_exfor_original}}

#     if new_data_avaliable:
#         pred_exfor_new = model_utils.make_predictions(new_data.drop(columns=["Data"]).values, clf, clf_type)
#         all_dict.update({"exfor_ml_new":{"df":new_data, "predictions":pred_exfor_new}})

#     if error:
#         exfor_ml_error = model_utils.regression_error_metrics(to_plot["Data"], pred_exfor_original)
#         error_df = model_utils.create_error_df("EXFOR VS ML", exfor_ml_error)
#         all_dict.update({"error_metrics":error_df})
#         if new_data_avaliable:
#             exfor_ml_new_error = model_utils.regression_error_metrics(new_data["Data"], pred_exfor_new)
#             error_new_df = model_utils.create_error_df("EXFOR VS ML (NEW DATA)", exfor_ml_new_error)
#             error_df = error_df.append(error_new_df)
#             all_dict.update({"error_metrics":error_df})
#         if endf_avaliable:
#             # Gets interpolated endf data with anchor exfor
#             exfor_endf, error_endf = get_error_endf_exfor(endf, to_plot)
#             error_df = error_df.append(error_endf)
#             all_dict.update({"exfor_endf_original":exfor_endf, "error_metrics":error_df, "endf":endf})
#             if new_data_avaliable:
#                 # Gets interpolated endf data with anchor new exfor
#                 exfor_endf_new_data, error_endf_new = get_error_endf_new(endf, new_data)
#                 error_df = error_df.append(error_endf_new)
#                 all_dict.update({"exfor_endf_new":exfor_endf_new_data, "error_metrics":error_df})
#     if show:
#         plot_utils.plotly_ml_results(all_dict, save=save, save_dir=path, order_dict=order_dict)
#     return all_dict
