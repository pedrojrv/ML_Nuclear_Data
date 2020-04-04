import os.path
from pathlib import Path
import pandas as pd
import numpy as np

def load_endf(datapath, mev_to_ev=False, log_e=False):
    # uranium is in MeV, we need eV
    endf = pd.read_csv(datapath)
    if mev_to_ev:
        print("Convering MeV to eV...")
        endf["Energy"] = endf["Energy"]*1E6
    if log_e:
        endf["Energy"] = np.log10(endf["Energy"])
    print("Finish reading ENDF data with shape: ", endf.shape)
    return endf

def load_endf_experimental(element, MT, mev_to_ev=True, mb_to_b=True, log_e=False):
    path = "../ML_Data/ENDF_TENDL/neutron/" + element + "/endfb8.0/tables/xs/n-" + element + "-" + MT + ".endfb8.0"
    file = Path(path)
    if file.is_file():
        # uranium is in MeV, we need eV
        endf = pd.read_csv(path, skiprows=5, header=None, names=["Energy", "Data", "dData", "dData2"], delim_whitespace=True)
        if mev_to_ev:
            print("Convering MeV to eV...")
            endf["Energy"] = endf["Energy"]*1E6
        if mb_to_b:
            print("Convering mb to b...")
            endf["Data"] = endf["Data"]*0.001
        if log_e:
            endf["Energy"] = np.log10(endf["Energy"])
        if "dData" in list(endf.columns):
            endf = endf.drop(columns=["dData"])
        if "dData2" in list(endf.columns):
            endf = endf.drop(columns=["dData2"])
        print("Finish reading ENDF data with shape: ", endf.shape)
        return endf
    else:
        print("File does not exists.")