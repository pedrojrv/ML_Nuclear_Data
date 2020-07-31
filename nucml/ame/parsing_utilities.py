import logging
import os
import sys

sys.path.append("..")

import numpy as np
import pandas as pd
from scipy.optimize import curve_fit

from nucml.general_utilities import func, check_if_files_exist     # pylint: disable=import-error

ame_dir_path = os.path.abspath("../AME/")
ame_originals_path = os.path.abspath("../AME/Originals/")

def read_mass16(originals_directory=ame_originals_path, saving_directory=ame_dir_path):
    """Reads the mass16.txt file and creates a formatted CSV file. The Mass 16 file contains a variety of 
    features including atomic mass, mass excess, binding energy, beta decay energy, and more.
    For more information visit the IAEA webiste: https://www-nds.iaea.org/amdc/
    
    It  is parse base on the Fortran formatting:
    a1,i3,i5,i5,i5,1x,a3,a4,1x,f13.5,f11.5,f11.3,f9.3,1x,a2,f11.3,f9.3,1x,i3,1x,f12.5,f11.5

    This is equivalent to spacing numbers: 
    1,4,9,14,19,20,23,27,28,41,52,63,72,73,75,86,95,96,99,100,112,123

    Args:
        originals_directory (str): path to the Atomic Mass Evaluation directory where the mass16_toparse.txt file is located.
        saving_directory (str): path to save resulting formatted csv file.

    Returns:
        None
    """
    # Formating rules based on fortran formatting given by AME
    formatting = ((0,1),(1,5),(5,9),(9,14),(14,19),(19,20),(20,23),(23,27),(27,28),
               (28,41),(41,52),(52,63),(63,72),(72,73),(73,75),(75,86),(86,95),(95,96),
               (96,112),(112,123))

    # Column names as given by AME
    column_names = ["Page_Feed", "NZ", "N", "Z", "A", "Other", "EL", "O", "Other2", \
           "Mass_Excess", "dMass_Excess", "Binding_Energy", "dBinding_Energy", "Other3", \
           "Beta_Type", "B_Decay_Energy", "dB_Decay_Energy", "Other4",
           "Atomic_Mass_Micro", "dAtomic_Mass_Micro"]


    filename = os.path.join(originals_directory, "mass16.txt")
    if os.path.exists(filename):
        logging.info("MASS16: Reading data from {}".format(filename))
        data = pd.read_fwf(filename, colspecs=formatting, header=None, skiprows=39, names=column_names)

        logging.info("MASS16: Beginning formatting sequences...")
        data["O"].fillna(value="Other", inplace=True)
        data = data.replace(value=np.nan, to_replace="*")

        for col in data.select_dtypes(include=['object']):
            data[col] = data[col].apply(lambda x: str(x).replace("#", ""))

        for col, types in zip(data.columns, mass16_dtypes):
            data[col] = data[col].astype(types)
            
        for col in ["Atomic_Mass_Micro"]:
            data[col] = data[col].astype(str)
            data[col] = data[col].str.strip("\"")
            data[col] = data[col].str.replace(" ", "")
            data[col] = data[col].str.strip()

        data["Atomic_Mass_Micro"] = data["Atomic_Mass_Micro"].astype(float)
        data["B_Decay_Energy"] = data["B_Decay_Energy"].astype(float)

        data.drop(columns=["Page_Feed", "Other", "Other2", "Other3", "Beta_Type", "Other4", "NZ"], inplace=True)

        data["Element_w_A"] = data["A"].astype(str) + data["EL"]

        csv_name = os.path.join(saving_directory, "AME_mass16.csv")
        logging.info("MASS16: Formatting done. Saving file to {}".format(csv_name))
        data.to_csv(csv_name, index=False)
        logging.info("MASS16: Succesfully formated mass16.txt file.")
    else:
        logging.error("MASS16: mass16.txt file does not exists. Check that it exists on the given directory path.")
    return None


def read_rct1(originals_directory=ame_originals_path, saving_directory=ame_dir_path):
    """Reads the rct1-16.txt file and creates a formatted CSV file. The rct1-16 file contains a variety of 
    features including neutron and proton separation energies and q-values for a variety of reactions.
    For more information visit the IAEA webiste: https://www-nds.iaea.org/amdc/
    
    It  is parse base on the Fortran formatting:
    a1,i3,1x,a3,i3,1x,6(f10.2,f8.2)

    Args:
        originals_directory (str): path to the Atomic Mass Evaluation directory where the rct1-16.txt file is located.
        saving_directory (str): path to save resulting formatted csv file.

    Returns:
        None
    """
    formatting = ((0,1),(1,4),(4,5),(5,8),(8,11),(11,12),(12,22),(22,30),(30,40),
            (40,48),(48,58),(58,66),(66,76),(76,84),(84,94),(94,102),(102,112),(112,120))

    column_names = ["Page_Feed", "A", "Other", "EL", "Z", "Other2", "S(2n)", "dS(2n)", "S(2p)", "dS(2p)",
                "Q(a)",  "dQ(a)", "Q(2B-)", "dQ(2B-)", "Q(ep)", "dQ(ep)", "Q(B-n)", "dQ(B-n)"]

    filename = os.path.join(originals_directory, "rct1-16.txt")

    if os.path.exists(filename):
        logging.info("RCT1: Reading data from {}".format(filename))
        data = pd.read_fwf(filename, colspecs=formatting, header=None, skiprows=39, names=column_names)
                        
        logging.info("RCT1: Beginning formatting sequences...")
        data = data.replace(to_replace="*", value=np.nan)
        data.drop(columns=["Other", "Other2"], inplace=True)

        for col in list(data.columns):
            data[col] = data[col].astype(str)
            data[col] = data[col].str.strip("\"")
            data[col] = data[col].str.strip()
            data[col] = data[col].str.replace("#", ".")

        for col in list(data.columns):
            if col == "EL":
                pass
            else:
                data[col] = data[col].astype(float)

        data[["A", "Z"]] = data[["A", "Z"]].astype(int)
        data["N"] = data["A"] - data["Z"]
        data["Element_w_A"] = data["A"].astype(str) + data["EL"]
        data.drop(columns=["Page_Feed", "A", "EL", "Z", "N"], inplace=True)

        csv_name = os.path.join(saving_directory, "AME_rct1.csv")
        logging.info("RCT1: Formatting done. Saving file to {}".format(csv_name))
        data.to_csv(csv_name, index=False)
        logging.info("RCT1: Succesfully formated rct1-16.txt file.")
    else:
        logging.error("rct1-16.txt file does not exists. Check that it exists on the given directory path.")
    return None

def read_rct2(originals_directory=ame_originals_path, saving_directory=ame_dir_path):
    """Reads the rct2-16.txt file and creates a formatted CSV file. The rct2-16 file contains a variety of 
    features including neutron and proton separation energies and q-values for a variety of reactions.
    For more information visit the IAEA webiste: https://www-nds.iaea.org/amdc/

    It  is parse base on the Fortran formatting:
    a1,i3,1x,a3,i3,1x,6(f10.2,f8.2)

    Args:
        originals_directory (str): path to the Atomic Mass Evaluation directory where the rct2-16.txt file is located.
        saving_directory (str): path to save resulting formatted csv file.

    Returns:
        None
    """
    formatting = ((0,1),(1,4),(4,5),(5,8),(8,11),(11,12),(12,22),(22,30),(30,40),
            (40,48),(48,58),(58,66),(66,76),(76,84),(84,94),(94,102),(102,112),(112,120))

    column_names = ["Page_Feed", "A", "Other", "EL", "Z", "Other2", "S(n)", "dS(n)", "S(p)", "dS(p)", "Q(4B-)",
                "dQ(4B-)", "Q(d,a)", "dQ(d,a)", "Q(p,a)", "dQ(p,a)", "Q(n,a)", "dQ(n,a)"]

    filename = os.path.join(originals_directory, "rct2-16.txt")

    if os.path.exists(filename):
        logging.info("RCT2: Reading data from {}".format(filename))
        data = pd.read_fwf(filename, colspecs=formatting, header=None, skiprows=39, names=column_names)

        logging.info("RCT2: Beginning formatting sequences...")
        data = data.replace(to_replace="*", value=np.nan)
        data.drop(columns=["Other", "Other2"], inplace=True)

        for col in list(data.columns):
            data[col] = data[col].astype(str)
            data[col] = data[col].str.strip("\"")
            data[col] = data[col].str.strip()
            data[col] = data[col].str.replace("#", ".")

        for col in list(data.columns):
            if col == "EL":
                pass
            else:
                data[col] = data[col].astype(float)


        data[["A", "Z"]] = data[["A", "Z"]].astype(int)
        data["N"] = data["A"] - data["Z"]
        data["Element_w_A"] = data["A"].astype(str) + data["EL"]
        data.drop(columns=["Page_Feed", "A", "EL", "Z", "N"], inplace=True)

        csv_name = os.path.join(saving_directory, "AME_rct2.csv")
        logging.info("RCT2: Formatting done. Saving file to {}".format(csv_name))
        data.to_csv(csv_name, index=False)
        logging.info("RCT2: Succesfully formated rct2-16.txt file.")
    else:
        logging.error("RCT2: rct2-16.txt file does not exists. Check that it exists on the given directory path.")
    return None


def merge_mass_rct(directory=ame_dir_path, saving_directory=ame_dir_path, add_qvalues=True):
    """Reads the proccessed mass16, rct1, and rct2 files and merges them while adding other reaction 
    Q-values if needed. It creates one main CSV file when finished. This assumes the three files 
    were created using the read_mass(), read_rct1(), and read_rct2() functions.
    For more information visit the IAEA webiste: https://www-nds.iaea.org/amdc/

    Args:
        directory (str): Path to the Atomic Mass Evaluation directory where 
            the processed mass16, rct2, and rct2 files are saved. The length of all three 
            files must be the same.
        saving_directory (str): path to directory where the resulting formatted 
            csv file will be saved.
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
        None
    """
    logging.info("MERGE: Initializing. Checking documents...")
    mass16_path = os.path.join(directory, "AME_mass16.csv")
    rct1_path = os.path.join(directory, "AME_rct1.csv")
    rct2_path = os.path.join(directory, "AME_rct2.csv")
    
    if check_if_files_exist([mass16_path, rct1_path, rct2_path]):
        logging.info("MERGE: Files exists. Reading data into dataframes...")
        data = pd.read_csv(mass16_path)
        rct1 = pd.read_csv(rct1_path)
        rct2 = pd.read_csv(rct2_path)
        
        logging.info("MERGE: Checking for consistency among files...")
        if len(rct1.Element_w_A.unique()) == len(rct2.Element_w_A.unique()) == len(data.Element_w_A.unique()):
            df_final = pd.merge(data, rct1, on='Element_w_A')
            df_final = pd.merge(df_final, rct2, on='Element_w_A')
            if add_qvalues:
                logging.info("MERGE: Q-VALUE CALCULATION: ENABLED \n Calculating additional reaction energies...")
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

            csv_name = os.path.join(saving_directory, "AME_all_merged.csv")
            logging.info("MERGE: Formatting done. Saving file to {}".format(csv_name))
            df_final.to_csv(csv_name, index=False)
            logging.info("MERGE: Succesfully merged files.")
        else:
            logging.error("MERGE: Shapes among the three files is not consistent.")
    else:
        logging.error("MERGE: One of the three files does not exists in the given directory.")
    return None

def create_natural_element_data(directory=ame_dir_path, originals_directory=ame_originals_path, 
    saving_directory=ame_dir_path, fillna=True, mode="elemental", fill_value=0):
    """Creates natural element data by averaging isotopic data. Additionally it
    adds a flag to indicate rows which correspond to isotopic or natural data.

    Args:
        directory (str): path to the Atomic Mass Evaluation directory where 
            the AME_all_merged.csv file is located.
        originals_directory (str): path to the Atomic Mass Evaluation directory where the 
            periodic_table csv file is located.
        saving_directory (str): path to directory where the resulting formatted 
            csv file will be saved.
        fillna (bool): if True, missing values are filled. For the remaining NaN values not filled by the
            used `mode`, a value of 0 will be inserted unless specified otherwise.
        mode (str): The supported modes are:
            elemental: missing values are filled using linear interpolation element-wise.
        fill_value (int, float): value to fill remaining missing values with after imputation is finished 
            with selected `mode`. Defaults to 0.
    Returns:
        None.
    """
    logging.info("FEAT ENG: Initializing. Checking documents...")
    filename = os.path.join(directory, "AME_all_merged.csv")
    periodic_filename = os.path.join(originals_directory, "periodic_table.csv")
    
    if check_if_files_exist([filename, periodic_filename]):
        logging.info("FEAT ENG: Reading data from {}".format(filename))
        ame = pd.read_csv(filename)
        ame = ame.replace(to_replace=-0, value=0) # FORMATTING

        logging.info("FEAT ENG: Reading data from {}".format(periodic_filename))
        masses_natural = pd.read_csv(periodic_filename).rename(
            # Renaming columns for consistency with EXFOR:
            columns={'NumberofNeutrons':'Neutrons', 'NumberofProtons':'Protons', 
            'AtomicMass':'Atomic_Mass_Micro', 'Symbol':'EL'})

        logging.info("FEAT ENG: Beginning data creation...")
        masses_natural["Mass_Number"] = masses_natural["Neutrons"] + masses_natural["Protons"]
        # We don't need other columns in the periodic table csv file
        masses_natural = masses_natural[["Neutrons", "Protons", "Mass_Number", "EL", "Atomic_Mass_Micro"]]

        # In EXFOR natural data is represented with a negative neutron value so we create this here:
        masses_natural["N"] = masses_natural["Neutrons"] * 0
        masses_natural["A"] = masses_natural["Mass_Number"] * 0
        masses_natural.columns = ["N", "Z", "A", "EL", "Atomic_Mass_Micro", "Neutrons", "Mass_Number"]
        masses_natural["Neutrons"] = masses_natural["Mass_Number"] - masses_natural["Z"]

        # AME datasets deal with atomic mass in micro units:
        masses_natural["Atomic_Mass_Micro"] = masses_natural["Atomic_Mass_Micro"] * 1E6

        # We need to distinguish natural form isotopic. To accomplish this we introduce a flag:
        masses_natural["Flag"] = "N"

        logging.info("FEAT ENG: Finished creating natural data. Merging with AME...")
        result = ame.append(masses_natural, sort=False)

        # Due to the merging process many NaN values are introduced. Here we fix this:
        result["Neutrons"] = result.Neutrons.fillna(result.N).astype(int) # We first fill the Neutrons column with the N column values
        result["Mass_Number"] = result.Mass_Number.fillna(result.A).astype(int) # same for Mass Number and A
        result.Flag.fillna("I", inplace=True) # We already have our natural tags we now that all NaNs are isotopic now.
        result["O"].fillna(value="Other", inplace=True) # ASSUMPTION: We assume natural data was derive with Other 

        logging.info("FEAT ENG: Finishing up...")
        result = result.drop(columns=["Element_w_A"]) # We don't need this 
        result = result.sort_values(by="Z") 
        
        csv_name = os.path.join(saving_directory, "AME_Natural_Properties_w_NaN.csv")
        logging.info("FEAT ENG: Saving file to {}".format(csv_name))
        result.to_csv(csv_name, index=False)

        if fillna:
            logging.info("FEAT ENG: Filling missing values using {} mode".format(mode.upper()))

            # The imputation methods change the column data data types, we save them
            # and transfer them after the imputation is perform.
            types = result.iloc[0:2]
            if mode.upper() == "ELEMENTAL":
                # we fill the nans by taking the average of all isotopes, same for all other parameters.
                result = impute_values(result)
  
            logging.info("FEAT ENG: Filling remaining NaN values with 0...")
            result = result.fillna(fill_value)

            logging.info("FEAT ENG: Returning features to original data types...")
            for x in result.columns:
                result[x] = result[x].astype(types[x].dtypes.name)

            csv_name = os.path.join(saving_directory, "AME_Natural_Properties_no_NaN.csv")
            logging.info("FEAT ENG: Saving imputed file to {}".format(csv_name))
            result.to_csv(csv_name, index=False)
        
            logging.info("FEAT ENG: Sucessfully created natural data. Nan values were imputed.")
        else:
            logging.info("FEAT ENG: Succesfully created natural data. NaN values were not imputed.")
    else:
        logging.error("FEAT ENG: Merged file does not exists. Check your path and files.")
    return None


def get_all(originals_directory=ame_originals_path, saving_directory=ame_dir_path, fillna=True, 
    add_qvalues=True, mode="elemental", fill_value=0):
    """Creates 5 CSV files: Proccesed (1) mass16, (2) rct1, and (3) rct2 files. It then creates
    a (4) single CSV merging the first three CSV files. It then creates (5) a proccesed CSV file
    containing isotpic and natural element data with NaN values. If wanted a (6) copy of the fifth
    CSV file is saved with imputed NaN values.

    Args:
        originals_directory (str): path to the Atomic Mass Evaluation directory where the 
            periodic_table csv file is located.
        saving_directory (str): path to directory where the resulting formatted 
            csv file will be saved.
        fillna (bool): if True it fills the missing values. For NaN values not filled by the
            used "mode", then the filling method is just the mean of the entire dataset.
        mode (str): Currently the only supporte mode is Isotopic.
            Missing Values are filled using the isotopic average.
        fill_value (int, float): value to fill remaining missing values with after imputation is finished 
            with selected `mode`. Defaults to 0.
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
        None
    """
    read_mass16(originals_directory=originals_directory, saving_directory=saving_directory)
    read_rct1(originals_directory=originals_directory, saving_directory=saving_directory)
    read_rct2(originals_directory=originals_directory, saving_directory=saving_directory)
    merge_mass_rct(directory=saving_directory, saving_directory=saving_directory, add_qvalues=add_qvalues)
    create_natural_element_data(directory=saving_directory, saving_directory=saving_directory, fillna=fillna, mode=mode, fill_value=fill_value)
    return None

def impute_values(df):
    """Imputes values column-wise element-wise using linear interpolation.

    Args:
        df (DataFrame): dataframe to impute values off. It must contain the following features:
            'Z' (integer):Representing the proton number.
            'A' (integer): Representing the mass number (not the precise atomic mass)

    Returns:
        [type]: [description]
    """
    for i in range(0,119):
        df[df["Z"] == i] = df[df["Z"] == i].sort_values(by="A").interpolate()

        if len(df[df["Z"] == i]) > 1:
            fit_df_original = df[df["Z"] == i].sort_values(by="A").reset_index(drop=True).copy()
            fit_df = fit_df_original.copy()

            col_params = {}
            guess = (0.5, 0.5)

            # Curve fit each column
            for col in fit_df.select_dtypes(np.number).columns:
                if len(fit_df[col].dropna()) > 1: # SHOULD IT BE 0?
                    # Get x & y
                    x = fit_df[col].dropna().index.astype(float).values
                    y = fit_df[col].dropna().values
                    # Curve fit column and get curve parameters
                    params = curve_fit(func, x, y, guess)
                    # Store optimized parameters
                    col_params[col] = params[0]

            # Extrapolate each column
            for col in col_params.keys():
                # Get the index values for NaNs in the column
                x = fit_df_original[pd.isnull(fit_df_original[col])].index.astype(float).values
                # Extrapolate those points with the fitted function
                fit_df_original[col][x] = func(x, *col_params[col])

            df[df["Z"] == i] = fit_df_original.values
    return df


mass16_dtypes = ['float64',
 'int64',
 'int64',
 'int64',
 'int64',
 'float64',
 'object',
 'object',
 'float64',
 'float64',
 'float64',
 'float64',
 'float64',
 'float64',
 'object',
 'object',
 'float64',
 'float64',
 'object',
 'float64']

if __name__ == "__main__":
    get_all(originals_directory=ame_originals_path, saving_directory=ame_dir_path, fillna=True, add_qvalues=True, mode="elemental")


