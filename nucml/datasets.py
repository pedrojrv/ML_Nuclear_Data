import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
import os.path
from pathlib import Path

# TO DO: MAKE PATH ABSOLUTE
def load_ame(nan=False):
    """Loads the Atomic Mass Evaluation 2016 data.

    Args:
        nan (bool): if True, the original AME data will be loaded. If False,
        then the imputed data is loaded.

    Returns:
        DataFrame: a pandas dataframe cantaining the AME data.

    """
    if nan:
        # path="../AME/AME_final_properties_w_NaN.csv"
        path=r"C:\Users\Pedro\Desktop\ML_Nuclear_Data\AME\AME_final_properties_w_NaN.csv"
    else:
        path=r"C:\Users\Pedro\Desktop\ML_Nuclear_Data\AME\AME_final_properties_no_NaN.csv"
    ame = pd.read_csv(path)
    return ame

def load_endf(element, MT, mode="neutrons", mev_to_ev=True, mb_to_b=True):
    """Reads Evaluated Nuclear Data File for a specific element and reaction channel.

    Args:
        element (str): element to query. Must be in ELAAA format (i.e. U233, Cl35)
        MT (str): reaction channel to query. Must be in MT### format (i.e. MT018, MT101)
        mev_to_ev (bool): if True, it converts energy from meV to eV.
        mb_to_b (bool): if True, it converts the cross sections from mb to b.

    Returns:
        DataFrame: (Energy, Cross Section) Pandas DataFrame.
        None: if file does not exist. This might also be raised if the arguments are not formated correctly.

    """
    path = r"C:\Users\Pedro\Desktop\ML_Nuclear_Data" + r"\ML_Data\ENDF_" + mode + r"\\" + \
            element +  r"\endfb8.0\tables\xs\n-" + element + "-" + MT + ".endfb8.0"
    # path = "../ML_Data/ENDF/neutron/" + element + "/endfb8.0/tables/xs/n-" + element + "-" + MT + ".endfb8.0"
    print(path)
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
        if "dData" in list(endf.columns):
            endf = endf.drop(columns=["dData"])
        if "dData2" in list(endf.columns):
            endf = endf.drop(columns=["dData2"])
        print("Finish reading ENDF data with shape: ", endf.shape)
        return endf
    else:
        print("File does not exists.")
        return None


def load_exfor(mode="neutrons", plot_df=False, low_en=False, basic=False, num=False, frac=0.2, elemental=False, Z=0, nat_iso="I"):
    datapath = r"C:\Users\Pedro\Desktop\ML_Nuclear_Data" + r"\ML_Data\EXFOR_" + mode + r"\EXFOR_" + mode + "_MF3_AME_no_NaNRaw.csv"
    print(datapath)
    
    """Loads and processes EXFOR data."""
    print("Reading data into dataframe...")
    df = pd.read_csv(datapath, dtype=dtype_exfor).dropna()
    df = df[~df.Reaction_Notation.str.contains("WTR")]
    df = df[~df.Title.str.contains("DERIV")]
    df = df[~(df.Energy == 0)]
    if low_en:
        df = df[df.Energy < 2.0E7]
    if elemental:
        df = load_exfor_element(df, Z, nat_iso=nat_iso, one_hot=False, scale=False, scaler=None, to_scale=[])
    if plot_df:
        print("Creating a copy of the dataframe...")
        df_plotting = df.copy()
    if basic:
        basic_cols = ["Energy", "dEnergy", "Data", "dData", "MT", "Target_Protons", "Frame",
                      "Target_Neutrons", "Target_Mass_Number", "Target_Flag"]
        df = df[basic_cols]
    print("Data read into dataframe with shape: ", df.shape)
    if num:
        print("Dropping unnecessary features and one-hot encoding categorical columns...")
        if basic:
            columns_drop = ["dData", "dEnergy"]
            cat_cols = ["MT", "Frame", "Target_Flag"]
        else:
            columns_drop = ["Reaction_Notation", "Title", "Institute", "Date", "Reference", "Out", "Target_Element",
                            "Target_Element_w_A", "Compound_EL", "EntrySubP", "EXFOR_Status", "Year", "dData", "dEnergy"]
            cat_cols = ["Target_Meta_State", "MT", "I78", "Product_Meta_State", "Frame", "Target_Flag",
                        "Target_Origin", "Compound_Origin"]
        df.drop(columns=columns_drop, inplace=True)
        norm_columns = len(df.columns) - len(cat_cols) - 1
        df = pd.concat([df, pd.get_dummies(df[cat_cols])], axis=1).drop(columns=cat_cols)
        print("Splitting dataset into training and testing...")
        x_train, x_test, y_train, y_test = train_test_split(df.drop(["Data"], axis=1), df["Data"], test_size=frac)
        print("Normalizing dataset...")
        to_scale = list(x_train.columns)[:norm_columns]
        scaler = preprocessing.PowerTransformer().fit(x_train[to_scale])
        x_train[to_scale] = scaler.transform(x_train[to_scale])
        x_test[to_scale] = scaler.transform(x_test[to_scale])
        print("Finished. Resulting dataset has shape ", df.shape,
            "\nTraining and Testing dataset shapes are {} and {} respesctively.".format(x_train.shape, x_test.shape))
        if plot_df:
            return df, df_plotting, x_train, x_test, y_train, y_test, to_scale, scaler
        else:
            return df, x_train, x_test, y_train, y_test, to_scale, scaler
    else:
        print("Finished. Resulting dataset has shape ", df.shape)
        if plot_df:
            return df, df_plotting
        else:
            return df

def load_exfor_element(df, Z, nat_iso="I", one_hot=True, scale=False, scaler=None, to_scale=[]):
    """
    Loads EXFOR data for a particular element (includes all isotopes)
    """
    print("Extracting samples from dataframe.")
    if one_hot:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Flag_" + nat_iso] == 1)].sort_values(by='Energy', ascending=True)
    else:
        sample = df[(df["Target_Protons"] == Z) & (df["Target_Flag"] == nat_iso)].sort_values(by='Energy', ascending=True)
    if scale:
        print("Scaling dataset...")
        sample[to_scale] = scaler.transform(sample[to_scale])
    print("EXFOR extracted DataFrame has shape: ", sample.shape)
    return sample


# df.dtypes.apply(lambda x: x.name).to_dict()
dtype_exfor = {'Target_Meta_State': 'category',
            'MT': 'category',
            'Energy': 'float64',
            'dEnergy': 'float64',
            'Data': 'float64',
            'dData': 'float64',
            'ELV/HL': 'float64',
            'dELV/HL': 'float64',
            'I78': 'category',
            'EntrySubP': 'str',
            'Target_Protons': 'int32',
            'Product_Meta_State': 'category',
            'EXFOR_Status': 'category',
            'Frame': 'category',
            'Reaction_Notation': 'category',
            'Title': 'category',
            'Year': 'int32',
            'Institute': 'category',
            'Date': 'int32',
            'Reference': 'category',
            'Out': 'category',
            'Target_Neutrons': 'int32',
            'Target_Mass_Number': 'int32',
            'Target_Element': 'category',
            'Target_Flag': 'category',
            'Target_Element_w_A': 'category',
            'Target_Radius': 'float64',
            'Target_Neut_Rad_Ratio': 'float64',
            'Target_Origin': 'category',
            'Target_Mass_Excess': 'float64',
            'Target_dMass_Excess': 'float64',
            'Target_Binding_Energy': 'float64',
            'Target_dBinding_Energy': 'float64',
            'Target_B_Decay_Energy': 'float64',
            'Target_dB_Decay_Energy': 'float64',
            'Target_Atomic_Mass_Micro': 'float64',
            'Target_dAtomic_Mass_Micro': 'float64',
            'Target_S(2n)': 'float64',
            'Target_dS(2n)': 'float64',
            'Target_S(2p)': 'float64',
            'Target_dS(2p)': 'float64',
            'Target_S(n)': 'float64',
            'Target_dS(n)': 'float64',
            'Target_S(p)': 'float64',
            'Target_dS(p)': 'float64',
            'Compound_Neutrons': 'int32',
            'Compound_Mass_Number': 'int32',
            'Compound_Protons': 'int32',
            'Compound_EL': 'category',
            'Compound_Origin': 'category',
            'Compound_Mass_Excess': 'float64',
            'Compound_dMass_Excess': 'float64',
            'Compound_Binding_Energy': 'float64',
            'Compound_dBinding_Energy': 'float64',
            'Compound_B_Decay_Energy': 'float64',
            'Compound_dB_Decay_Energy': 'float64',
            'Compound_Atomic_Mass_Micro': 'float64',
            'Compound_dAtomic_Mass_Micro': 'float64',
            'Compound_S(2n)': 'float64',
            'Compound_dS(2n)': 'float64',
            'Compound_S(2p)': 'float64',
            'Compound_dS(2p)': 'float64',
            'Compound_S(n)': 'float64',
            'Compound_dS(n)': 'float64',
            'Compound_S(p)': 'float64',
            'Compound_dS(p)': 'float64'}
