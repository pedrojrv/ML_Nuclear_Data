import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import xgboost as xgb
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error, median_absolute_error
import seaborn as sns
sns.set_style("darkgrid")



def plot_levels_axh(protons, neutrons, df, save=False):
    to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
        by='Level_Number', ascending=False)
    plt.figure(figsize=(10,15))
    for i in to_plot["Level_Energy"].values:
        plt.axhline(i, c="r", alpha=0.7)
    plt.title('{} Protons, {} Neutrons'.format(protons, neutrons))
    plt.ylabel('Energy (MeV)')
    plt.xticks([], [])
    if save == True:
        plt.savefig(figure_dir + 'ENSDF_{}_AXH_Level_Density.png'.format(to_plot.Element_w_A.iloc[0]), bbox_inches='tight')
    
def plot_levels_sctr(protons, neutrons, df):
    to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
        by='Level_Number', ascending=False)
    plt.figure(figsize=(15,10))
    sns.scatterplot(to_plot["Level_Number"], to_plot["Level_Energy"], alpha=0.5, label="True")
    plt.title('{} Protons, {} Neutrons'.format(protons, neutrons))
    plt.ylabel('Energy (MeV)')
    
# def plot_levels_density(protons, neutrons, binning, df):
#     binning = []
#     binning.extend(np.arange(0,14,0.2))
#     to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
#         by='Level_Number', ascending=False)
#     plt.figure(figsize=(15,10))
        
#     count, division = np.histogram(to_plot.Level_Energy, bins=binning)
#     to_plot.Level_Energy.hist(bins=division)

#     plt.title('{} Protons, {} Neutrons'.format(protons, neutrons))
#     plt.xlabel('Energy (MeV)')


def plot_level_density(protons, neutrons, df, df2=pd.DataFrame(), save=False):
    to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
        by='Level_Number', ascending=True)
    plt.figure(figsize=(15,10))
    to_plot["N"] = np.cumsum(to_plot.Level_Number)
    plt.plot(to_plot.Level_Energy, to_plot.N, c='blue', label="Adopted")
    if df2.shape[0] != 0:
        to_plot_2 = df2[(df2["Protons"] == protons) & (df2["Neutrons"] == neutrons)].sort_values(
            by='Level_Number', ascending=True)
        to_plot_2["N"] = np.cumsum(to_plot_2.Level_Number)
        plt.plot(to_plot_2.Level_Energy, to_plot_2.N, c='green', label="Cut-Off")
    plt.yscale('log')
    plt.title("Level Density for {}: {} Protons, {} Neutrons".format(to_plot.Element_w_A.iloc[0] ,protons, neutrons))
    plt.ylabel("N (Number of Levels)")
    plt.legend()
    plt.xlabel("Energy (MeV)")
    if save == True:
        plt.savefig(figure_dir + 'ENSDF_{}_Level_Density.png'.format(to_plot.Element_w_A.iloc[0]), bbox_inches='tight')


def predicting_nuclear_levels(df, df2, protons, neutrons, clf, scaler, to_scale, N=0, adopted=False, 
                          tf_dataset=False, save=False, name="None", xg=False, show=True):
    ''' 
    Used to plot predictions of the clf model for specific isotope (Z, N).
    '''
    # Extracting dataframe to make predictions and creating copy for evaluation
    to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
        by='Level_Number', ascending=True).drop(columns=["Element_w_A"])
    to_infer = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
        by='Level_Number', ascending=True).drop(
        columns=["Level_Energy", "Element_w_A", "Level_Energy_SQRT", "Level_Number_SQRT"])

    # Level Density is the sames as to_infer with expanded nuclear levels
    if N != 0:
        last_level = to_plot.Level_Number.iloc[-1]
        level_range = np.arange(last_level, last_level + N , 1)
        to_infer2 = pd.DataFrame({"Level_Number": level_range})
        for i in list(to_infer.columns)[1:]:
                to_infer2[i] = to_infer[i].values[1]
        to_infer = to_infer.append(to_infer2, ignore_index=True).sort_values(
            by='Level_Number', ascending=True)
        level_density_df = to_infer.copy()
        print("To infer shape is ", to_infer.shape)
        
    # to_plot_2 is the non-cut off dataframe
    if adopted == True:
        to_plot_2 = df2[(df2["Protons"] == protons) & (df2["Neutrons"] == neutrons)].sort_values(
            by='Level_Number', ascending=True).drop(columns=["Element_w_A"])
        print("To plot 2 shape is ", to_plot_2.shape)
    
    # Applying standard scaler method 
    to_infer[to_scale] = scaler.transform(to_infer[to_scale])
    
    if tf_dataset:
        infer_dataset = tf.data.Dataset.from_tensor_slices(
            (to_infer.values)).batch(len(to_infer))
        y_hat  = clf.predict(infer_dataset)
    elif xg:
        infer_xg = xgb.DMatrix(to_infer.values)
        y_hat = clf.predict(infer_xg)
    else:
        y_hat = clf.predict(to_infer)

    # Returning features to original values for plotting
    to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
        
    # Initializing Figure and Plotting 
    plt.figure(figsize=(16,10))
    true = plt.scatter(to_plot["Level_Number"], to_plot["Level_Energy"], alpha=0.3, c='r')
    if adopted == True:
        adopted_plot = plt.scatter(to_plot_2["Level_Number"], to_plot_2["Level_Energy"], alpha=0.3, c='b')
    pred = plt.scatter(to_infer["Level_Number"], y_hat.flatten(), alpha=0.5, label="Pred", c="g")
    plt.title('{} Protons, {} Neutrons'.format(protons, neutrons))
    plt.ylabel('Level Energy (MeV)')
    plt.xlabel('Level Number')
    if adopted == True:
        plt.legend((true, adopted_plot, pred), ('ENSDF Cut-Off', "ENSDF Adopted","NN ENSDF Pred"), loc='upper left')
        all_y = np.concatenate((to_plot["Level_Energy"], y_hat.flatten(),to_plot_2["Level_Energy"]))
    else:
        plt.legend((true, pred), ('ENSDF Cut-Off',"NN ENSDF Pred"), loc='upper left')    
        all_y = np.concatenate((to_plot["Level_Energy"], y_hat.flatten()))
    minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
    maximum_y = all_y.max() + all_y.max() * 0.05
    plt.ylim(minimum_y, maximum_y)
    if save == True:
        plt.title(name)
        plt.savefig("./Figures/ENSDF/ENSDF_{}_Discrete_Levels.png".format(name), bbox_inches="tight")
    if show == False:
        plt.close()
    
    if N != 0:
        print("XS Tree vs EXFOR:")
        print("The MSE is: ", mean_squared_error(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
        print("The R2-Score is: ", r2_score(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
        print("The MAE is: ", mean_absolute_error(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
        print("The Median-AE is: ", median_absolute_error(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
    else:
        print("XS Tree vs EXFOR:")
        print("The MSE is: ", mean_squared_error(to_plot["Level_Energy"], y_hat.flatten()))
        print("The R2-Score is: ", r2_score(to_plot["Level_Energy"], y_hat.flatten()))    
        print("The MAE is: ", mean_absolute_error(to_plot["Level_Energy"], y_hat.flatten()))
        print("The Median-AE is: ", median_absolute_error(to_plot["Level_Energy"], y_hat.flatten()))

    if (N != 0 and adopted == True):
        plt.figure(figsize=(15,10))
        level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
        to_plot["N"] = np.cumsum(to_plot.Level_Number)
        to_plot_2["N"] = np.cumsum(to_plot_2.Level_Number)
        plt.plot(to_plot.Level_Energy, to_plot.N, c='red', label="Cut-Off", linestyle="-")
        plt.plot(to_plot_2.Level_Energy, to_plot_2.N, c='blue', label="Adopted", linestyle="--")
        plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted", linestyle=":")
        plt.yscale('log')
        plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
        plt.ylabel("N (Number of Levels)")
        plt.legend()
        plt.xlabel("Energy (MeV)") 
    elif (N != 0 and adopted == False):
        plt.figure(figsize=(15,10))
        level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
        plt.plot(to_plot.Level_Energy, to_plot.Level_Number, c='red', label="Cut-Off")
        plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted")
        plt.yscale('log')
        plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
        plt.ylabel("N (Number of Levels)")
        plt.legend()
        plt.xlabel("Energy (MeV)")    
    else:
        plt.figure(figsize=(15,10))
        level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
        plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted")
        plt.yscale('log')
        plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
        plt.ylabel("N (Number of Levels)")
        plt.legend()
        plt.xlabel("Energy (MeV)")  
    if save == True:
        plt.title(name)
        plt.savefig("./Figures/ENSDF/ENSDF_{}_Level_Density.png".format(name), bbox_inches="tight")
    if show == False:
        plt.close()  
    return y_hat




def DistributionPlot(RedFunction, BlueFunction, RedName, BlueName, Title):
    ''' Flexibly plot a univariate distribution of observations. '''
    plt.figure(figsize=(12, 10))
    ax1 = sns.distplot(RedFunction, hist=False, color="r", label=RedName)
    ax2 = sns.distplot(BlueFunction, hist=False, color="b", label=BlueName, ax=ax1)
    plt.yscale('log')
    plt.xscale('log')
    plt.title(Title)
    plt.xlabel('Level Energy (MeV)')
    plt.ylabel('Proportion of Data')
    plt.show()



# def predicting_nuclear_xs(protons, neutrons, clf, N=0, adopted=False, tf_dataset=False):
#     ''' 
#     Used to plot predictions of the clf model for specific isotope (Z, N).
#     '''
#     # Extracting dataframe to make predictions and creating copy for evaluation
#     to_plot = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
#         by='Level_Number', ascending=True).drop(columns=["Element_w_A"])
#     to_infer = df[(df["Protons"] == protons) & (df["Neutrons"] == neutrons)].sort_values(
#         by='Level_Number', ascending=True).drop(columns=["Level_Energy", "Element_w_A"])
    
#     if N != 0:
#         last_level = to_plot.Level_Number.iloc[-1]
#         level_range = np.arange(last_level, last_level + N , 1)
#         to_infer2 = pd.DataFrame({"Level_Number": level_range})
#         for i in list(to_infer.columns)[1:]:
#                 to_infer2[i] = to_infer[i].values[1]
#         to_infer = to_infer.append(to_infer2, ignore_index=True).sort_values(by='Level_Number', ascending=True)
#         level_density_df = to_infer.copy()
        
#     if adopted == True:
#         to_plot_2 = df2[(df2["Protons"] == protons) & (df2["Neutrons"] == neutrons) & (df2["Level_Number"] >= last_level)].sort_values(
#             by='Level_Number', ascending=True).drop(
#             columns=["Element_w_A"])
    
#     # Applying standard scaler method 
#     to_infer[to_scale] = scaler.transform(to_infer[to_scale])
        
#     infer_dataset = tf.data.Dataset.from_tensor_slices(
#         (to_infer.values)).batch(len(to_infer))
#     y_hat  = clf.predict(infer_dataset)

#     # Returning features to original values for plotting
#     to_infer[to_scale] = scaler.inverse_transform(to_infer[to_scale])
        
#     # Initializing Figure and Plotting 
#     plt.figure(figsize=(16,10))
#     true = plt.scatter(to_plot["Level_Number"], to_plot["Level_Energy"], alpha=0.3, c='r')
#     if adopted == True:
#         adopted_plot = plt.scatter(to_plot_2["Level_Number"], to_plot_2["Level_Energy"], alpha=0.3, c='b')
#     pred = plt.scatter(to_infer["Level_Number"], y_hat.flatten(), alpha=0.5, label="Pred", c="g")
#     plt.title('{} Protons, {} Neutrons'.format(protons, neutrons))
#     plt.ylabel('Level Energy (MeV)')
#     plt.xlabel('Level Number')
#     if adopted == True:
#         plt.legend((true, adopted_plot, pred), ('ENSDF Cut-Off', "ENSDF Adopted","NN ENSDF Pred"), loc='upper left')    
#     else:
#         plt.legend((true, pred), ('ENSDF Cut-Off',"NN ENSDF Pred"), loc='upper left')    
#     all_y = np.concatenate((to_plot["Level_Energy"], y_hat.flatten()))
#     minimum_y = all_y[all_y > 0].min() - all_y[all_y > 0].min() * 0.05 
#     maximum_y = all_y.max() + all_y.max() * 0.05
#     plt.ylim(minimum_y, maximum_y)
#     plt.show()
    
#     if N != 0:
#         print("XS Tree vs EXFOR:")
#         print("The MSE is: ", mean_squared_error(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
#         print("The R2-Score is: ", r2_score(to_plot["Level_Energy"], y_hat.flatten()[:last_level]))
#     else:
#         print("XS Tree vs EXFOR:")
#         print("The MSE is: ", mean_squared_error(to_plot["Level_Energy"], y_hat.flatten()))
#         print("The R2-Score is: ", r2_score(to_plot["Level_Energy"], y_hat.flatten()))    

#     if (N != 0 and adopted == True):
#         plt.figure(figsize=(15,10))
#         level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
#         plt.plot(to_plot.Level_Energy, to_plot.Level_Number, c='red', label="Cut-Off")
#         plt.plot(to_plot_2.Level_Energy, to_plot_2.Level_Number, c='blue', label="Adopted")
#         plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted")
#         plt.yscale('log')
#         plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
#         plt.ylabel("N (Number of Levels)")
#         plt.legend()
#         plt.xlabel("Energy (MeV)")         
#     elif (N != 0 and adopted == False):
#         plt.figure(figsize=(15,10))
#         level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
#         plt.plot(to_plot.Level_Energy, to_plot.Level_Number, c='red', label="Cut-Off")
#         plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted")
#         plt.yscale('log')
#         plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
#         plt.ylabel("N (Number of Levels)")
#         plt.legend()
#         plt.xlabel("Energy (MeV)")      
#     else:
#         plt.figure(figsize=(15,10))
#         level_density_df["N"] = np.cumsum(level_density_df.Level_Number)
#         plt.plot(y_hat.flatten(), level_density_df.N, c='green', label="Predicted")
#         plt.yscale('log')
#         plt.title("Level Density for: {} Protons, {} Neutrons".format(protons, neutrons))
#         plt.ylabel("N (Number of Levels)")
#         plt.legend()
#         plt.xlabel("Energy (MeV)")  