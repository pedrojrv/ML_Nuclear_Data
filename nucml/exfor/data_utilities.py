import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
import xgboost as xgb
import warnings
import tensorflow as tf
# warnings.warn("Warning...........Message")

# If more columns are added we need to fix norm column indexing to not include one hot encoded features.
# If we want dEnergy back we need to change load_exfor_newdata from [2:] to [3:] and do not drop it in load_Exfor


empty_df = pd.DataFrame()


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


def load_exfor_newdata(datapath, Z=0, A=0, MT="MT_1", new_df=empty_df, append_exfor=False, df=empty_df, nat_iso="I", one_hot=True, log_e=False):
    """
    Loads New Measurments and appends EXFOR isotopic data to it. 
    Assumes new data only has an Energy and Data column
    """
    if len(datapath) != 0:
        new_data = pd.read_csv(datapath)
    else:
        new_data = new_df
    if log_e:
        new_data["Energy"] = np.log10(new_data["Energy"])
    if append_exfor:
        isotope_exfor = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
        for i in list(isotope_exfor.columns)[2:]:
            new_data[i] = isotope_exfor[i].values[1]
        # new_data = new_data.astype(isotope_exfor.dtypes.to_dict())
    if "dData" in list(new_data.columns):
        new_data.drop(columns="dData", inplace=True)
    if "dEnergy" in list(new_data.columns):
        new_data.drop(columns="dEnergy", inplace=True)
    print("Expanded Dataset has shape: ", new_data.shape)
    return new_data


def regression_error_metrics(v1, v2):
    """
    Calculates the MSE and MAE from two vectors
    """
    mse =  mean_squared_error(v1, v2)
    mae = mean_absolute_error(v1, v2)
    print("The MSE is: ", mse)
    # print("The R2 Score is: ", r2_score(v1, v2))
    print("The MAE is: ", mae)
    return mse, mae


def make_predictions(data, clf, clf_type):
    """
    Makes prediction using a trained classifier.
    Currently handles tensorflow, xgboost, and scikit-learn models
    """
    if clf_type == "tf":
        tf_dataset = tf.data.Dataset.from_tensor_slices((data)).batch(len(data))
        pred_vector = clf.predict(tf_dataset)
    elif clf_type == "xgb":
        xg_dataset = xgb.DMatrix(data)
        pred_vector = clf.predict(xg_dataset)
    else:
        pred_vector = clf.predict(data)
    return pred_vector


def expanding_inference_dataset(data, E_min, E_max, log_e, N):
    """
    Creates new data points for prediction (expands energy)
    """
    if log_e:
        # energy_range = np.log10(np.linspace(E_min, E_max, N))
        energy_range = np.linspace(E_min, E_max, N)
    else:
        energy_range = np.linspace(E_min, E_max, N)
        # energy_range = np.arange(E_min, E_max, N)
    energy_to_add = pd.DataFrame({"Energy": energy_range})
    for i in list(data.columns)[1:]:
        energy_to_add[i] = data[i].values[1]
    data = data.append(energy_to_add, ignore_index=True).sort_values(by='Energy', ascending=True)
    return data


def make_predictions_outside(df, Z, A, MT, clf, clf_type, scaler, to_scale, E_min, E_max, N, log_e=False, show=False):
    # energy_range = pd.DataFrame({"Energy":np.linspace(E_min, E_max, N), "dEnergy":0})
    # to_infer = load_exfor_newdata("", new_df=energy_range, append_exfor=True,
    #                                          df=df, Z=17, A=35, MT="MT_103", log_e=log_e)
    to_infer = load_exfor_samples(df, Z, A, MT)
    exfor = to_infer.copy()
    to_infer.drop(columns=["Data"], inplace=True)
    # to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log_e, N)
    if E_min != 0:
        to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log_e, N)
    else:
        to_infer = expanding_inference_dataset(to_infer, to_infer.Energy.min(), to_infer.Energy.max(), log_e, N)
    # exfor = load_exfor_samples(df, Z, A, MT)
    # Applying standard scaler method
    to_infer[to_scale] = scaler.transform(to_infer[to_scale])

    # Make Predictions
    y_hat = make_predictions(to_infer.values, clf, clf_type)

    # Returning features to original values for plotting
    to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
    if show:
        plt.scatter(exfor.Energy, exfor.Data, alpha=0.5, c="g")
        plt.plot(to_infer.Energy, y_hat)
        plt.yscale('log')
        plt.xscale('log')
    return y_hat

def make_predictions_w_energy(energy_path, Z, A, MT, df, clf, clf_type, scaler, to_scale, log_e=False, show=False):
    data_kwargs = {"Z":Z, "A":A, "MT":MT, "append_exfor":True, "log_e":log_e}
    to_infer = load_exfor_newdata(energy_path, df=df, **data_kwargs)
    to_infer["Energy"] = to_infer["Energy"] * 1E6

    exfor = load_exfor_samples(df, Z, A, MT)

    # Applying standard scaler method
    to_infer[to_scale] = scaler.transform(to_infer[to_scale])

    # Make Predictions
    y_hat = make_predictions(to_infer.values, clf, clf_type)

    # Returning features to original values for plotting
    to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
    if show:
        plt.scatter(exfor.Energy, exfor.Data, alpha=0.2, c="g")
        plt.plot(to_infer.Energy, y_hat)
        plt.yscale('log')
        plt.xscale('log')
    return y_hat


def predicting_nuclear_xs(df, Z, A, MT, clf, to_scale, scaler, E_min=0, E_max=0, N=0, error=False, log_e=False, clf_type=None,
    endf=empty_df, new_data=empty_df, focus=False, save=False, show=True, path="", path_add=""):
    '''
    Used to plot predictions of the clf model for specific isotope (Z, A) and runs.
    MT is the reaction type (e.g 1 is total cross section)
    E_min and E_max are the energy region in which to make additional inferences.
    '''
    # Extracting dataframe to make predictions and creating copy for evaluation
    endf_avaliable = True if endf.shape[0] != 0 else False
    new_data_avaliable = True if new_data.shape[0] != 0 else False

    to_infer = load_exfor_samples(df, Z, A, MT)
    to_plot = to_infer.copy().sort_values(by='Energy', ascending=True)
    to_infer = to_infer.drop(columns=["Data"])
    if E_min != 0:
        to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log_e, N)
    else:
        to_infer = expanding_inference_dataset(to_infer, to_infer.Energy.min(), to_infer.Energy.max(), log_e, N)

    # Applying scaler method, making prediciton, and returning df to original scale
    to_infer[to_scale] = scaler.transform(to_infer[to_scale])
    to_plot[to_scale] = scaler.transform(to_plot[to_scale])
    y_hat = make_predictions(to_infer.values, clf, clf_type)
    y_hat2 = make_predictions(to_plot.drop(columns=["Data"]).values, clf, clf_type)
    to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
    to_plot[to_scale] = scaler.inverse_transform(to_plot[to_scale])

    if show:
        # Initializing Figure and Plotting
        plt.figure(figsize=(16,10))
        alpha = 0.8
        if endf_avaliable:
            endf_eval = plt.plot(endf["Energy"], endf["Data"], alpha=alpha, c="orange", linestyle="--", label="ENDF")
        true = plt.plot(to_plot["Energy"], to_plot["Data"], alpha=alpha, c='b', label="EXFOR", linestyle="--")
        pred = plt.plot(to_infer["Energy"], y_hat, alpha=alpha, c="green", linestyle="-", label="ML", linewidth=5)
        if new_data_avaliable:
            new_data[to_scale] = scaler.transform(new_data[to_scale])
            y_hat3 = make_predictions(new_data.drop(columns=["Data"]).values, clf, clf_type)
            new_data[to_scale] = scaler.inverse_transform(new_data[to_scale])
            pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=alpha, c="green", label="ML New Data")
            unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=alpha*0.5, c="b")

        # SETTING PLOT LIMITS
        if (new_data_avaliable and endf_avaliable): #if both
            plt.legend()
            all_y = np.concatenate((to_plot["Data"].values.flatten(), y_hat[0].flatten(),
                endf["Data"].values.flatten(), new_data["Data"].values.flatten()))
            minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        elif not new_data_avaliable and endf_avaliable: # if ENDF only
            # plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
            plt.legend()
            all_y = np.concatenate((to_plot["Data"].values, y_hat[0].flatten(), y_hat2[0].flatten(), endf["Data"].values))
            minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        elif new_data_avaliable and not endf_avaliable: # if ADDITIONAL only
            # plt.legend((true, unseen, pred, pred_unseen),
            #            ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
            plt.legend()
            all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, new_data["Data"].values))
            minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        else: # if no ENDF and Additional
            # plt.legend((true, pred), ('EXFOR', "EXFOR Pred"), loc='upper left')
            plt.legend()
            all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2))
            minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        plt.title('Cross Section Inference ' + MT)
        plt.xlabel('Log10 Energy(MeV)')
        plt.ylabel('Cross Section (b)')
        plt.yscale('log')
        if log_e == False:
            plt.xscale('log')
        if save:
            plt.savefig(path, bbox_inches="tight")
        plt.show()

        # Initializing Figure and Plotting
        if focus:
            plt.figure(figsize=(16,10))
            pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=0.5, c="orange")
            unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.3, c="b")
            # unseen = plt.errorbar(new_data["Energy"], new_data["Data"], yerr=new_data["dData"], c='b', fmt='o', alpha=0.3)
            if endf.shape[0] != 0:
                endf_data = plt.plot(endf['Energy'], endf["Data"], c="g", alpha=0.3)
            plt.title('Cross Section Inference ' + MT)
            plt.xlabel('Log10 Energy(MeV)')
            plt.ylabel('Cross Section (b)')
            minimum_x = new_data["Energy"].min() - new_data["Energy"].min() * 0.001
            maximum_x = new_data["Energy"].max() + new_data["Energy"].max() * 0.001
            plt.xlim(minimum_x, maximum_x)
            plt.yscale('log')
            if endf.shape[0] != 0:
                plt.legend((pred_unseen, unseen, endf_data), ("New Pred", "New", "ENDF"), loc='upper left')
                all_y = np.concatenate((new_data["Data"].values,
                                        endf[(endf['Energy'] >= minimum_x) & (endf['Energy'] <= maximum_x)]["Data"].values,
                                        y_hat3[0].flatten()))
                print(y_hat3)
                minimum_y = all_y.min() - all_y.min() * 0.05
                maximum_y = all_y.max() + all_y.max() * 0.05
                plt.ylim(minimum_y, maximum_y)
            else:
                plt.legend((pred_unseen, unseen), ("New Pred", "New"), loc='upper left')
                all_y = np.concatenate((new_data["Data"].values, y_hat3))
                minimum_y = all_y.min() - all_y.min() * 0.05
                maximum_y = all_y.max() + all_y.max() * 0.05
                plt.ylim(minimum_y, maximum_y)
            plt.show()
            if save:
                plt.savefig(path_add, bbox_inches="tight")

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

        # Measuring metrics on predictions.
        print("ML vs EXFOR:")
        regression_error_metrics(to_plot["Data"], y_hat2)

        if new_data.shape[0] != 0:
            endf_all_int = endf.copy()
            additio_data = new_data.copy()
            indexes = np.arange(len(endf), len(endf) + len(additio_data))
            additio_data.index = indexes
            energy_interest_endf = additio_data[["Energy"]]
            energy_interest_endf["Data"] = np.nan
            endf_all_int = endf_all_int.append(energy_interest_endf, ignore_index=False)
            endf_all_int = endf_all_int.sort_values(by=['Energy'])
            endf_all_int["Data"] = endf_all_int["Data"].interpolate()

            to_infer.reset_index(drop=True, inplace=True)
            to_infer["Data"] = y_hat
            indexes_infer = np.arange(len(to_infer), len(to_infer) + len(additio_data))
            additio_data.index = indexes_infer
            energy_interest_infer = additio_data[["Energy"]]
            energy_interest_infer["Data"] = np.nan
            to_infer_all = to_infer.append(energy_interest_infer, ignore_index=False)
            to_infer_all = to_infer_all.sort_values(by=['Energy'])
            to_infer_all["Data"] = to_infer_all["Data"].interpolate()

            # Measuring metrics on predictions.
            print("NEW DATA: ENDF vs EXFOR:")
            regression_error_metrics(additio_data["Data"], endf_all_int[["Data"]].loc[indexes])


            # Measuring metrics on predictions.
            print("NEW DATA: ML vs EXFOR:")
            # regression_error_metrics(additio_data["Data"], y_hat3)
            regression_error_metrics(additio_data["Data"], to_infer_all[["Data"]].loc[indexes_infer])

    return y_hat, to_infer.Energy

# to_plot -> exfor_sample
# endf_all_int -> endf_copy

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
                sns.lineplot(endf["Energy"], endf["Data"], color="g", label="ENDF", alpha=alpha, ci=None)
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
        plt.figure(figsize=(15,10))
        if log_plot:
            plt.xscale('log')
        sns.scatterplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha, legend=False, label="EXFOR", ci=None, marker="o")
        if interpolate == True:
            sns.lineplot(exfor_sample["Energy"], exfor_sample["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
        if endf.shape[0] != 0:
            sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
        if new_data.shape[0] != 0:
            sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=1.0, legend=False, ci=None, label="Additional Data")
        if legend:
            plt.legend()
    # Setting Figure Limits
    plot_limits_exfor(exfor_sample, endf, new_data)
    plt.xlabel('Energy(eV)')
    plt.ylabel('Cross Section (b)')
    plt.yscale('log')
    if ref:
        if log_plot:
            plt.xscale('log')
    if save:
        plt.savefig(path + "EXFOR_{}_XS.png".format(exfor_sample.Target_Element_w_A.values[0]), bbox_inches='tight')
    if error:
        if endf.shape[0] != 0:
            exfor_endf = get_error_endf_exfor(endf, exfor_sample)
            if new_data.shape[0] != 0:
                exfor_endf_new_data = get_error_endf_new(endf, new_data)
            return exfor_endf



def plot_limits_exfor(exfor_sample, endf, new_data):
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
    print("ENDF vs EXFOR:")
    mse, mae = regression_error_metrics(exfor_copy["Data"], endf_copy[["Data"]].loc[indexes])

    exfor_endf = pd.DataFrame({"Energy":exfor_copy.Energy.values, 
        "EXFOR":exfor_copy["Data"].values, "ENDF":endf_copy["Data"].loc[indexes].values})
    return exfor_endf

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
    print("NEW DATA: ENDF vs EXFOR:")
    mse, mae = regression_error_metrics(new_data[["Data"]], endf_copy[["Data"]].loc[indexes])

    exfor_endf_new_data = pd.DataFrame({"Energy":new_data.Energy.values, 
        "EXFOR":new_data["Data"].values, "ENDF":endf_copy["Data"].loc[indexes].values})

    return exfor_endf_new_data
# def plot_exfor_w_references(df, Z, A, MT, nat_iso="I", new_data=empty_df, endf=empty_df, error=False,
#     save=False, interpolate=False, legend=True, alpha=0.7, one_hot=True, log_e=False, path='', ref=False):
#     # Extracting dataframe to make predictions and creating copy for evaluation
#     to_plot = load_exfor_samples(df, Z, A, MT, nat_iso=nat_iso, one_hot=one_hot)
#     # Initializing Figure and Plotting
#     plt.figure(figsize=(16,10))
#     if ref:
#         fg = sns.FacetGrid(data=to_plot[["Energy", "Data", "Reference"]], hue='Reference',
#                            hue_order=to_plot["Reference"].unique(), aspect=1.5, legend_out=False, height=10)
#         fg.map(plt.scatter, "Energy", "Data", alpha=alpha)

#         if legend:
#             fg.add_legend()
#             if interpolate == True:
#                 sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, label="Interpolation", ci=None)
#             if endf.shape[0] != 0:
#                 sns.lineplot(endf["Energy"], endf["Data"], color="g", label="ENDF", alpha=alpha, ci=None)
#             if new_data.shape[0] != 0:
#                 sns.scatterplot(new_data["Energy"], new_data["Data"], color="r",
#                                 alpha=0.5, label="New Data", ci=None)
#         else:
#             if interpolate == True:
#                 sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
#             if endf.shape[0] != 0:
#                 sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
#             if new_data.shape[0] != 0:
#                 sns.scatterplot(new_data["Energy"], new_data["Data"], legend=False, ci=None, label="Additional Data")
#     else:
#         sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=alpha, legend=False, label="EXFOR", ci=None, marker="o")
#         if interpolate == True:
#             sns.lineplot(to_plot["Energy"], to_plot["Data"], alpha=alpha*0.5, legend=False, ci=None, label="EXFOR Interpolated")
#         if endf.shape[0] != 0:
#             sns.lineplot(endf["Energy"], endf["Data"], color="orange", alpha=1.0, legend=False, ci=None, label="ENDF")
#         if new_data.shape[0] != 0:
#             sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=1.0, legend=False, ci=None, label="Additional Data")
#         if legend:
#             plt.legend()
#     # Setting Figure Limits
#     if (new_data.shape[0] != 0 and endf.shape[0] != 0): #if both
#         all_y = np.concatenate((to_plot["Data"], endf["Data"], new_data["Data"]))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
#         all_y = np.concatenate((to_plot["Data"], endf["Data"]))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
#         all_y = np.concatenate((to_plot["Data"].values, new_data["Data"].values))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     else: # if no ENDF and Additional
#         all_y = to_plot["Data"].values
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     # Formatting Figure
#     # if one_hot:
#     #     plt.title("{} Protons, {} Neutrons, {}".format(Z, A-Z, MT))
#     # else:
#     #     plt.title("{} MT = {}".format(to_plot.Target_Element_w_A.values[0], MT))
#     plt.xlabel('Energy(eV)')
#     plt.ylabel('Cross Section (b)')
#     plt.yscale('log')
#     if log_e == False:
#         plt.xscale('log')
#     if save == True:
#         plt.savefig(path + "EXFOR_{}_XS.png".format(to_plot.Target_Element_w_A.values[0]), bbox_inches='tight')


#     if error:     
        # endf_all_int = endf.copy()
        # to_plot_2 = to_plot.copy()
        # to_plot_2 = to_plot_2[to_plot_2.Energy > endf_all_int.Energy.min()]
        # # We start our index numbering after len(endf) that way it does not collide
        # indexes = np.arange(len(endf), len(endf) + len(to_plot_2))
        # # This will return a dataframe with non zero index
        # to_plot_2.index = indexes
        # # energy_interest will carry previous indexes
        # energy_interest = to_plot_2[["Energy"]]
        # energy_interest["Data"] = np.nan
        # endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
        # endf_all_int = endf_all_int.sort_values(by=['Energy'])
        # endf_all_int["Data"] = endf_all_int["Data"].interpolate(limit_direction="forward")

        # # Measuring metrics on predictions.
        # print("ENDF vs EXFOR:")
        # regression_error_metrics(to_plot_2["Data"], endf_all_int[["Data"]].loc[indexes])

        # if new_data.shape[0] != 0:
        #     endf_all_int = endf.copy()
        #     additio_data = new_data.copy()
        #     indexes = np.arange(len(endf), len(endf) + len(additio_data))
        #     additio_data.index = indexes
        #     energy_interest = additio_data[["Energy"]]
        #     energy_interest["Data"] = np.nan
        #     endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
        #     endf_all_int = endf_all_int.sort_values(by=['Energy'])
        #     endf_all_int["Data"] = endf_all_int["Data"].interpolate()

        #     # Measuring metrics on predictions.
        #     print("NEW DATA: ENDF vs EXFOR:")
        #     regression_error_metrics(additio_data[["Data"]], endf_all_int[["Data"]].loc[indexes])


# FROM 5 DT EXFOR V2
# def predicting_nuclear_xs(MT, Z, M, clf, new_data=empty_df, endf=empty_df, E_min=0, E_max=0, N=0):
#     '''
#     Used to plot predictions of the clf model for specific isotope (Z, M) and runs.
#     MT is the reaction type (e.g 1 is total cross section)
#     E_min and E_max are the energy region in which to make additional inferences.
#     '''
#     # Extracting dataframe to make predictions and creating copy for evaluation
#     to_infer = df[(df["Target_Protons"] == Z) & (df[MT] == 1) & (df["Target_Mass_Number"] == M)].sort_values(
#         by='Energy', ascending=True)
#     to_plot = to_infer.copy().sort_values(by='Energy', ascending=True)
#     to_infer = to_infer.drop(columns=["Data", "dData"])

#     if N != 0:
#         energy_range = np.linspace(np.log10(1E6*E_min), np.log10(E_max*1E6), N)
#         to_infer2 = pd.DataFrame({"Energy": energy_range})
#         for i in list(to_infer.columns)[1:]:
#             to_infer2[i] = to_infer[i].values[1]
#         to_infer = to_infer.append(to_infer2, ignore_index=True).sort_values(by='Energy', ascending=True)

#     # Applying standard scaler method
#     to_infer[to_scale] = scaler.transform(to_infer[to_scale])
#     to_plot[to_scale] = scaler.transform(to_plot[to_scale])

#     # Making Prediction with given model
#     y_hat  = clf.predict(to_infer)
#     y_hat2 = clf.predict(to_plot.drop(columns=["Data", "dData"]))

#     # Returning features to original values for plotting
#     to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
#     to_plot[to_scale] = scaler.inverse_transform(to_plot[to_scale])

#     # Initializing Figure and Plotting
#     plt.figure(figsize=(16,10))
#     if endf.shape[0] != 0:
#         endf_eval = plt.plot(endf["Energy"], endf["Data"], alpha=0.3, c="g")
#     true = plt.scatter(to_plot["Energy"], to_plot["Data"], alpha=0.3, c='b')
#     pred = plt.scatter(to_infer["Energy"], y_hat, alpha=0.5, c="orange")

#     if new_data.shape[0] != 0:
#         new_data[to_scale] = scaler.transform(new_data[to_scale])
#         y_hat3 = clf.predict(new_data.drop(columns=["Data", "dData"]))
#         new_data[to_scale] = scaler.inverse_transform(new_data[to_scale])
#         unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.3, c="b")
#         pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=0.5, c="r")
#     plt.yscale('log')
#     plt.title('Cross Section Inference ' + MT)
#     plt.xlabel('Log10 Energy(MeV)')
#     plt.ylabel('Cross Section (b)')
#     if (new_data.shape[0] != 0 and endf.shape[0] != 0): #if both
#         plt.legend((endf_eval, true, unseen, pred, pred_unseen),
#                    ('ENDF', 'EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"], new_data["Data"], y_hat3))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
#         plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"]))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
#         plt.legend((true, unseen, pred, pred_unseen),
#                    ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, new_data["Data"].values, y_hat3))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     else: # if no ENDF and Additional
#         plt.legend((true, pred), ('EXFOR', "EXFOR Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     plt.show()


#     # Initializing Figure and Plotting
#     if new_data.shape[0] != 0:
#         plt.figure(figsize=(16,10))
#         pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=0.5, c="orange")
#         # unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.5, label="New Data True", c="r")
#         unseen = plt.errorbar(new_data["Energy"], new_data["Data"], yerr=new_data["dData"], c='b', fmt='o', alpha=0.3)
#         if endf.shape[0] != 0:
#             endf_data = plt.plot(endf['Energy'], endf["Data"], c="g", alpha=0.3)
#         plt.title('Cross Section Inference ' + MT)
#         plt.xlabel('Log10 Energy(MeV)')
#         plt.ylabel('Cross Section (b)')
#         minimum_x = new_data["Energy"].min() - new_data["Energy"].min() * 0.001
#         maximum_x = new_data["Energy"].max() + new_data["Energy"].max() * 0.001
#         plt.xlim(minimum_x, maximum_x)
#         plt.yscale('log')
#         if endf.shape[0] != 0:
#             plt.legend((pred_unseen, unseen, endf_data), ("New Pred", "New", "ENDF"), loc='upper left')
#             all_y = np.concatenate((new_data["Data"].values,
#                                     endf[(endf['Energy'] >= minimum_x) & (endf['Energy'] <= maximum_x)]["Data"].values,
#                                     y_hat3))
#             minimum_y = all_y.min() - all_y.min() * 0.05
#             maximum_y = all_y.max() + all_y.max() * 0.05
#             plt.ylim(minimum_y, maximum_y)
#         else:
#             plt.legend((pred_unseen, unseen), ("New Pred", "New"), loc='upper left')
#             all_y = np.concatenate((new_data["Data"].values, y_hat3))
#             minimum_y = all_y.min() - all_y.min() * 0.05
#             maximum_y = all_y.max() + all_y.max() * 0.05
#             plt.ylim(minimum_y, maximum_y)
#         plt.show()

#     if endf.shape[0] != 0:
#         endf_all_int = endf.copy()
#         to_plot2 = to_plot.copy()
#         indexes = np.arange(len(endf), len(endf) + len(to_plot2))
#         to_plot2.index = indexes
#         energy_interest = to_plot2[["Energy"]]
#         energy_interest["Data"] = np.nan
#         endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
#         endf_all_int = endf_all_int.sort_values(by=['Energy'])
#         endf_all_int["Data"] = endf_all_int["Data"].interpolate()

#         # Measuring metrics on predictions.
#         print("ENDF vs EXFOR:")
#         print("The MSE is: ", mean_squared_error(to_plot2["Data"], endf_all_int[["Data"]].loc[indexes]))
#         print("The R2-Score is: ", r2_score(to_plot2["Data"], endf_all_int[["Data"]].loc[indexes]))

#     # Measuring metrics on predictions.
#     print("XS Tree vs EXFOR:")
#     print("The MSE is: ", mean_squared_error(to_plot["Data"], y_hat2))
#     print("The R2-Score is: ", r2_score(to_plot["Data"], y_hat2))


    # if clf_type == "tf":
    #     infer_dataset = tf.data.Dataset.from_tensor_slices(
    #         (to_infer.values)).batch(len(to_infer))
    #     to_plot_dataset = tf.data.Dataset.from_tensor_slices(
    #         (to_plot.drop(columns=["Data", "dData"]).values)).batch(len(to_plot))
    #     y_hat = clf.predict(infer_dataset)
    #     y_hat2 = clf.predict(to_plot_dataset)
    # elif clf_type == "xgb":
    #     infer_xg = xgb.DMatrix(to_infer.values)
    #     to_plot_xg = xgb.DMatrix(to_plot.drop(columns=["Data", "dData"]).values)
    #     y_hat = clf.predict(infer_xg)
    #     y_hat2 = clf.predict(to_plot_xg)
    # else:
    #     # Making Prediction with given model
    #     y_hat = clf.predict(to_infer)
    #     y_hat2 = clf.predict(to_plot.drop(columns=["Data", "dData"]))


# def plot_exfor_endf(df, protons, mass_number, MT, endf_data, new_data=empty_df,
#     error=False, log_e=False):
#     to_plot = load_exfor_samples(df, protons, mass_number, MT)
#     plt.figure(figsize=(15,10))
#     # sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=0.5, label="True", ci=None)
#     sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=0.5, label="True", ci=None, marker="o")
#     sns.lineplot(endf_data["Energy"], endf_data["Data"], alpha=0.5, label="ENDF", color='g', ci=None)
#     if new_data.shape[0] != 0:
#         sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=0.5, label="New Data", ci=None)
#     plt.title('Cl-35(n,p) SIG')
#     plt.xlabel('Energy(eV)')
#     plt.ylabel('Cross Section (b)')
#     all_y = np.concatenate((to_plot["Data"], endf_data["Data"]))
#     minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#     maximum_y = all_y.max() + all_y.max() * 0.05
#     plt.ylim(minimum_y, maximum_y)
#     plt.legend()
#     plt.yscale('log')
#     if log_e == False:
#         plt.xscale('log')
#     plt.show()

#     if error:
#         endf_all_int = endf_data.copy()
#         to_plot_2 = to_plot.copy()
#         to_plot_2 = to_plot_2[to_plot_2.Energy > endf_all_int.Energy.min()]
#         # We start our index numbering after len(endf) that way it does not collide
#         indexes = np.arange(len(endf_data), len(endf_data) + len(to_plot_2))
#         # This will return a dataframe with non zero index
#         to_plot_2.index = indexes
#         # energy_interest will carry previous indexes
#         energy_interest = to_plot_2[["Energy"]]
#         energy_interest["Data"] = np.nan
#         endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
#         endf_all_int = endf_all_int.sort_values(by=['Energy'])
#         endf_all_int["Data"] = endf_all_int["Data"].interpolate(limit_direction="forward")

#         # Measuring metrics on predictions.
#         print("ENDF vs EXFOR:")
#         regression_error_metrics(to_plot_2["Data"], endf_all_int[["Data"]].loc[indexes])

#         if new_data.shape[0] != 0:
#             endf_all_int = endf_data.copy()
#             additio_data = new_data.copy()
#             indexes = np.arange(len(endf_data), len(endf_data) + len(additio_data))
#             additio_data.index = indexes
#             energy_interest = additio_data[["Energy"]]
#             energy_interest["Data"] = np.nan
#             endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
#             endf_all_int = endf_all_int.sort_values(by=['Energy'])
#             endf_all_int["Data"] = endf_all_int["Data"].interpolate()

#             # Measuring metrics on predictions.
#             print("NEW DATA: ENDF vs EXFOR:")
#             regression_error_metrics(additio_data["Data"], endf_all_int[["Data"]].loc[indexes])


# def predicting_nuclear_xs(df, Z, A, MT, clf, to_scale, scaler, E_min=0, E_max=0, N=0, error=False, log_e=False, clf_type=None,
#     endf=empty_df, new_data=empty_df, focus=False, save=False, path="", path_add=""):
#     '''
#     Used to plot predictions of the clf model for specific isotope (Z, A) and runs.
#     MT is the reaction type (e.g 1 is total cross section)
#     E_min and E_max are the energy region in which to make additional inferences.
#     '''
#     # Extracting dataframe to make predictions and creating copy for evaluation
#     to_infer = load_exfor_samples(df, Z, A, MT)
#     to_plot = to_infer.copy().sort_values(by='Energy', ascending=True)
#     to_infer = to_infer.drop(columns=["Data"])

#     if E_min != 0:
#         to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log_e, N)
#     else:
#         to_infer = expanding_inference_dataset(to_infer, to_infer.Energy.min(), to_infer.Energy.max(), log_e, N)

#     # Applying scaler method
#     to_infer[to_scale] = scaler.transform(to_infer[to_scale])
#     to_plot[to_scale] = scaler.transform(to_plot[to_scale])
#     # Make Predictions
#     y_hat = make_predictions(to_infer.values, clf, clf_type)
#     # y_hat2 = make_predictions(to_plot.drop(columns=["Data"]).values, clf, clf_type)
#     # Returning features to original values for plotting
#     to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
#     # to_plot[to_scale] = scaler.inverse_transform(to_plot[to_scale])
#     # Initializing Figure and Plotting
#     plt.figure(figsize=(16,10))
#     if endf.shape[0] != 0:
#         endf_eval = plt.plot(endf["Energy"], endf["Data"], alpha=0.3, c="g")
#     true = plt.scatter(to_plot["Energy"], to_plot["Data"], alpha=0.3, c='b')
#     pred = plt.scatter(to_infer["Energy"], y_hat, alpha=0.5, c="orange")
#     if new_data.shape[0] != 0:
#         new_data[to_scale] = scaler.transform(new_data[to_scale])
#         y_hat3 = make_predictions(new_data.drop(columns=["Data"]).values, clf, clf_type)


#         new_data[to_scale] = scaler.inverse_transform(new_data[to_scale])
#         print(new_data["MT_103"][0])


#         unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.3, c="b")
#         pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=0.5, c="r")

#     # SETTING PLOT LIMITS
#     if (new_data.shape[0] != 0 and endf.shape[0] != 0): #if both
#         plt.legend((endf_eval, true, unseen, pred, pred_unseen),
#                    ('ENDF', 'EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='lower left')
#         all_y = np.concatenate((to_plot["Data"].values.flatten(), y_hat[0].flatten(), y_hat2[0].flatten(),
#             endf["Data"].values.flatten(), new_data["Data"].values.flatten(), y_hat3[0].flatten()))
#         # all_y = np.concatenate((to_plot["Data"].values.flatten(), y_hat[0].flatten(),
#         #     endf["Data"].values.flatten(), new_data["Data"].values.flatten(), y_hat3[0].flatten()))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
#         plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"]))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif new_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
#         plt.legend((true, unseen, pred, pred_unseen),
#                    ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, new_data["Data"].values, y_hat3))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     else: # if no ENDF and Additional
#         plt.legend((true, pred), ('EXFOR', "EXFOR Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     plt.title('Cross Section Inference ' + MT)
#     plt.xlabel('Log10 Energy(MeV)')
#     plt.ylabel('Cross Section (b)')
#     plt.yscale('log')
#     if log_e == False:
#         plt.xscale('log')
#     if save:
#         plt.savefig(path, bbox_inches="tight")
#     plt.show()

#     # Initializing Figure and Plotting
#     if focus:
#         plt.figure(figsize=(16,10))
#         pred_unseen = plt.scatter(new_data["Energy"], y_hat3, alpha=0.5, c="orange")
#         unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.3, c="b")
#         # unseen = plt.errorbar(new_data["Energy"], new_data["Data"], yerr=new_data["dData"], c='b', fmt='o', alpha=0.3)
#         if endf.shape[0] != 0:
#             endf_data = plt.plot(endf['Energy'], endf["Data"], c="g", alpha=0.3)
#         plt.title('Cross Section Inference ' + MT)
#         plt.xlabel('Log10 Energy(MeV)')
#         plt.ylabel('Cross Section (b)')
#         minimum_x = new_data["Energy"].min() - new_data["Energy"].min() * 0.001
#         maximum_x = new_data["Energy"].max() + new_data["Energy"].max() * 0.001
#         plt.xlim(minimum_x, maximum_x)
#         plt.yscale('log')
#         if endf.shape[0] != 0:
#             plt.legend((pred_unseen, unseen, endf_data), ("New Pred", "New", "ENDF"), loc='upper left')
#             all_y = np.concatenate((new_data["Data"].values,
#                                     endf[(endf['Energy'] >= minimum_x) & (endf['Energy'] <= maximum_x)]["Data"].values,
#                                     y_hat3[0].flatten()))
#             print(y_hat3)
#             minimum_y = all_y.min() - all_y.min() * 0.05
#             maximum_y = all_y.max() + all_y.max() * 0.05
#             plt.ylim(minimum_y, maximum_y)
#         else:
#             plt.legend((pred_unseen, unseen), ("New Pred", "New"), loc='upper left')
#             all_y = np.concatenate((new_data["Data"].values, y_hat3))
#             minimum_y = all_y.min() - all_y.min() * 0.05
#             maximum_y = all_y.max() + all_y.max() * 0.05
#             plt.ylim(minimum_y, maximum_y)
#         plt.show()
#         if save:
#             plt.savefig(path_add, bbox_inches="tight")

#     if error:
#         endf_all_int = endf.copy()
#         to_plot_2 = to_plot.copy()
#         to_plot_2 = to_plot_2[to_plot_2.Energy > endf_all_int.Energy.min()]
#         # We start our index numbering after len(endf) that way it does not collide
#         indexes = np.arange(len(endf), len(endf) + len(to_plot_2))
#         # This will return a dataframe with non zero index
#         to_plot_2.index = indexes
#         # energy_interest will carry previous indexes
#         energy_interest = to_plot_2[["Energy"]]
#         energy_interest["Data"] = np.nan
#         endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
#         endf_all_int = endf_all_int.sort_values(by=['Energy'])
#         endf_all_int["Data"] = endf_all_int["Data"].interpolate(limit_direction="forward")

#         # Measuring metrics on predictions.
#         print("ENDF vs EXFOR:")
#         regression_error_metrics(to_plot_2["Data"], endf_all_int[["Data"]].loc[indexes])

#         # Measuring metrics on predictions.
#         print("XS Tree vs EXFOR:")
#         regression_error_metrics(to_plot["Data"], y_hat2)

#         if new_data.shape[0] != 0:
#             endf_all_int = endf.copy()
#             additio_data = new_data.copy()
#             indexes = np.arange(len(endf), len(endf) + len(additio_data))
#             additio_data.index = indexes
#             energy_interest = additio_data[["Energy"]]
#             energy_interest["Data"] = np.nan
#             endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
#             endf_all_int = endf_all_int.sort_values(by=['Energy'])
#             endf_all_int["Data"] = endf_all_int["Data"].interpolate()

#             # Measuring metrics on predictions.
#             print("NEW DATA: ENDF vs EXFOR:")
#             regression_error_metrics(additio_data["Data"], endf_all_int[["Data"]].loc[indexes])

#             # Measuring metrics on predictions.
#             print("NEW DATA: ENDF vs EXFOR:")
#             regression_error_metrics(additio_data["Data"], y_hat3)


# def predicting_nuclear_xs_e(MT, Z, M, clf, scaler, E_min=0.01, E_max=475000):1.20E6, 1.5E7
def predicting_nuclear_xs_e(MT, Z, M, clf, scaler, E_min=0.01, E_max=475000):
    '''
    Used to plot predictions of the clf model for specific isotope (Z, M) and runs.
    MT is the reaction type (e.g 1 is total cross section)
    E_min and E_max are the energy region in which to make additional inferences.
    '''
    # --- Extracting dataframe to make predictions and
    #     Copying dataframe to apply model metrics
    to_infer = df[(df["Target_Protons"] == Z) & (df[MT] == 1) & (df["Target_Mass_Number"] == M)][["Energy", "Data"]]
    to_plot = to_infer.copy().sort_values(by='Energy', ascending=True)

    # Dropping Data (XS) for inference
    # Creating additional points to plot based on energy range given
    energy_range = np.linspace(np.log10(1E6*E_min), np.log10(E_max*1E6), 100)
    to_infer = to_infer.drop(columns=["Data"]).append(pd.DataFrame({"Energy": energy_range}), ignore_index=True).sort_values(by='Energy', ascending=True)

    # Applying standard scaler method
    to_infer["Energy"] = scaler.transform(to_infer[["Energy"]])
    to_plot["Energy"] = scaler.transform(to_plot[["Energy"]])

    # Making Prediction with given model
    y_hat  = clf.predict(to_infer)
    y_hat_2 = clf.predict(to_plot.drop(columns=["Data"]))

    # Returning features to original values for plotting
    to_infer[["Energy"]] = scaler.inverse_transform(to_infer[["Energy"]])
    to_plot[["Energy"]] = scaler.inverse_transform(to_plot[["Energy"]])

    # Initializing Figure and Plotting
    plt.figure(figsize=(15,10))
    pred = plt.scatter(to_infer["Energy"], y_hat, alpha=0.5)
    true = plt.scatter(to_plot["Energy"], to_plot["Data"], alpha=0.3)

    unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.5, label="New Data")

    plt.ylim(1E-5, 1.5E1)
    plt.yscale('log')
    plt.title('Cl-35 Cross Section ' + MT)
    plt.xlabel('Energy(eV)')
    plt.ylabel('Cross Section (b)')

    plt.legend((pred, true, unseen), ('Predicted', 'True', "New"), loc='upper left')
    plt.xscale('log')
    plt.show()

    # Measuring metrics on predictions.
    print("The MSE is: ", mean_squared_error(to_plot["Data"], y_hat_2))
    print("The R2-Score is: ", r2_score(to_plot["Data"], y_hat_2))

def DistributionPlot(RedFunction, BlueFunction, RedName, BlueName, Title):
    ''' Flexibly plot a univariate distribution of observations. '''
    plt.figure(figsize=(12, 10))
    ax1 = sns.distplot(RedFunction, hist=False, color="r", label=RedName)
    ax2 = sns.distplot(BlueFunction, hist=False, color="b", label=BlueName, ax=ax1)
    plt.yscale('log')
    plt.xscale('log')
    plt.title(Title)
    plt.xlabel('Cross Section (b)')
    plt.ylabel('Proportion of Data')
    plt.show()