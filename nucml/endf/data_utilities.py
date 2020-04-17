import os.path
from pathlib import Path
import pandas as pd
import numpy as np


def load_new(datapath, mev_to_ev=False):
    # uranium is in MeV, we need eV
    print(datapath)
    endf = pd.read_csv(datapath)
    if mev_to_ev:
        print("Convering MeV to eV...")
        endf["Energy"] = endf["Energy"]*1E6
    print("Finish reading ENDF data with shape: ", endf.shape)
    return endf
