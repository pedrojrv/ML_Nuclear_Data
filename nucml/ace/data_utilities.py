import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import re
import math
from pathlib import Path


empty_df = pd.DataFrame()
ace_dir = os.path.abspath("../../../../Documents/Serpent/xsdata/endfb7/acedata")



def get_to_skip_lines(element, temp="03c", ace_dir=ace_dir):
    """This utility returns the path to the corresponding ace file for a given element.
    It also returns the number of lines to skip to get to the data block belonging to 
    the given energy and the number of lines corresponding to that block.

    Beware, the temperature needs to match one in the ACE files.

    Args:
        element (str): element in ZZAAA format.
        temp (str, optional): temperature in ace format (i.e. 03c means 300C). Defaults to "03c".
        ace_dir (str, optional): path-like string indicating directory where ace files are stored. Defaults to ace_dir.

    Returns:
        :rtype: (str, int, int)
    """
    path = Path(os.path.join(ace_dir, element + "ENDF7.ace"))
    if path.is_file():
        with open(path, "r") as ace_file:
            points = []
            indexes = []
            for index, line in enumerate(ace_file):
                if line.startswith(" " + element + "."): 
                    points.append(line[1:10])
                    indexes.append(index)
                    
        to_skip = indexes[points.index(element + "." + temp)]
        lines = indexes[points.index(element + "." + temp) + 1] - to_skip - 12

        return path, to_skip, lines
    else:
        return None, None, None


def get_nxs_jxs_xss(element, temp="03c", ace_dir=ace_dir):
    """Retrieves the NSX, JXS, and XSS tables for a given element at a given temperature
    The NSX has 16 integers:
        First: the number of elements in the XSS array.
    The JSX DataFrame indicates the indices to the XSS where different pieces of data begin.
    The XSS table contains the actual data.

    Args:
        element (str): element in ZZAAA format.
        temp (str, optional): temperature in ace format (i.e. 03c means 300C). Defaults to "03c".
        ace_dir (str, optional): path-like string indicating directory where .ace files are stored. Defaults to ace_dir.

    Returns:
        :rtype: (DataFrame, DataFrame, array)
    """    
    path, to_skip, lines = get_to_skip_lines(element, temp=temp, ace_dir=ace_dir)
    if path != None:
        nxs = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+6, nrows=2, header=None) # .values.flatten()
        jxs = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+8, nrows=4, header=None)
        xss = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+12, nrows=lines, header=None).values.flatten()
        # xss = xss[~np.isnan(xss)] # ALL CROSS SECTIONS, FIRST VALUES BELONG TO MT1, 2, 101
        return nxs, jxs, xss
    else:
        return None, None, None

def get_nxs_dictionary(nxs_df):
    """Given the extracted NSX DataFrame, this function will return a key:value dictionary
    of the values in the NSX in accordance to the documentation of ACE formatting. 

    Args:
        nxs_df (DataFrame): The NSX DataFrame extracted using the get_nxs_jxs_xss() function.

    Returns:
        dict: dictionary containing the NSX results.
    """    
    nxs_dict = {
        "XSS_Length": nxs_df.iloc[0,0],
        "ZZAAA": nxs_df.iloc[0,1],
        "Num_Energies": nxs_df.iloc[0,2],
        "NTR": nxs_df.iloc[0,3],
        "NR": nxs_df.iloc[0,4],
        "NTRP": nxs_df.iloc[0,5],
        "NPCR": nxs_df.iloc[0,7],
        "S": nxs_df.iloc[1,0],
        "Z": nxs_df.iloc[1,1],
        "A": nxs_df.iloc[1,2],
    }
    return nxs_dict

def get_jxs_dictionary(jxs_df):
    """Given the extracted JXS DataFrame, this function will return a key:value dictionary
    of the values in the JXS in accordance to the documentation of ACE formatting.

    JXS are mostly indexes in the XSS array to indicate the beggining of a data type. 

    Args:
        jxs_df (DataFrame): The JXS DataFrame extracted using the get_nxs_jxs_xss() function.

    Returns:
        dict: dictionary containing the JXS results.
    """    
    jxs_dict = {
        "E_Table": jxs_df.iloc[0,0],
        "Fis_v_Data": jxs_df.iloc[0,1],
        "MT_Array": jxs_df.iloc[0,2],
        "Q_value_Array": jxs_df.iloc[0,3],
        "Rx_Type_Array": jxs_df.iloc[0,4],
        "XS_Loc_Table": jxs_df.iloc[0,5],
        "XS": jxs_df.iloc[0,6],
        "Ang_Dist_Loc": jxs_df.iloc[0,7],
        "Ang_Dist": jxs_df.iloc[1,0],
        "E_Dist_Loc": jxs_df.iloc[1,1],
        "E_Dist": jxs_df.iloc[1,2],
        "Photon_Prod_Data": jxs_df.iloc[1,3],
        "Photon_Prod_MT_Array": jxs_df.iloc[1,4],
        "Photon_Prod_XS_Loc": jxs_df.iloc[1,5],
        "Photon_Prod_XS": jxs_df.iloc[1,6],
        "Photon_Prod_Ang_Dist_Loc": jxs_df.iloc[1,7],
        "Photon_Prod_Ang_Dist": jxs_df.iloc[2,0],
        "Photon_Prod_E_Dist_Loc": jxs_df.iloc[2,1],
        "Photon_Prod_E_Dist": jxs_df.iloc[2,2],
        "Yield_Mult_Table": jxs_df.iloc[2,3],
        "Tot_Fis_XS": jxs_df.iloc[2,4],
        "Last_Word": jxs_df.iloc[2,5],
        "Probability_Tab": jxs_df.iloc[2,6],
        "Delayed_v_Data": jxs_df.iloc[2,7],
        "Basic_Delayed_Neut_Precursor_Data": jxs_df.iloc[3,0],
        "Delayed_Neut_E_Dist_Loc": jxs_df.iloc[3,1],
    }
    return jxs_dict

def get_pointers(nxs, jxs):
    """Gets generall information from NXS and JXS needed to start manipulating 
    cross sections. This includes several pointers for Energy, MT Array, LSIG, 
    SIG, and Fission. 

    The MT Array is an array containing all reactions avaliable in the XSS Array.
    The LSIG contains the same number of items as the MT Array. The LSIG points
    correspond to the index on the XSS array belonging to the corresponding MT Array.

    Args:
        nxs (dict): dictionary obtained using the get_nxs_dictionary()
        jxs (dict): dictionary obtained using the get_jxs_dictionary()

    Returns:
        :rtype: (int, int, int, int, int, int, int)
    """    
    nxs_dict = get_nxs_dictionary(nxs)
    jxs_dict = get_jxs_dictionary(jxs)

    # NSX: basic information 
    nes = nxs_dict["Num_Energies"] # NES: Number of Energy points (3)
    ntr = nxs_dict["NTR"]          # NTR: Number of reaction types excluding elastic scattering MT2 (4)

    # JSX These are the indexes in the continuous array where stuff starts
    energy_pointer = jxs_dict["E_Table"] - 1              # ESZ (1) ENERGY TABLE POINTER
    mt_pointer =jxs_dict["MT_Array"] - 1                  # MTR (3) MT ARRAY POINTER
    xs_pointers = jxs_dict["XS_Loc_Table"] - 1            # LSIG (6) TABLE OF XS LOCATORS/POINTERS
    xs_table_pointer = jxs_dict["XS"] - 1                 # SIG (7) CROSS SECTION ARRAY POINTER
    mt_18_pointer = (jxs_dict["Tot_Fis_XS"] - 1).clip(0)  # FIS (21) FISSION POINTER
    
    return nes, ntr, energy_pointer, mt_pointer, xs_pointers, xs_table_pointer, mt_18_pointer

def get_energy_array(xss, energy_pointer, nes):
    """Returns the energy grid given the XSS and needed pointers.

    Args:
        xss (np.array): an array containing all information including energy points.
        energy_pointer (int): integer indicating the index at which the energy grid begins.
        nes (int): the number of energy points expected.

    Returns:
        np.array: numpy array containing the energy grid values.
    """    
    energies = xss[energy_pointer : energy_pointer + nes]   # ENERGY TABLE ARRAY
    return energies

def get_mt_array(xss, mt_pointer, ntr):
    """Returns the avaliable MT reactions given the XSS and needed pointers.

    Args:
        xss (np.array): an array containing all information including the mt array.
        mt_pointer (int): integer indicating the index at which the mt array begins.
        ntr (int): the number of mt reactions excluding MT2.

    Returns:
        np.array: numpy array containing the MT values values.
    """    
    mt_array = xss[mt_pointer : mt_pointer + ntr]           # MT TABLE ARRAY
    return mt_array

def get_mt_xs_pointers_array(xss, xs_pointers, ntr):
    """Returns the XS pointers for each MT reaction in the MT array.

    Args:
        xss (np.array): an array containing all information including the XS pointers.
        xs_pointers (int): integer indicating the index at which the XS pointer begins.
        ntr (int): the number of mt reactions excluding MT2 wich corresponds directly
            to the number of XS pointers avaliable.

    Returns:
        np.array: numpy array containing the XS pointers grid values.
    """    
    mt_xs_pointers_array = xss[xs_pointers : xs_pointers + ntr].astype(int) # CROSS SECTION TABLE ARRAY
    return mt_xs_pointers_array

def get_mt_array_w_pointers(mt_array, mt_xs_pointers_array):
    """Returns a dictionary with the avaliable MT reactions as keys and the 
    cross section pointers as values. 

    Args:
        mt_array (np.array): array containing the MT reactions.
        mt_xs_pointers_array (np.array): array containing the XS pointers.

    Returns:
        dict: dictionary containing the mt_array:xs_pointer key:value pairs. 
    """    
    mt_pointer_dict = {}
    for A, B in zip(mt_array, mt_xs_pointers_array):
        mt_pointer_dict[A] = B
    return mt_pointer_dict
    
def get_basic_mts(xss, nes):
    """The MT1, MT101, MT2, and MT3 are not part of the MT array. The XS values
    start inmediatly after the energy points. Since these reactions energy grid 
    are the entire "Energy Grid" then there as as many XS values as there are 
    Energy values which is given by the NES (number of energy points).

    Args:
        xss (np.array): array containing all the information including the energy grid.
        nes (int): the number of energy points avaliable in the XSS array.

    Returns:
        :rtype: (np.array, np.array, np.array, np.array)
    """    
    mt1 = xss[nes:nes*2]
    mt101 = xss[nes*2:nes*3]
    mt2 = xss[nes*3:nes*4]
    mt3 = mt1 - mt2
    return mt1, mt2, mt3, mt101


def get_xs_for_mt(MT, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss, verbose=True):
    """Returns cross section values, the corresponding energy points, and the indexes corresponding
    the starting and end point in the xss array.

    When extracting the array belonging to an MT reaction the first and second value

    Args:
        MT (int): MT number for which to query the cross section values.
        mt_array (np.array): the np.array of the mt reactions avaliable in the ace file.
        mt_xs_pointers_array (np.array): array indicating the indexes where the MT reactions begin in the xss array.
        xs_table_pointer (int): index at which the XS values start in the xss array.
        jxs (DataFrame): dataframe containing the JXS values
        xss (np.array): array containing all information directly from the .ace file
        verbose (bool, optional): to or not to print statements througout the process. Defaults to True.

    Returns:
        :rtype: (np.array, np.array, int, int)
    """
    mt_index = np.where(mt_array==MT)[0][0]                                 # GET INDEX FOR REACTION TYPE MT
    if MT == mt_array[-1]:                                                  # IF REQUESTED MT IS THE LAST ONE ON TABLE 
        start_index = xs_table_pointer + mt_xs_pointers_array[mt_index] - 1 # TABLE BEGINS + NUMBER OF ITEMS ACCORDING TO LSIG 
        end_index = jxs_df.iloc[0,7] - 1                                    # ENDING INDEX
        mt_data = xss[start_index: end_index]               
    else:
        start_index = xs_table_pointer + mt_xs_pointers_array[mt_index] - 1 
        end_index = xs_table_pointer + mt_xs_pointers_array[mt_index + 1] - 1
        mt_data = xss[start_index: end_index]
    
    # THE FIRST AND SECOND VALUE CORRESPOND TO ENERGY INDEX AND POINTS
    energy_index = int(mt_data[0])   # START INDEX IN ENERGY ARRAY FOR MT REACTION
    energy_points = int(mt_data[1])  # NUMBER OF ENERGY POINTS FROM START INDEX 
    energy_array = xss[energy_index - 1 : energy_index + energy_points - 1] 
    xs_data = mt_data[2:]            # ACTUAL ARRAY BELONGING TO MT REACTION CHANNEL 
    if verbose:
        print("{} Energy and {} Cross Section Points Avaliable for MT{}.".format(len(energy_points), len(xs_data), str(int(MT))))
    return xs_data, energy_array, start_index, end_index


def fill_ml_xs(MT, ml_xs, ace_xs):
    """Utility function used by the get_merged() function to fill in the head and tail
    of a set of cross section values. 

    Args:
        MT (int): endf mt reaction value for which to adjust the xs. 
        ml_xs (DataFrame): the dataframe containing the MT reaction to adjust.
        ace_xs (np.array): array containing the ace cross sections to fill in the ml_xs dataframe.

    Returns:
        DataFrame: adjusted ML cross sections dataframe.
    """
    # FILLS VALUES IN ML DERIVED XS WHERE ALGORITHM IS UNABLE TO PERFORM (1/V AND TAIL)
    # FOR ALL VALUES THE SAME AS THE FIRST AND LAST ONE SUBSTITUTE FOR EQUIVALENT VALUE IN ENERGY IN ACE XS
    ml_xs.loc[0:ml_xs[ml_xs[MT] == ml_xs[MT].values[0]].shape[0], MT] = ace_xs[
        0:ml_xs[ml_xs[MT] == ml_xs[MT].values[0]].shape[0]+1]
    ml_xs.iloc[-ml_xs[ml_xs[MT] == ml_xs[MT].values[-1]].shape[0]:, ml_xs.columns.get_loc(MT)] = ace_xs[
        -ml_xs[ml_xs[MT] == ml_xs[MT].values[-1]].shape[0] - 1:-1]
    return ml_xs

def get_corrected_ml_xs(ml_df, basic_mt_dict, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss):
    """Substitutes the ACE MT values in a machine learning generate dataframe containing a set of
    reaction channels. For MT1, MT2, and MT3 we fix the 1/v and tail region of each cross section.
    ML models like KNN and DT are coarse and sometimes unable to accuratly keep predicting a given 
    trend. For this we:

    Previously get_merged_df()

    Args:
        ml_df (DataFrame): contains the ML generated predictions under each columned named "Data_MT".
        basic_mt_dict (DICT): a dicitonary containing MT1, MT2, MT3, and MT101 ({"mt1":values, "mt2":...})
        mt_array (np.array): contains the mt reactions avaliable in the .ace file.
        mt_xs_pointers_array (np.array): contains the mt XS pointers in the xss array.
        xs_table_pointer (int): index at which XS's start in the xss array.
        jxs_df (DataFrame): the dataframe obtained using the get_nxs_jxs_xss() function.
        xss (np.array): array containing all information in the .ace file.

    Returns:
        DataFrame: merged dataframe containing all ML and ACE reaction values
    """    
    for i in list(ml_df.columns)[1:]:
        if i == "Data_1":
            ml_df = fill_ml_xs(i, ml_df, basic_mt_dict["mt1"])
        elif i == "Data_2":
            ml_df = fill_ml_xs(i, ml_df, basic_mt_dict["mt2"])
        elif i == "Data_3":
            ml_df = fill_ml_xs(i, ml_df, basic_mt_dict["mt3"])
        else:
            MT = re.sub("[^0-9]", "", i)
            sig, _, _, _ = get_xs_for_mt(int(MT), mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss)
            ml_df = fill_ml_xs(i, ml_df, sig)
    return ml_df

def create_mt(rx_grid, MT, mt_array):
    """Helps with the creation of MT3 and MT101 which requires them to be the summation of other MT reactions.

    Args:
        rx_grid (DataFrame): dataframe containing the grid by which to adjust the mt. This is usually the energy grid.
        MT (int): mt reaction for which to create the adjusted MT values
        mt_array (np.array): array containing the MT values avaliable. Not all MT values will be avaliable.

    Returns:
        DataFrame: resulting dataframe containing the adjusted MT values.
    """
    df = pd.DataFrame(index=rx_grid.index)
    df[MT] = 0
    if MT == "Data_3":
        for i in [4, 5, 11, 16, 17, 18, 22, 23, 24, 25, 26, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
                  41, 42, 44, 45, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117]:
            if i in mt_array:
                df[MT] = df[MT].values + rx_grid["Data_" + str(i)].values
        return df
    elif MT == "Data_101":
        for i in np.linspace(102, 117, 117-102 + 1).astype(int):
            if i in mt_array:
                df[MT] = df[MT].values + rx_grid["Data_" + str(i)].values
        return df 


def get_final_ml_ace_df(energies, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss, ml_df, ml_list):
    """Given a set of ML generated XS (adjusted), this function allows to fill in other reaction channels not included
    by ML. This is useful since for some calculations some MT reactions are not required but are still present
    in the ace files. This allows to preserve the ACE file values. 

    For MT3 the ML generated cross sections are adjusted so that conservation rules are not broken. Same for MT101. 
    All values will be at the energy grid specified by the energies array.  

    Notice that MT2 is not calculated here. You need to use the adjust_mt1_mt2() function.

    TODO: DEAL WITH MT3 BETTER IN CASE IT IS GENERATED BY ML, WHAT ELSE TO ADJUST

    Args:
        energies (np.array): array containing the energy values at which the ML generated values are created.
        mt_array (np.array): array containing all mt reactions avaliable in ACE.
        mt_xs_pointers_array (np.array): pointers for every reaction in the MT array in the XSS array.
        xs_table_pointer (int): index of xxs at which the XS values start.
        jxs_df (DataFrame): the dataframe containing the JXS table. 
        xss (np.array): array containing all info for a specific ace file. 
        ml_df (DataFrame): dataframe containing the ML generated cross sections. 
        ml_list (list): list containing the ML generated column names that should not be modified at any point.

    Returns:
        DataFrame: the dataframe containing the resulting cross sections from both ML and ACE.
    """
    Energy_Grid = pd.DataFrame({"Energy": energies})
    Energy_Grid = Energy_Grid.set_index("Energy")

    for i in mt_array:
        # we get the ace cross sections and add them to our main dataframe some are not going to have the 
        # same energy grid as mt1 so we fill missing values with 0
        xs, en, _, _ = get_xs_for_mt(i, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss, verbose=False)
        to_add = pd.DataFrame({"Energy": en, "Data_" + str(int(i)): xs})
        to_add = to_add.set_index("Energy")
        Energy_Grid = pd.merge(Energy_Grid, to_add, left_index=True, right_index=True, how="outer") 
    Energy_Grid = Energy_Grid.fillna(value=0)
    
    for i in ml_list:
        # Once the ace XS are in a dataframe we can substitute the ace xs by those of ml 
        Energy_Grid[i] = ml_df[i].values
    
    # MT3 and MT101 are dependant on a bunch of other MTs, we need to adjust them in order for 
    # the conservation rules to be mantained.
    Energy_Grid["Data_3"] = create_mt(Energy_Grid, "Data_3", mt_array)
    Energy_Grid["Data_101"] = create_mt(Energy_Grid, "Data_101", mt_array)
    return Energy_Grid


def adjust_mt1_mt2(ml_ace_df):
    """Creates MT2 XS and adjusts MT1 accordingly.

    Calculates MT2 by substracting MT3 from MT1. If MT2 is negative:
    - Replace negatives with NaN
    - Interpolates from closests values
    - Adds back amount to MT1 to conserve XS.

    TODO: INTRODUCE THIS FUNCTION TO THE get_final_ml_ace_df()

    Args:
        ml_ace_df (DataFram): DataFrame containing the original MT1, MT2, and MT3.

    Returns:
        DataFrame: returns an adjusted dataframe.
    """    
    adjusting_mt1 = pd.DataFrame({"Data_1":ml_ace_df.Data_1.values, "Data_3":ml_ace_df.Data_3.values})
    adjusting_mt1["Data_2"] = adjusting_mt1.Data_1.values - adjusting_mt1.Data_3.values
    
    # neg_ix = adjusting_mt1[adjusting_mt1.Data_2 < 0].index.tolist()
    adjusting_mt1["Data_2"] = adjusting_mt1["Data_2"].apply(lambda x: x if x > 0 else -1)
    adjusting_mt1 = adjusting_mt1.replace(to_replace=-1, value=np.nan)
    adjusting_mt1 = adjusting_mt1.interpolate()
    adjusting_mt1["Data_1_int"] = adjusting_mt1["Data_2"] + adjusting_mt1["Data_3"]
    adjusting_mt1["Data_1_to_add"] = adjusting_mt1["Data_1_int"] - adjusting_mt1["Data_1"]
    adjusting_mt1["Data_1_Final"] = adjusting_mt1["Data_1"] + adjusting_mt1["Data_1_to_add"]
    
    ml_ace_df["Data_1"] = adjusting_mt1["Data_1_Final"].values
    ml_ace_df["Data_2"] = adjusting_mt1["Data_2"].values

    return ml_ace_df


def modify_mt_ace(ml_list, xss, ml_ace_df, nes, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df):
    """Returns a modified XSS array. It substitutes the MT reactions in ml_list in the original ACE xss array.
    The resulting xss can then be used to create a new .ace file for use in monte carlo or deterministic codes.

    Args:
        ml_list (list): list of mt reactions to substitute in the original ACE xss.
        xss (np.array): original xss .ace array.
        ml_ace_df (DataFrame): the dataframe containing all modified and unmodified MT values.
        nes (int): number of energy points in the original .ace file.
        mt_array (np.array): array containing the avaliable mt values in the .ace file.
        mt_xs_pointers_array (np.array): indexes where the XS starts in the xss array for each MT value.
        xs_table_pointer (int): index at which the XS values begin.
        jxs_df (DataFrame): the JXS dataframe from the .ACE file.

    Returns:
        np.array: modified xss array.
    """    
    for i in ml_list:
        if i == 1:
            xss[nes:nes*2] = ml_ace_df["Data_" + str(i)].values
        elif i == 2:
            xss[nes*3:nes*4] = ml_ace_df["Data_" + str(i)].values
        elif i == 101:
            xss[nes*2:nes*3] = ml_ace_df["Data_" + str(i)].values
        else:
            _, _, start, end = get_xs_for_mt(i, mt_array, mt_xs_pointers_array, xs_table_pointer, jxs_df, xss)
            # We sum up 2 since the first are just energy pointers
            xss[start + 2 : end] = ml_ace_df["Data_" + str(i)].values
            
    if (len(xss)/4 - len(xss)//4)/0.25 == 0:
        print("It is wokring")
    elif 4 - (len(xss)/4 - len(xss)//4)/0.25 == 3:
        xss = np.append(xss, (np.nan, np.nan, np.nan))
    elif 4 - (len(xss)/4 - len(xss)//4)/0.25 == 2:
        xss = np.append(xss, (np.nan, np.nan))
    elif 4 - (len(xss)/4 - len(xss)//4)/0.25 == 1:
        xss = np.append(xss, (np.nan))
        
    return xss

def parsing_datatypes(x):
    """Utility function to correctly format numbers before writing them to new .ACE file.

    Args:
        x (float): number to format.

    Returns:
        float: formatted value.
    """    
    if math.isnan(x):
        return ""
    elif x - int(x) == 0:
        return "{:20}".format(int(x))
    else:
        return "{:20.11E}".format(x)

def creating_new_ace(xss, ZZAAA, saving_dir=""):
    """Generates a new .ACE file ready to be used in transport codes. Everything is
    encoded in the XSS array. The header is to be kept the same since different energy 
    arrays are not supported. 

    Args:
        xss (np.array): modified xss array.
        ZZAAA (int): ZZAAA formatted element for which to create modified .ACE file.
        saving_dir (str): path-like string on where to save the created .ACE file.

    Returns:
        None
    """    
    # ACE FILES ARE IN FOUR COLUMNS SO WE RESHAPE OUR XSS ARRAY
    to_write = pd.DataFrame(xss.reshape((-1,4)))
    to_write.columns = ["column_1", "column_2", "column_3", "column_4"]
    to_write = to_write.astype("object")
    to_write = to_write.applymap(parsing_datatypes)
    
    ace_name = ZZAAA + "ENDF7"
    tmp_file = os.path.join(saving_dir, ace_name + "_TMP.txt")
    tmp_file_2 = os.path.join(saving_dir, ace_name + "_TMP2.txt")
    ml_ace_filename = os.path.join(saving_dir, ace_name + "_ML.ace")

    to_write.to_csv(tmp_file, float_format="%.11E", sep="\t", index=False, header=False)
    with open(tmp_file) as fin, open(tmp_file_2, 'w') as fout:
        for line in fin:
            fout.write(line.replace('\t', ''))
            
    path, to_skip, line_count = get_to_skip_lines(ZZAAA)
    
    with open(path, 'r') as ace, open(ml_ace_filename, 'w') as new_ace, open(tmp_file_2, 'r') as new_data:
        ace_lines = ace.readlines()
        new_lines = new_data.readlines()
        for i, line in enumerate(ace_lines):
            if (i < to_skip + 12):
                new_ace.write(line)
        for i, line in enumerate(new_lines):
            new_ace.write(line)
        for i, line in enumerate(ace_lines):
            if (i > to_skip + line_count + 12 - 1):
                new_ace.write(line)
    
    os.remove(tmp_file)
    os.remove(tmp_file_2)
    
    return None

################################################################################################
################################################################################################

################################################################################################
################################################################################################

def get_energies(element, temp="03c", ace_dir=ace_dir, ev=False, log=False):
    nxs, jxs, xss = get_nxs_jxs_xss(element, temp="03c", ace_dir=ace_dir)
    if nxs is not None:
        nes, _, energy_pointer, _, _, _, _ = get_pointers(nxs, jxs)
        energies = xss[energy_pointer : energy_pointer + nes]   # ENERGY TABLE ARRAY
        if ev:
            energies = energies * 1E6
        if log:
            energies = np.log10(energies)
        return energies
    else:
        return empty_df

# def get_energies_mt_lsig(xss, energy_pointer, nes, mt_pointer, ntr, xs_pointers):
#     # XSS is the array contining ALL information
#     energies = xss[energy_pointer : energy_pointer + nes]   # ENERGY TABLE ARRAY
#     mt_array = xss[mt_pointer : mt_pointer + ntr]           # MT TABLE ARRAY
#     lsig = xss[xs_pointers : xs_pointers + ntr].astype(int) # CROSS SECTION TABLE ARRAY
#     return energies, mt_array, lsig

# def get_mt1_mt2_mt3_mt101(xss, nes):
#     mt1 = xss[nes:nes*2]
#     mt101 = xss[nes*2:nes*3]
#     mt2 = xss[nes*3:nes*4]
#     mt3 = mt1 - mt2
#     return mt1, mt2, mt3, mt101

# def parsing_datatypes_2(x):
#     x[0] = parsing_datatypes(x[0])
#     x[1] = parsing_datatypes(x[1])
#     x[2] = parsing_datatypes(x[2])
#     x[3] = parsing_datatypes(x[3])
#     return x[0], x[1], x[2], x[3]

# def formating_new_xss(xss):
#     to_write = pd.DataFrame(xss.reshape((-1,4)))
#     column_names_4 = ["column_1", "column_2", "column_3", "column_4"]
#     to_write.columns = column_names_4
#     to_write = to_write.astype("object")
    
#     # to_write[column_names_4] = to_write[column_names_4].apply(parsing_datatypes_2, axis=1, result_type="expand")
#     to_write = to_write.applymap(parsing_datatypes)

# def get_to_skip_lines(element, temp="03c", ace_dir=ace_dir):
#     path = os.path.join(ace_dir, element + "ENDF7.ace")
#     with open(path, "r") as ace_file:
#         points = []
#         indexes = []
#         for index, line in enumerate(ace_file):
#             if line.startswith(" " + element + "."): 
#                 points.append(line[1:10])
#                 indexes.append(index)
                
#     to_skip = indexes[points.index(element + "." + temp)]
#     lines = indexes[points.index(element + "." + temp) + 1] - to_skip - 12

#     return path, to_skip, lines