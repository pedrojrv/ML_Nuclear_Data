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