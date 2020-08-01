import pandas as pd
import numpy as np
import os
import logging as log


def read_mass16(ame_dir):
    '''This function reads the mass16.txt file and creates a formatted CSV file.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory.

    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    filename = ame_dir + "/For_Extraction/mass16_toparse.txt"
    print("MASS16: Reading {}...".format(filename))

    ### The data is fortran formated with the following structure:
    #   a1,i3,i5,i5,i5,1x,a3,a4,1x,f13.5,f11.5,f11.3,f9.3,1x,a2,f11.3,f9.3,1x,i3,1x,f12.5,f11.5
    #   1,4,9,14,19,20,23,27,28,41,52,63,72,73,75,86,95,96,99,100,112,123

    formatting = ((0,1),(1,5),(5,9),(9,14),(14,19),(19,20),(20,23),(23,27),(27,28),
               (28,41),(41,52),(52,63),(63,72),(72,73),(73,75),(75,86),(86,95),(95,96),
               (96,112),(112,123))
    
    column_names = ["Page_Feed", "NZ", "N", "Z", "A", "Other", "EL", "O", "Other2", \
           "Mass_Excess", "dMass_Excess", "Binding_Energy", "dBinding_Energy", "Other3", \
           "Beta_Type", "B_Decay_Energy", "dB_Decay_Energy", "Other4", 
           "Atomic_Mass_Micro", "dAtomic_Mass_Micro"]

    data = pd.read_fwf(filename, colspecs=formatting, header=None)
    print("MASS16: Formatting file...")
    data.columns = column_names
    print("MASS16: Replacing NaNs with np.nan...")
    data = data.replace(value=np.nan, to_replace="?")
    
    for col in ["Atomic_Mass_Micro"]:
        data[col] = data[col].astype(str)
        data[col] = data[col].str.strip("\"")
        data[col] = data[col].str.replace(" ", "")
        data[col] = data[col].str.strip()
    
    data["Atomic_Mass_Micro"] = data["Atomic_Mass_Micro"].astype(float)
    data["B_Decay_Energy"] = data["B_Decay_Energy"].astype(float)

    print("MASS16: Dropping unnecessary data...")
    data.drop(columns=["Page_Feed", "Other", "Other2", "Other3", "Beta_Type", "Other4", "NZ"], inplace=True)
    
    data["Element_w_A"] = data["A"].astype(str) + data["EL"]
    
    csv_name = ame_dir + "/AME_atomic_masses_v1.csv"
    print("MASS16: Saving to {}...".format(csv_name))
    data.to_csv(csv_name, index=False)
    return print("MASS16: Finished.")


    
def read_rct1(ame_dir):
    '''This function reads the rct1.txt file and creates a formatted CSV file.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory.

    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    filename = ame_dir + "/For_Extraction/rct1_16_toparse.txt"
    print("RCT1: Reading {}...".format(filename))

    formatting = ((0,1),(1,4),(4,5),(5,8),(8,11),(11,12),(12,22),(22,30),(30,40),
              (40,48),(48,58),(58,66),(66,76),(76,84),(84,94),(94,102),(102,112),(112,120))
    
    columns_rct1 = ["Page_Feed", "A", "Other", "EL", "Z", "Other2", "S(2n)", "dS(2n)", "S(2p)", "dS(2p)", 
                "Q(a)",  "dQ(a)", "Q(2B-)", "dQ(2B-)", "Q(ep)", "dQ(ep)", "Q(B-n)", "dQ(B-n)"]
    
    rct1 = pd.read_fwf(filename, colspecs=formatting, header=None)
    print("RCT1: Formatting file...")
    rct1.columns = columns_rct1
    print("RCT1: Replacing NaNs with np.nan...")
    rct1 = rct1.replace(to_replace="*", value=np.nan)
    print("RCT1: Dropping unnecessary data...")
    rct1.drop(columns=["Other", "Other2"], inplace=True)
    
    for col in list(rct1.columns):
        rct1[col] = rct1[col].astype(str)
        rct1[col] = rct1[col].str.strip("\"")
        rct1[col] = rct1[col].str.strip()
        rct1[col] = rct1[col].str.replace("#", ".")
    
    for col in list(rct1.columns):
        if col == "EL":
            pass
        else:
            rct1[col] = rct1[col].astype(float)

    rct1[["A", "Z"]] = rct1[["A", "Z"]].astype(int)
    rct1["N"] = rct1["A"] - rct1["Z"]
    rct1["Element_w_A"] = rct1["A"].astype(str) + rct1["EL"]
    rct1.drop(columns=["Page_Feed", "A", "EL", "Z", "N"], inplace=True)

    csv_name = ame_dir + "/AME_atomic_masses_v1_rct1.csv"
    print("RCT1: Saving to {}...".format(csv_name))
    rct1.to_csv(csv_name, index=False)
    return print("RCT1: Finished.")
        
def read_rct2(ame_dir):
    '''This function reads the rct2.txt file and creates a formatted CSV file.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory.

    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    filename = ame_dir + "/For_Extraction/rct2_16_toparse.txt"
    print("RCT2: Reading {}...".format(filename))

    formatting = ((0,1),(1,4),(4,5),(5,8),(8,11),(11,12),(12,22),(22,30),(30,40),
              (40,48),(48,58),(58,66),(66,76),(76,84),(84,94),(94,102),(102,112),(112,120))
    
    columns_rct2 = ["Page_Feed", "A", "Other", "EL", "Z", "Other2", "S(n)", "dS(n)", "S(p)", "dS(p)", "Q(4B-)", 
                "dQ(4B-)", "Q(d,a)", "dQ(d,a)", "Q(p,a)", "dQ(p,a)", "Q(n,a)", "dQ(n,a)"]
    
    rct2 = pd.read_fwf(filename, colspecs=formatting, header=None)
    print("RCT2: Formatting file...")
    rct2.columns = columns_rct2
    print("RCT2: Replacing NaNs with np.nan...")
    rct2 = rct2.replace(to_replace="*", value=np.nan)
    print("RCT2: Dropping unnecessary data...")
    rct2.drop(columns=["Other", "Other2"], inplace=True)
    
    for col in list(rct2.columns):
        rct2[col] = rct2[col].astype(str)
        rct2[col] = rct2[col].str.strip("\"")
        rct2[col] = rct2[col].str.strip()
        rct2[col] = rct2[col].str.replace("#", ".")
    
    for col in list(rct2.columns):
        if col == "EL":
            pass
        else:
            rct2[col] = rct2[col].astype(float)
            
            
    rct2[["A", "Z"]] = rct2[["A", "Z"]].astype(int)
    rct2["N"] = rct2["A"] - rct2["Z"]
    rct2["Element_w_A"] = rct2["A"].astype(str) + rct2["EL"]
    rct2.drop(columns=["Page_Feed", "A", "EL", "Z", "N"], inplace=True)

    csv_name = ame_dir + "/AME_atomic_masses_v1_rct2.csv"
    print("RCT2: Saving to {}...".format(csv_name))
    rct2.to_csv(csv_name, index=False)
    return print("RCT2: Finished.")

def merge_mass_rct(ame_dir, add_qvalues=True):
    '''Reads the proccessed mass16, rct1, and rct2 files and merges them while 
    adding other reaction Q-values if needed. It creates a CSV file when finished.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory. 
            The length of all three files must be the same.
        add_qvalues (bool): If true it will add the following reaction Q-values:
            ["Q(g,p)"] = -1 * ["S(p)"]
            ["Q(g,n)"] = -1 * ["S(n)"]
            ["Q(g,pn)"] = ["Q(d,a)"] - 26071.0939
            ["Q(g,d)"] = ["Q(d,a)"] - 23846.5279
            ["Q(g,t)"] = ["Q(p,a)"] - 19813.8649
            ["Q(g,He3)"] = ["Q(n,a)"] - 20577.6194
            ["Q(g,2p)"] = -1 * ["S(2p)"]
            ["Q(g,2n)"] = -1 * ["S(2n)"]
            ["Q(g,a)"] = ["Q(a)"]
            ["Q(p,n)"] = ["B_Decay_Energy"] - 782.3465
            ["Q(p,2p)"] = -1 * ["S(p)"]
            ["Q(p,pn)"] = -1 * ["S(n)"]
            ["Q(p,d)"] = -1 * ["S(n)"] + 2224.5660
            ["Q(p,2n)"] = ["Q(B-n)"] - 782.3465
            ["Q(p,t)"] = -1 * ["S(2n)"] + 8481.7949
            ["Q(p,3He)"] = ["Q(d,a)"] - 18353.0535
            ["Q(n,2p)"] = ["Q(ep)"] + 782.3465
            ["Q(n,np)"] = -1 * ["S(p)"]
            ["Q(n,d)"] = -1 * ["S(p)"] + 2224.5660
            ["Q(n,2n)"] = -1 * ["S(n)"]
            ["Q(n,t)"] = ["Q(d,a)"] - 17589.2989
            ["Q(n,3He)"] = -1 * ["S(2p)"] + 7718.0404
            ["Q(d,t)"] = -1 * ["S(n)"] + 6257.2290
            ["Q(d,3He)"] = -1 * ["S(p)"] + 5493.4744
            ["Q(3He,t)"] = ["B_Decay_Energy"] - 18.5920
            ["Q(3He,a)"] = -1 * ["S(n)"] + 20577.6194
            ["Q(t,a)"] = -1 * ["S(p)"] + 19813.8649
    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    print("Reading mass16, rct1, and rct2 CSV files...")
    data = pd.read_csv(ame_dir + "/AME_atomic_masses_v1.csv")
    rct1 = pd.read_csv(ame_dir + "/AME_atomic_masses_v1_rct1.csv")
    rct2 = pd.read_csv(ame_dir + "/AME_atomic_masses_v1_rct2.csv")

    if len(rct1.Element_w_A.unique()) == len(rct2.Element_w_A.unique()) == len(data.Element_w_A.unique()):
        df_final = pd.merge(data, rct1, on='Element_w_A')
        df_final = pd.merge(df_final, rct2, on='Element_w_A')
        if add_qvalues:
            print("Calculating additional reaction energies...")
            df_final["Q(g,p)"] = -1 * df_final["S(p)"]
            df_final["Q(g,n)"] = -1 * df_final["S(n)"]
            df_final["Q(g,pn)"] = df_final["Q(d,a)"] - 26071.0939
            df_final["Q(g,d)"] = df_final["Q(d,a)"] - 23846.5279
            df_final["Q(g,t)"] = df_final["Q(p,a)"] - 19813.8649
            df_final["Q(g,He3)"] = df_final["Q(n,a)"] - 20577.6194
            df_final["Q(g,2p)"] = -1 * df_final["S(2p)"]
            df_final["Q(g,2n)"] = -1 * df_final["S(2n)"]
            df_final["Q(g,a)"] = df_final["Q(a)"]
            df_final["Q(p,n)"] = df_final["B_Decay_Energy"] - 782.3465
            df_final["Q(p,2p)"] = -1 * df_final["S(p)"]
            df_final["Q(p,pn)"] = -1 * df_final["S(n)"]
            df_final["Q(p,d)"] = -1 * df_final["S(n)"] + 2224.5660
            df_final["Q(p,2n)"] = df_final["Q(B-n)"] - 782.3465
            df_final["Q(p,t)"] = -1 * df_final["S(2n)"] + 8481.7949
            df_final["Q(p,3He)"] = df_final["Q(d,a)"] - 18353.0535
            df_final["Q(n,2p)"] = df_final["Q(ep)"] + 782.3465
            df_final["Q(n,np)"] = -1 * df_final["S(p)"]
            df_final["Q(n,d)"] = -1 * df_final["S(p)"] + 2224.5660
            df_final["Q(n,2n)"] = -1 * df_final["S(n)"]
            df_final["Q(n,t)"] = df_final["Q(d,a)"] - 17589.2989
            df_final["Q(n,3He)"] = -1 * df_final["S(2p)"] + 7718.0404
            df_final["Q(d,t)"] = -1 * df_final["S(n)"] + 6257.2290
            df_final["Q(d,3He)"] = -1 * df_final["S(p)"] + 5493.4744
            df_final["Q(3He,t)"] = df_final["B_Decay_Energy"] - 18.5920
            df_final["Q(3He,a)"] = -1 * df_final["S(n)"] + 20577.6194
            df_final["Q(t,a)"] = -1 * df_final["S(p)"] + 19813.8649
        print("Saving to CSV...")
        csv_name = ame_dir + "/AME_atomic_masses_v2.csv"
        print("Saving to {}...".format(csv_name))
        df_final.to_csv(csv_name, index=False)
        print("Finished merging CSV files.")
    else:
        print("Shapes not compatible.")

def create_natural_element_data(ame_dir, fillna=True, mode="isotopic"):
    '''Creates natural element data by averaging isotopic data. Additionally it 
    adds a flag to indicate rows which correspond to isotopic or natural data.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory. 
            The length of all three files must be the same.
        fillna (bool): if True it fills the missing values. For NaN values not filled by the
            used "mode", then the filling method is just the mean of the entire dataset.
        mode (str): Currently the only supporte mode is Isotopic. 
            Missing Values are filled using the isotopic average.
    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    filename = ame_dir + "/AME_atomic_masses_v2.csv"
    print("Reading {}...".format(filename))
    ame = pd.read_csv(filename)

    periodic = ame_dir + "/For_Extraction/periodic_table.csv"
    print("Reading {}...".format(periodic))
    masses_natural = pd.read_csv(periodic).rename(
        columns={'NumberofNeutrons':'Neutrons', 'NumberofProtons':'Protons', 'AtomicMass':'Atomic_Mass_Micro', 'Symbol':'EL'})

    print("Fromating dataframes...")
    masses_natural["Mass_Number"] = masses_natural["Neutrons"] + masses_natural["Protons"]

    masses_natural = masses_natural[["Neutrons", "Protons", "Mass_Number", "EL", "Atomic_Mass_Micro"]]

    masses_natural["N"] = masses_natural["Neutrons"] * 0
    masses_natural["A"] = masses_natural["Mass_Number"] * 0

    print("Saving natural element information...")
    masses_natural.to_csv(ame_dir + "/For_Extraction/natural_element_masses.csv", index=False)
    natural = pd.read_csv(ame_dir + "/For_Extraction/natural_element_masses.csv")

    natural.columns = ["N", "Z", "A", "EL", "Atomic_Mass_Micro", "Neutrons", "Mass_Number"]
    natural["Neutrons"] = natural["Mass_Number"] - natural["Z"]

    natural["Atomic_Mass_Micro"] = natural["Atomic_Mass_Micro"] * 1E6 
    
    print("Flaggint natural and isotopic rows...")
    natural["Flag"] = "N"

    result = ame.append(natural, sort=False)

    # The NaN at the end are a result of the append. Those belong to the AME elements
    result.Neutrons.fillna(result.N, inplace=True)
    result.Mass_Number.fillna(result.A, inplace=True)
    result.Flag.fillna("I", inplace=True)

    result.Neutrons = result.Neutrons.astype(int)
    result.Mass_Number = result.Mass_Number.astype(int)
    result["O"].fillna(value="Other", inplace=True)
    result = result.drop(columns=["Element_w_A"])

    csv_name = ame_dir + "/AME_final_Properties_w_NaN.csv"
    print("Saving final CSV file to {}...".format(csv_name))
    result.to_csv(csv_name, index=False)

    if fillna:
        print("Filling missing values using {} mode.".format(mode))
        if mode == "isotopic":
            # we fill the nans by taking the average of all isotopes, same for all other parameters.
            for i in range(0,119):
                result[result["Z"] == i] = result[result["Z"] == i].fillna(result[result["Z"] == i].mean())
        result.fillna(result.mean(), inplace=True)
        csv_name = ame_dir + "/AME_final_Properties_no_NaN.csv"
        print("Saving imputed final CSV file to {}...".format(csv_name))
        result.to_csv(csv_name, index=False)
    return print("Finished.")


def get_all(ame_dir, fillna=True, add_qvalues=True, mode="isotopic"):
    '''Creates 5 CSV files: Proccesed (1) mass16, (2) rct1, and (3) rct2 files. It then creates
    a (4) single CSV merging the first three CSV files. It then creates (5) a proccesed CSV file 
    containing isotpic and natural element data with NaN values. If wanted a (6) copy of the fifth 
    CSV file is saved with imputed NaN values.

    Args:
        ame_dir (str): Path to the Atomic Mass Evaluation directory. 
            The length of all three files must be the same.
        fillna (bool): if True it fills the missing values. For NaN values not filled by the
            used "mode", then the filling method is just the mean of the entire dataset.
        mode (str): Currently the only supporte mode is Isotopic. 
            Missing Values are filled using the isotopic average.
        add_qvalues (bool): If true it will add the following reaction Q-values:
            ["Q(g,p)"] = -1 * ["S(p)"]
            ["Q(g,n)"] = -1 * ["S(n)"]
            ["Q(g,pn)"] = ["Q(d,a)"] - 26071.0939
            ["Q(g,d)"] = ["Q(d,a)"] - 23846.5279
            ["Q(g,t)"] = ["Q(p,a)"] - 19813.8649
            ["Q(g,He3)"] = ["Q(n,a)"] - 20577.6194
            ["Q(g,2p)"] = -1 * ["S(2p)"]
            ["Q(g,2n)"] = -1 * ["S(2n)"]
            ["Q(g,a)"] = ["Q(a)"]
            ["Q(p,n)"] = ["B_Decay_Energy"] - 782.3465
            ["Q(p,2p)"] = -1 * ["S(p)"]
            ["Q(p,pn)"] = -1 * ["S(n)"]
            ["Q(p,d)"] = -1 * ["S(n)"] + 2224.5660
            ["Q(p,2n)"] = ["Q(B-n)"] - 782.3465
            ["Q(p,t)"] = -1 * ["S(2n)"] + 8481.7949
            ["Q(p,3He)"] = ["Q(d,a)"] - 18353.0535
            ["Q(n,2p)"] = ["Q(ep)"] + 782.3465
            ["Q(n,np)"] = -1 * ["S(p)"]
            ["Q(n,d)"] = -1 * ["S(p)"] + 2224.5660
            ["Q(n,2n)"] = -1 * ["S(n)"]
            ["Q(n,t)"] = ["Q(d,a)"] - 17589.2989
            ["Q(n,3He)"] = -1 * ["S(2p)"] + 7718.0404
            ["Q(d,t)"] = -1 * ["S(n)"] + 6257.2290
            ["Q(d,3He)"] = -1 * ["S(p)"] + 5493.4744
            ["Q(3He,t)"] = ["B_Decay_Energy"] - 18.5920
            ["Q(3He,a)"] = -1 * ["S(n)"] + 20577.6194
            ["Q(t,a)"] = -1 * ["S(p)"] + 19813.8649
    Returns:
        "Finished": Indicates the process has finish and the CSV has been created succesfully.
    '''
    read_mass16(ame_dir)
    read_rct1(ame_dir)
    read_rct2(ame_dir)
    merge_mass_rct(ame_dir, add_qvalues=add_qvalues)
    create_natural_element_data(ame_dir, fillna=fillna, mode=mode)