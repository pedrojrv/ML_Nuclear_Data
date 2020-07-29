import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import re
import math
from pathlib import Path


empty_df = pd.DataFrame()
ace_dir = os.path.abspath("../../../Documents/Serpent/xsdata/endfb7/acedata")


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

def get_to_skip_lines(element, temp="03c", ace_dir=ace_dir):
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


def get_nsx_jxs_xss(element, temp="03c", ace_dir=ace_dir):
    path, to_skip, lines = get_to_skip_lines(element, temp=temp, ace_dir=ace_dir)
    if path != None:
        nsx = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+6, nrows=2, header=None) # .values.flatten()
        jxs = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+8, nrows=4, header=None)
        xss = pd.read_csv(path, delim_whitespace=True, skiprows=to_skip+12, nrows=lines, header=None).values.flatten()
        xss = xss[~np.isnan(xss)] # ALL CROSS SECTIONS, FIRST VALUES BELONG TO MT1, 2, 101
        return nsx, jxs, xss
    else:
        return None, None, None


def get_pointers(nsx, jxs):
    # NSX: basic information 
    nes = nsx.iloc[0,2] # NES: Number of Energy points (3)
    ntr = nsx.iloc[0,3] # NTR: Number of reaction types excluding elastic scattering MT2 (4)

    # JSX These are the indexes in the continuous array where stuff starts
    energy_pointer = jxs.iloc[0,0] - 1           # ESZ (1) ENERGY TABLE POINTER
    mt_pointer = jxs.iloc[0,2] - 1               # MTR (3) MT ARRAY POINTER
    xs_pointers = jxs.iloc[0,5] - 1              # LSIG (6) TABLE OF XS LOCATORS/POINTERS
    xs_table_pointer = jxs.iloc[0,6] - 1         # SIG (7) CROSS SECTION ARRAY POINTER
    mt_18_pointer = (jxs.iloc[2,4] - 1).clip(0)  # FIS (21) FISSION POINTER
    
    return nes, ntr, energy_pointer, mt_pointer, xs_pointers, xs_table_pointer, mt_18_pointer

def get_energies_mt_lsig(xss, energy_pointer, nes, mt_pointer, ntr, xs_pointers):
    # XSS is the array contining ALL information
    energies = xss[energy_pointer : energy_pointer + nes]   # ENERGY TABLE ARRAY
    mt_array = xss[mt_pointer : mt_pointer + ntr]           # MT TABLE ARRAY
    lsig = xss[xs_pointers : xs_pointers + ntr].astype(int) # CROSS SECTION TABLE ARRAY
    return energies, mt_array, lsig
    
def get_mt1_mt2_mt3_mt101(xss, nes):
    mt1 = xss[nes:nes*2]
    mt101 = xss[nes*2:nes*3]
    mt2 = xss[nes*3:nes*4]
    mt3 = mt1 - mt2
    return mt1, mt2, mt3, mt101


def get_energies(element, temp="03c", ace_dir=ace_dir, ev=False, log=False):
    nsx, jxs, xss = get_nsx_jxs_xss(element, temp="03c", ace_dir=ace_dir)
    if nsx is not None:
        nes, _, energy_pointer, _, _, _, _ = get_pointers(nsx, jxs)
        energies = xss[energy_pointer : energy_pointer + nes]   # ENERGY TABLE ARRAY
        if ev:
            energies = energies * 1E6
        if log:
            energies = np.log10(energies)
        return energies
    else:
        return empty_df

# for_ml = pd.DataFrame({"Energy": energies})
# for_ml.to_csv("U233_Energy.csv", index=False)


def get_sig_mt(MT, mt_array, lsig, xs_table_pointer, jxs, xss, verbose=True):
    mt_index = np.where(mt_array==MT)[0][0]                 # GET INDEX FOR REACTION TYPE MT
    if MT == mt_array[-1]:                                  # IF REQUESTED MT IS THE LAST ONE ON TABLE 
        start_index = xs_table_pointer + lsig[mt_index] - 1 # TABLE BEGINS + NUMBER OF ITEMS ACCORDING TO LSIG 
        end_index = jxs.iloc[0,7] - 1                       # ENDING INDEX
        mt_data = xss[start_index: end_index]               
    else:
        start_index = xs_table_pointer + lsig[mt_index] - 1 
        end_index = xs_table_pointer + lsig[mt_index+1] - 1
        mt_data = xss[start_index: end_index]
    
    # THE FIRST AND SECOND VALUE CORRESPOND TO ENERGY INDEX AND POINTS
    energy_index = int(mt_data[0])   # START INDEX IN ENERGY ARRAY FOR MT REACTION
    energy_points = int(mt_data[1])  # NUMBER OF ENERGY POINTS FROM START INDEX 
    energy = xss[energy_index - 1 : energy_index + energy_points - 1] 
    xs_data = mt_data[2:]            # ACTUAL ARRAY BELONGING TO MT REACTION CHANNEL 
    if verbose:
        print("{} Energy and {} Cross Section Points Avaliable for MT{}.".format(len(energy), len(xs_data), str(int(MT))))
    return xs_data, energy, start_index, end_index


# THESE ARE JUST FOR KNN AND DT
def fill_ml_xs(MT, ml_xs, ace_xs):
    # FILLS VALUES IN ML DERIVED XS WHERE ALGORITHM IS UNABLE TO PERFORM (1/V AND TAIL)
    # FOR ALL VALUES THE SAME AS THE FIRST AND LAST ONE SUBSTITUTE FOR EQUIVALENT VALUE IN ENERGY IN ACE XS
    ml_xs.loc[0:ml_xs[ml_xs[MT] == ml_xs[MT].values[0]].shape[0], MT] = ace_xs[
        0:ml_xs[ml_xs[MT] == ml_xs[MT].values[0]].shape[0]+1]
    ml_xs.iloc[-ml_xs[ml_xs[MT] == ml_xs[MT].values[-1]].shape[0]:, ml_xs.columns.get_loc(MT)] = ace_xs[
        -ml_xs[ml_xs[MT] == ml_xs[MT].values[-1]].shape[0] - 1:-1]
    return ml_xs

def get_merged_df(ml_df, lsig, xs_table_pointer, jxs, xss, mt_data, mt_array):
    for i in list(ml_df.columns)[1:]:
        if i == "Data_1":
            ml_df = fill_ml_xs(i, ml_df, mt_data["mt1"])
        elif i == "Data_2":
            ml_df = fill_ml_xs(i, ml_df, mt_data["mt2"])
        elif i == "Data_3":
            ml_df = fill_ml_xs(i, ml_df, mt_data["mt3"])
        else:
            MT = re.sub("[^0-9]", "", i)
            sig, en, _, _ = get_sig_mt(int(MT), mt_array, lsig, xs_table_pointer, jxs, xss)
            ml_df = fill_ml_xs(i, ml_df, sig)
    return ml_df

def make_MT(rx_grid, MT, mt_array):
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

def make_energy_mt_grid(energies, mt_array, lsig, xs_table_pointer, jxs, xss, ml_df, ml_list):
    Energy_Grid = pd.DataFrame({"Energy": energies})
    Energy_Grid = Energy_Grid.set_index("Energy")

    for i in mt_array:
        xs, en, _, _ = get_sig_mt(i, mt_array, lsig, xs_table_pointer, jxs, xss, verbose=False)
        to_add = pd.DataFrame({"Energy": en, "Data_" + str(int(i)): xs})
        to_add = to_add.set_index("Energy")
        Energy_Grid = pd.merge(Energy_Grid, to_add, left_index=True, right_index=True, how="outer") 
    Energy_Grid = Energy_Grid.fillna(value=0)
    
    for i in ml_list:
        Energy_Grid[i] = ml_df[i].values
    
    Energy_Grid["Data_3"] = make_MT(Energy_Grid, "Data_3", mt_array)
    Energy_Grid["Data_101"] = make_MT(Energy_Grid, "Data_101", mt_array)
    
    return Energy_Grid


def adjust_mt1_mt2(Energy_Grid):
    """
    Calculates MT2 by substracting MT3 from MT1. If MT2 is negative:
    - Replace negatives with NaN
    - Interpolates from closests values
    - Adds back amount to MT1 to conserve XS.
    """
    adjusting_mt1 = pd.DataFrame({"Data_1":Energy_Grid.Data_1.values, "Data_3":Energy_Grid.Data_3.values})
    adjusting_mt1["Data_2"] = adjusting_mt1.Data_1.values - adjusting_mt1.Data_3.values
    
    neg_ix = adjusting_mt1[adjusting_mt1.Data_2 < 0].index.tolist()
    adjusting_mt1["Data_2"] = adjusting_mt1["Data_2"].apply(lambda x: x if x > 0 else -1)
    adjusting_mt1 = adjusting_mt1.replace(to_replace=-1, value=np.nan)
    adjusting_mt1 = adjusting_mt1.interpolate()
    adjusting_mt1["Data_1_int"] = adjusting_mt1["Data_2"] + adjusting_mt1["Data_3"]
    adjusting_mt1["Data_1_to_add"] = adjusting_mt1["Data_1_int"] - adjusting_mt1["Data_1"]
    adjusting_mt1["Data_1_Final"] = adjusting_mt1["Data_1"] + adjusting_mt1["Data_1_to_add"]
    
    Energy_Grid["Data_1"] = adjusting_mt1["Data_1_Final"].values
    Energy_Grid["Data_2"] = adjusting_mt1["Data_2"].values
    
    return Energy_Grid


def modify_mt_ace(MT_list, xss, xs_grid, nes, mt_array, lsig, xs_table_pointer, jxs):
    for i in MT_list:
        if i == 1:
            xss[nes:nes*2] = xs_grid["Data_" + str(i)].values
        elif i == 2:
            xss[nes*3:nes*4] = xs_grid["Data_" + str(i)].values
        elif i == 101:
            xss[nes*2:nes*3] = xs_grid["Data_" + str(i)].values
        else:
            _, _, start, end = get_sig_mt(i, mt_array, lsig, xs_table_pointer, jxs, xss)
            # We sum up 2 since the first are just energy pointers
            xss[start + 2 : end] = xs_grid["Data_" + str(i)].values
            
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
    if math.isnan(x):
        return ""
    elif x - int(x) == 0:
        return "{:20}".format(int(x))
    else:
        return "{:20.11E}".format(x)

def parsing_datatypes_2(x):
    x[0] = parsing_datatypes(x[0])
    x[1] = parsing_datatypes(x[1])
    x[2] = parsing_datatypes(x[2])
    x[3] = parsing_datatypes(x[3])
    return x[0], x[1], x[2], x[3]


def formating_new_xss(xss):
    to_write = pd.DataFrame(xss.reshape((-1,4)))
    column_names_4 = ["column_1", "column_2", "column_3", "column_4"]
    to_write.columns = column_names_4
    to_write = to_write.astype("object")
    
    # to_write[column_names_4] = to_write[column_names_4].apply(parsing_datatypes_2, axis=1, result_type="expand")
    to_write = to_write.applymap(parsing_datatypes)


def creating_new_ace(xss, element):
    to_write = pd.DataFrame(xss.reshape((-1,4)))
    column_names_4 = ["column_1", "column_2", "column_3", "column_4"]
    to_write.columns = column_names_4
    to_write = to_write.astype("object")
    
    # to_write[column_names_4] = to_write[column_names_4].apply(parsing_datatypes_2, axis=1, result_type="expand")
    to_write = to_write.applymap(parsing_datatypes)
    
    ace_name = element + "ENDF7"
    to_write.to_csv(ace_name + "_TMP.txt", float_format="%.11E", sep="\t", index=False, header=False)
    with open(ace_name + "_TMP.txt") as fin, open(ace_name + "_TMP2.txt", 'w') as fout:
        for line in fin:
            fout.write(line.replace('\t', ''))
            
    path, to_skip, line_count = get_to_skip_lines(element)
    
    with open(path, 'r') as ace, open(ace_name + '_ML.ace', 'w') as new_ace, open(ace_name + "_TMP2.txt", 'r') as new_data:
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
    
    os.remove(ace_name + "_TMP.txt")
    os.remove(ace_name + "_TMP2.txt")