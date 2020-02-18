import pandas as pd
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
import xgboost as xgb

def load_exfor(datapath, numerical=False, plotting_df=False, give_split=False, frac=0.2, norm=False, log_e=False):
    print("Reading data into dataframe...")
    df = pd.read_csv(datapath, dtype=dtype_exfor)
    print("Data read into dataframe!")

    df = df[~(df.Energy == 0)]
    df = df.dropna()

    if plotting_df:
        df_plotting = df.copy()

    if log_e:
        print("Transforming Energy to Log10(Energy)...")
        df["Energy"] = np.log10(df["Energy"])
        df["dEnergy"] = np.log10(df["dEnergy"])
    if numerical:
        print("Converting data to numerical...")
        columns_drop = ["Reaction_Notation", "Title", "Institute", "Date", "Reference", "Out", "Target_Element", 
                        "Target_Element_w_A", "Compound_EL"]
        df = df.drop(columns=columns_drop)      

        cat_cols = ["Target_Meta_State", "MT", "I78", "Product_Meta_State", "Frame", "Target_Flag", 
                    "Target_Origin", "Compound_Origin"]
        df = pd.concat([df, pd.get_dummies(df[cat_cols])], axis=1).drop(columns=cat_cols)

        df = df[~((df["Target_Protons"] == 17) & (df["MT_103"] == 1) & 
            (df["Target_Mass_Number"] == 35) & (df["Year"] < 1962))]
        df = df.drop(columns=["Year"])

    if give_split:
        print("Splitting dataset into training and testing...")
        x_train, x_test, y_train, y_test = train_test_split(
            df.drop(["Data", "dData"], axis=1), df["Data"], test_size=frac)
        if norm:
            # Specify columns to scale
            print("Normalizing dataset..")
            to_scale = list(x_train.columns)[:66]
            scaler = preprocessing.StandardScaler().fit(x_train[to_scale])
            # energy_scaler = preprocessing.StandardScaler().fit(x_train[["Energy"]])
            x_train[to_scale] = scaler.transform(x_train[to_scale])
            x_test[to_scale] = scaler.transform(x_test[to_scale])
        print("Finished.")
        return df, df_plotting, x_train, x_test, y_train, y_test, to_scale, scaler
    else:
        print("Finished")
        return df, df_plotting


def load_exfor_samples(df, protons, mass_number, MT):
    sample = df[(df["Target_Protons"] == protons) & (df[MT] == 1) & 
                (df["Target_Mass_Number"] == mass_number)].sort_values(by='Energy', ascending=True)
    return sample

def load_exfor_newdata(datapath, append_exfor=False, df=pd.DataFrame(), protons=0, 
    mass_number=0, MT="MT_1", log_e=False):
    new_data = pd.read_csv(datapath)
    if log_e:
        new_data["Energy"] = np.log10(new_data["Energy"])
    if append_exfor:
        isotope_exfor = load_exfor_samples(df, protons, mass_number, MT)
        for i in list(isotope_exfor.columns)[4:]:
            new_data[i] = isotope_exfor[i].values[1]
    return new_data


def plot_exfor_endf(df, protons, mass_number, MT, endf_data, new_data=pd.DataFrame(), 
    error_metrics=False, log_e=False):
    to_plot = load_exfor_samples(df, protons, mass_number, MT)
    plt.figure(figsize=(15,10))
    # sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=0.5, label="True", ci=None)
    sns.scatterplot(to_plot["Energy"], to_plot["Data"], alpha=0.5, label="True", ci=None, marker="o")
    sns.lineplot(endf_data["Energy"], endf_data["Data"], alpha=0.5, label="ENDF", color='g', ci=None)
    if new_data.shape[0] != 0:
        sns.scatterplot(new_data["Energy"], new_data["Data"], alpha=0.5, label="New Data", ci=None)
    plt.title('Cl-35(n,p) SIG')
    plt.xlabel('Energy(eV)')
    plt.ylabel('Cross Section (b)')
    all_y = np.concatenate((to_plot["Data"], endf_data["Data"]))
    minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
    maximum_y = all_y.max() + all_y.max() * 0.05
    plt.ylim(minimum_y, maximum_y)
    plt.legend()
    plt.yscale('log')
    if log_e == False:
        plt.xscale('log')
    plt.show()
    
    if error_metrics:
        endf_all_int = endf_data.copy()
        to_plot_2 = to_plot.copy()
        to_plot_2 = to_plot_2[to_plot_2.Energy > endf_all_int.Energy.min()]
        # We start our index numbering after len(endf) that way it does not collide
        indexes = np.arange(len(endf_data), len(endf_data) + len(to_plot_2))
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
            endf_all_int = endf_data.copy()
            additio_data = new_data.copy()
            indexes = np.arange(len(endf_data), len(endf_data) + len(additio_data))
            additio_data.index = indexes
            energy_interest = additio_data[["Energy"]]
            energy_interest["Data"] = np.nan
            endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
            endf_all_int = endf_all_int.sort_values(by=['Energy'])
            endf_all_int["Data"] = endf_all_int["Data"].interpolate()

            # Measuring metrics on predictions.
            print("NEW DATA: ENDF vs EXFOR:")
            regression_error_metrics(additio_data["Data"], endf_all_int[["Data"]].loc[indexes])




def predicting_nuclear_xs(df, MT, Z, M, clf, to_scale, scaler, additional_data=pd.DataFrame(), 
    endf=pd.DataFrame(), E_min=0, E_max=0, N=0, error_metrics=False, log_e=False, clf_type=None):
    ''' 
    Used to plot predictions of the clf model for specific isotope (Z, M) and runs.
    MT is the reaction type (e.g 1 is total cross section)
    E_min and E_max are the energy region in which to make additional inferences.
    '''
    # Extracting dataframe to make predictions and creating copy for evaluation
    to_infer = load_exfor_samples(df, Z, M, MT)
    to_plot = to_infer.copy().sort_values(by='Energy', ascending=True)
    to_infer = to_infer.drop(columns=["Data", "dData"])

    if N != 0:
        to_infer = expanding_inference_dataset(to_infer, E_min, E_max, log_e)
    
    # Applying standard scaler method 
    to_infer[to_scale] = scaler.transform(to_infer[to_scale])
    to_plot[to_scale] = scaler.transform(to_plot[to_scale])
    # Make Predictions
    y_hat = make_predictions(to_infer.values, clf_type)
    y_hat2 = make_predictions(to_plot.drop(columns=["Data", "dData"]).values, clf_type)
    # Returning features to original values for plotting
    to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
    to_plot[to_scale] = scaler.inverse_transform(to_plot[to_scale])
    # Initializing Figure and Plotting 
    plt.figure(figsize=(16,10))
    if endf.shape[0] != 0:
        endf_eval = plt.plot(endf["Energy"], endf["Data"], alpha=0.3, c="g")
    true = plt.scatter(to_plot["Energy"], to_plot["Data"], alpha=0.3, c='b')
    pred = plt.scatter(to_infer["Energy"], y_hat, alpha=0.5, c="orange")
    if additional_data.shape[0] != 0:
        additional_data[to_scale] = scaler.transform(additional_data[to_scale])
        y_hat3 = make_predictions(additional_data.drop(columns=["Data", "dData"]).values, clf_type)
        additional_data[to_scale] = scaler.inverse_transform(additional_data[to_scale])
        unseen = plt.scatter(additional_data["Energy"], additional_data["Data"], alpha=0.3, c="b")
        pred_unseen = plt.scatter(additional_data["Energy"], y_hat3, alpha=0.5, c="r")

    # SETTING PLOT LIMITS
    if (additional_data.shape[0] != 0 and endf.shape[0] != 0): #if both 
        plt.legend((endf_eval, true, unseen, pred, pred_unseen),
                   ('ENDF', 'EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='lower left')
        all_y = np.concatenate((to_plot["Data"].values.flatten(), y_hat[0].flatten(), y_hat2[0].flatten(), 
            endf["Data"].values.flatten(), additional_data["Data"].values.flatten(), y_hat3[0].flatten()))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif additional_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
        plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
        all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"]))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    elif additional_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
        plt.legend((true, unseen, pred, pred_unseen), 
                   ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
        all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, additional_data["Data"].values, y_hat3))
        minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
        maximum_y = all_y.max() + all_y.max() * 0.05
        plt.ylim(minimum_y, maximum_y)
    else: # if no ENDF and Additional
        plt.legend((true, pred), ('EXFOR', "EXFOR Pred"), loc='upper left')    
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
    plt.show()
    
    
    # Initializing Figure and Plotting
    if additional_data.shape[0] != 0:
        plt.figure(figsize=(16,10))
        pred_unseen = plt.scatter(additional_data["Energy"], y_hat3, alpha=0.5, c="orange")
        unseen = plt.scatter(additional_data["Energy"], additional_data["Data"], alpha=0.3, c="b")  
        # unseen = plt.errorbar(additional_data["Energy"], additional_data["Data"], yerr=additional_data["dData"], c='b', fmt='o', alpha=0.3)
        if endf.shape[0] != 0:
            endf_data = plt.plot(endf['Energy'], endf["Data"], c="g", alpha=0.3)
        plt.title('Cross Section Inference ' + MT)
        plt.xlabel('Log10 Energy(MeV)')
        plt.ylabel('Cross Section (b)')
        minimum_x = additional_data["Energy"].min() - additional_data["Energy"].min() * 0.001
        maximum_x = additional_data["Energy"].max() + additional_data["Energy"].max() * 0.001
        plt.xlim(minimum_x, maximum_x)
        plt.yscale('log')
        if endf.shape[0] != 0:
            plt.legend((pred_unseen, unseen, endf_data), ("New Pred", "New", "ENDF"), loc='upper left')
            all_y = np.concatenate((additional_data["Data"].values,
                                    endf[(endf['Energy'] >= minimum_x) & (endf['Energy'] <= maximum_x)]["Data"].values,
                                    y_hat3[0].flatten()))
            print(y_hat3)
            minimum_y = all_y.min() - all_y.min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        else:
            plt.legend((pred_unseen, unseen), ("New Pred", "New"), loc='upper left')
            all_y = np.concatenate((additional_data["Data"].values, y_hat3))
            minimum_y = all_y.min() - all_y.min() * 0.05
            maximum_y = all_y.max() + all_y.max() * 0.05
            plt.ylim(minimum_y, maximum_y)
        plt.show()
    
    
    if error_metrics:
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
        print("XS Tree vs EXFOR:")
        regression_error_metrics(to_plot["Data"], y_hat2)
        
        if additional_data.shape[0] != 0:        
            endf_all_int = endf.copy()
            additio_data = additional_data.copy()
            indexes = np.arange(len(endf), len(endf) + len(additio_data))
            additio_data.index = indexes
            energy_interest = additio_data[["Energy"]]
            energy_interest["Data"] = np.nan
            endf_all_int = endf_all_int.append(energy_interest, ignore_index=False)
            endf_all_int = endf_all_int.sort_values(by=['Energy'])
            endf_all_int["Data"] = endf_all_int["Data"].interpolate()

            # Measuring metrics on predictions.
            print("NEW DATA: ENDF vs EXFOR:")
            regression_error_metrics(additio_data["Data"], endf_all_int[["Data"]].loc[indexes])
            
            # Measuring metrics on predictions.
            print("NEW DATA: ENDF vs EXFOR:")
            regression_error_metrics(additio_data["Data"], y_hat3)



def regression_error_metrics(v1, v2):
    print("The MSE is: ", mean_squared_error(v1, v2))
    print("The R2 Score is: ", r2_score(v1, v2))
    print("The MAE is: ", mean_absolute_error(v1, v2))

def make_predictions(data, clf_type):
    if clf_type == "tf":
        tf_dataset = tf.data.Dataset.from_tensor_slices((data)).batch(len(data))
        pred_vector = clf.predict(tf_dataset)
    elif clf_type == "xgb":
        xg_dataset = xgb.DMatrix(data)
        pred_vector = clf.predict(xg_dataset)
    else:
        pred_vector = clf.predict(data)
    return pred_vector

def expanding_inference_dataset(data, E_min, E_max, log_e):
    if log_e:
        energy_range = np.log10(np.linspace(E_min, E_max, N))
    else:
        energy_range = np.linspace(E_min, E_max, N)
    energy_to_add = pd.DataFrame({"Energy": energy_range})
    for i in list(data.columns)[1:]:
        energy_to_add[i] = data[i].values[1]
    data = data.append(energy_to_add, ignore_index=True).sort_values(by='Energy', ascending=True)
    return data


# df.dtypes.apply(lambda x: x.name).to_dict()
dtype_exfor = {'MT': 'category',
            'Energy': 'float64',
            'dEnergy': 'float64',
            'Data': 'float64',
            'dData': 'float64',
            'ELV/HL': 'float64',
            'dELV/HL': 'float64',
            'I78': 'category',
            'Target_Protons': 'int32',
            'Product_Meta_State': 'category',
            'Frame': 'category',
            'Reaction_Notation': 'category',
            'Title': 'category',
            'Year': 'int32',
            'Institute': 'category',
            'Date': 'int32',
            'Reference': 'category',
            'Out': 'category',
            'Target_Neutrons': 'int32',
            'Target_Mass_Number': 'int32',
            'Target_Element': 'category',
            'Target_Flag': 'category',
            'Target_Element_w_A': 'category',
            'Target_Radius': 'float64',
            'Target_Neut_Rad_Ratio': 'float64',
            'Target_Origin': 'category',
            'Target_Mass_Excess': 'float64',
            'Target_dMass_Excess': 'float64',
            'Target_Binding_Energy': 'float64',
            'Target_dBinding_Energy': 'float64',
            'Target_B_Decay_Energy': 'float64',
            'Target_dB_Decay_Energy': 'float64',
            'Target_Atomic_Mass_Micro': 'float64',
            'Target_dAtomic_Mass_Micro': 'float64',
            'Target_S(2n)': 'float64',
            'Target_dS(2n)': 'float64',
            'Target_S(2p)': 'float64',
            'Target_dS(2p)': 'float64',
            'Target_S(n)': 'float64',
            'Target_dS(n)': 'float64',
            'Target_S(p)': 'float64',
            'Target_dS(p)': 'float64',
            'Compound_Neutrons': 'int32',
            'Compound_Mass_Number': 'int32',
            'Compound_Protons': 'int32',
            'Compound_EL': 'category',
            'Compound_Origin': 'category',
            'Compound_Mass_Excess': 'float64',
            'Compound_dMass_Excess': 'float64',
            'Compound_Binding_Energy': 'float64',
            'Compound_dBinding_Energy': 'float64',
            'Compound_B_Decay_Energy': 'float64',
            'Compound_dB_Decay_Energy': 'float64',
            'Compound_Atomic_Mass_Micro': 'float64',
            'Compound_dAtomic_Mass_Micro': 'float64',
            'Compound_S(2n)': 'float64',
            'Compound_dS(2n)': 'float64',
            'Compound_S(2p)': 'float64',
            'Compound_dS(2p)': 'float64',
            'Compound_S(n)': 'float64',
            'Compound_dS(n)': 'float64',
            'Compound_S(p)': 'float64',
            'Compound_dS(p)': 'float64'}

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

# FROM 5 DT EXFOR V2
# def predicting_nuclear_xs(MT, Z, M, clf, additional_data=pd.DataFrame(), endf=pd.DataFrame(), E_min=0, E_max=0, N=0):
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

#     if additional_data.shape[0] != 0:
#         additional_data[to_scale] = scaler.transform(additional_data[to_scale])
#         y_hat3 = clf.predict(additional_data.drop(columns=["Data", "dData"]))
#         additional_data[to_scale] = scaler.inverse_transform(additional_data[to_scale])
#         unseen = plt.scatter(additional_data["Energy"], additional_data["Data"], alpha=0.3, c="b")
#         pred_unseen = plt.scatter(additional_data["Energy"], y_hat3, alpha=0.5, c="r")
#     plt.yscale('log')
#     plt.title('Cross Section Inference ' + MT)
#     plt.xlabel('Log10 Energy(MeV)')
#     plt.ylabel('Cross Section (b)')
#     if (additional_data.shape[0] != 0 and endf.shape[0] != 0): #if both 
#         plt.legend((endf_eval, true, unseen, pred, pred_unseen),
#                    ('ENDF', 'EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"], additional_data["Data"], y_hat3))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif additional_data.shape[0] == 0 and endf.shape[0] !=0: # if ENDF only
#         plt.legend((endf_eval, true, pred), ('ENDF', 'EXFOR', "EXFOR Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"], y_hat, y_hat2, endf["Data"]))
#         minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
#         maximum_y = all_y.max() + all_y.max() * 0.05
#         plt.ylim(minimum_y, maximum_y)
#     elif additional_data.shape[0] != 0 and endf.shape[0] == 0: # if ADDITIONAL only
#         plt.legend((true, unseen, pred, pred_unseen), 
#                    ('EXFOR', "New Measurments", "EXFOR Pred", "New Pred"), loc='upper left')
#         all_y = np.concatenate((to_plot["Data"].values, y_hat, y_hat2, additional_data["Data"].values, y_hat3))
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
#     if additional_data.shape[0] != 0:
#         plt.figure(figsize=(16,10))
#         pred_unseen = plt.scatter(additional_data["Energy"], y_hat3, alpha=0.5, c="orange")
#         # unseen = plt.scatter(new_data["Energy"], new_data["Data"], alpha=0.5, label="New Data True", c="r")  
#         unseen = plt.errorbar(additional_data["Energy"], additional_data["Data"], yerr=additional_data["dData"], c='b', fmt='o', alpha=0.3)
#         if endf.shape[0] != 0:
#             endf_data = plt.plot(endf['Energy'], endf["Data"], c="g", alpha=0.3)
#         plt.title('Cross Section Inference ' + MT)
#         plt.xlabel('Log10 Energy(MeV)')
#         plt.ylabel('Cross Section (b)')
#         minimum_x = additional_data["Energy"].min() - additional_data["Energy"].min() * 0.001
#         maximum_x = additional_data["Energy"].max() + additional_data["Energy"].max() * 0.001
#         plt.xlim(minimum_x, maximum_x)
#         plt.yscale('log')
#         if endf.shape[0] != 0:
#             plt.legend((pred_unseen, unseen, endf_data), ("New Pred", "New", "ENDF"), loc='upper left')
#             all_y = np.concatenate((additional_data["Data"].values,
#                                     endf[(endf['Energy'] >= minimum_x) & (endf['Energy'] <= maximum_x)]["Data"].values,
#                                     y_hat3))
#             minimum_y = all_y.min() - all_y.min() * 0.05
#             maximum_y = all_y.max() + all_y.max() * 0.05
#             plt.ylim(minimum_y, maximum_y)
#         else:
#             plt.legend((pred_unseen, unseen), ("New Pred", "New"), loc='upper left')
#             all_y = np.concatenate((additional_data["Data"].values, y_hat3))
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