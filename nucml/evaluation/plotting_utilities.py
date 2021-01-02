import matplotlib.pyplot as plt
import seaborn as sns
import sys
import os

sys.path.append("..")

import nucml.datasets as nuc_data 

sns.set(font_scale=2)
sns.set_style('white')

z_order_dict = {"endf":1, "new_data":2, "exfor":3, "tendl":4, "jendl":5, "jeff":6}
def plot(ELAAA, MT, exfor=None, exclude=[], new_data=None, new_data_label="", save=False, save_dir="", z_order_dict=z_order_dict, 
    mode="neutrons", mev_to_ev=True, mb_to_b=True, drop_u=True):
    """Creates plot for a specific isotope of all avaliable evaluations if needed. It is possible to 
    exclude some evaluations if needed. New data can be added to the plot directly.

    Args:
        ELAAA (str): ELAAA formatted isotope string (i.e. Cl35, u235).
        MT ([type]): reaction channel to query. Must be an integer (i.e. 1, 2)
        exfor (DataFrame, optional): dataframe to plot along evaluations. Defaults to None.
        exclude (list, optional): list of evaluations to exclude from plot. The avaliable evaluations 
            include endfb8.0, jendl4.0, jeff3.3, and tendl.2019. Defaults to [].
        new_data (DataFrame, optional): dataframe containing new data or extra data to plot. Defaults to None.
        new_data_label (str, optional): if new_data is being passed, a label for the legend needs to be provided. Defaults to "".
        save (bool, optional): if True, the figure will be saved. Defaults to False.
        save_dir (str, optional): directory on where to save the generated plot. Defaults to "".
        z_order_dict (dict, optional): dictionary containing the order on which to plot evaluations. For example,
            z_order_dict = {"endf":1, "new_data":2, "exfor":3, "tendl":4, "jendl":5, "jeff":6} will plot the endf 
            first followed by the new data if avaliable and so on. Defaults to z_order_dict.
        mode (str, optional): which type of projectile is to be extracted. Only options include 
            "neutrons" and "protons". Defaults to "neutrons".
        mev_to_ev (bool, optional): converts energy from MeV to eV. Defaults to True.
        mb_to_b (bool, optional): converts cross section from millibarns to barns. Defaults to True.
        drop_u (bool, optional): drops uncertainty features from the endf dataframe. Defaults to True.
    """

    endf = nuc_data.load_evaluation(ELAAA, MT, mode=mode, library="endfb8.0", mev_to_ev=mev_to_ev, mb_to_b=mb_to_b, drop_u=drop_u, log=False)
    tendl = nuc_data.load_evaluation(ELAAA, MT, mode=mode, library="tendl.2019", mev_to_ev=mev_to_ev, mb_to_b=mb_to_b, drop_u=drop_u, log=False)
    jendl = nuc_data.load_evaluation(ELAAA, MT, mode=mode, library="jendl4.0", mev_to_ev=mev_to_ev, mb_to_b=mb_to_b, drop_u=drop_u, log=False)
    jeff = nuc_data.load_evaluation(ELAAA, MT, mode=mode, library="jeff3.3", mev_to_ev=mev_to_ev, mb_to_b=mb_to_b, drop_u=drop_u, log=False)

    plt.figure(figsize=(14,9))
    if exfor is not None:
        plt.loglog(exfor.Energy, exfor.Data, label="EXFOR", zorder=z_order_dict["exfor"])
    if new_data is not None:
        plt.scatter(new_data.Energy, new_data.Data, label=new_data_label, zorder=z_order_dict["new_data"])
    if endf is not None and "endf" not in exclude:
        plt.loglog(endf.Energy, endf.Data, label="ENDF/B-VIII", zorder=z_order_dict["endf"])
    if tendl is not None and "tendl" not in exclude and "all" not in exclude:
        plt.loglog(tendl.Energy, tendl.Data, label="TENDL 2019", zorder=z_order_dict["tendl"])
    if jendl is not None and "jendl" not in exclude and "all" not in exclude:
        plt.loglog(jendl.Energy, jendl.Data, label="JENDL 4.0", zorder=z_order_dict["jendl"])
    if jeff is not None and "jeff" not in exclude and "all" not in exclude:
        plt.loglog(jeff.Energy, jeff.Data, label="JEFF 3.3", zorder=z_order_dict["jeff"]) 
    plt.xlabel('Energy (eV)')
    plt.ylabel('Cross Section (b)')
    plt.legend()
    if save:
        if exfor is not None:
            save_name = "{}_{}_Evaluated_XS_w_EXFOR.png".format(ELAAA, MT)
        else:
            save_name = "{}_{}_Evaluated_XS.png".format(ELAAA, MT)
        plt.savefig(os.path.join(save_dir, save_name), bbox_inches='tight', dpi=600)
    
