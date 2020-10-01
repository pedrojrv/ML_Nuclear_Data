import matplotlib.pyplot as plt
import sys

sys.path.append("..")

import nucml.datasets as nuc_data # pylint: disable=import-error

import seaborn as sns
sns.set(font_scale=2)
sns.set_style('white')

def plot_evaluations(ELAAA, MT, exfor=None, exclude=[], new_data=None, new_data_label=""):
    endf = nuc_data.load_endf(ELAAA, MT, mev_to_ev=True, mb_to_b=True, drop_u=True)
    tendl = nuc_data.load_tendl(ELAAA, MT, mev_to_ev=True, mb_to_b=True, drop_u=True)
    jendl = nuc_data.load_jendl(ELAAA, MT, mev_to_ev=True, mb_to_b=True, drop_u=True)
    jeff = nuc_data.load_jeff(ELAAA, MT, mev_to_ev=True, mb_to_b=True, drop_u=True)

    
    plt.figure(figsize=(14,10))
    if exfor is not None:
        plt.loglog(exfor.Energy, exfor.Data, label="EXFOR")
    if new_data is not None:
        plt.scatter(new_data.Energy, new_data.Data, label=new_data_label)
    if endf is not None and "endf" not in exclude:
        plt.loglog(endf.Energy, endf.Data, label="ENDF/B-VIII")
    if tendl is not None and "tendl" not in exclude:
        plt.loglog(tendl.Energy, tendl.Data, label="TENDL 2019")
    if jendl is not None and "jendl" not in exclude:
        plt.loglog(jendl.Energy, jendl.Data, label="JENDL 4.0")
    if jeff is not None and "jeff" not in exclude:
        plt.loglog(jeff.Energy, jeff.Data, label="JEFF 3.3") 
    plt.xlabel('Energy (eV)')
    plt.ylabel('Cross Section (b)')
    plt.legend()
    
