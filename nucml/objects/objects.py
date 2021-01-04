import pickle
import os

dirname = os.path.dirname(__file__)

def load_zan(type="EXFOR"):
    if type == "EXFOR":
        filename = os.path.join(dirname, 'key_ZAN_EXFOR_value_el_dict.pkl')
    elif type == "AME":
        filename = os.path.join(dirname, 'key_ZAN_AME_value_el_dict.pkl')
    zan_dict = load_obj(filename)
    return zan_dict

def load_obj(file_path):
    with open(file_path, 'rb') as f:
        return pickle.load(f)

def get_element(zan_dict, Z, A, N):
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Element"]

def get_isotope(zan_dict, Z, A, N):
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Isotope"]



# def load_ensdf_ml(log=True, log_sqrt=False, cutoff=False, append_ame=False, basic=-1, num=False, frac=0.3, scaling_type="pt", scaler_dir=None):
#     """Loads the Evalauted Nuclear Structure Data File generated using NucML. This allows the user to load
#     the raw file or preprocessed the dataset for ML applications. See options below.

#     The basic feature allows you to load only some basic features if needed. The AME dataset contains
#     many features including q-reactions and separation energies. Some of these may not be needed. The
#     basic argument allows to quickly remove extra features. 
#         basic = 0: "Level_Number", "Level_Energy", "Protons", "Neutrons", "Mass_Number", "Spin", "Parity", "Atomic_Mass_Micro"
#         basic = 1: "Level_Number", "Level_Energy", "Protons", "Neutrons", "Mass_Number", "Spin", "Parity", 
#             "Atomic_Mass_Micro", 'Mass_Excess', 'Binding_Energy', 'B_Decay_Energy', 'S(2n)', 'S(n)', 'S(p)'
#         Any other number will default to loading the entire set of features.

#     Args:
#         cutoff (bool, optional): If True, the RIPL cutoff ENSDF file is loaded. Defaults to False.
#         log (bool, optional): If True, the log10 is applied to the Level Number feature. It also applies 
#             the square root to the Level Energy feature. Defaults to False.
#         append_ame (bool, optional): if True, it appends the AME database. Defaults to False.
#         basic (int, optional): This allows to retrieve only basic features. 
#             Only meaningful when append_ame is True. Defaults to -1.
#         num (bool, optional): [description]. Defaults to False.
#         frac (float, optional): [description]. Defaults to 0.3.
#         scaling_type (str, optional): [description]. Defaults to "pt".
#         scaler_dir ([type], optional): [description]. Defaults to None.

#     Returns:
#         DataFrame: if num=True, the function returns 6 variables. 
#     """    
#     if cutoff:
#         datapath = "../../ENSDF/CSV_Files/ensdf_cutoff.csv"
#     else:
#         datapath = "../../ENSDF/CSV_Files/ensdf.csv"

#     logging.info("Reading data from {}".format(datapath))
#     df = pd.read_csv(datapath)
#     df["Level_Number"] = df["Level_Number"].astype(int)


#     if log_sqrt and not log:
#         df["Level_Energy"] = np.sqrt(df["Level_Energy"])
#         df["Level_Number"] = np.log10(df["Level_Number"])
#     if log and not log_sqrt:
#         df = df[(df["Level_Energy"] != 0)]
#         df["Level_Energy"] = np.log10(df["Level_Energy"])
#         df["Level_Number"] = np.log10(df["Level_Number"])
#     if append_ame:
#         ame = load_ame(imputed_nan=True)
#         df = pd.merge(df, ame, on='Element_w_A')

#     if basic == 0:
#         basic_cols = ["Level_Number", "Energy", "Z", "N", "A", "Spin", "Parity", "Atomic_Mass_Micro"]
#         df = df[basic_cols]
#     elif basic == 1:
#         basic_cols = ["Level_Number", "Energy", "Z", "N", "A", "Spin", "Parity", "Atomic_Mass_Micro",
#                     'Mass_Excess', 'Binding_Energy', 'B_Decay_Energy', 'S(n)', 'S(p)']
#         df = df[basic_cols] 

#     if num:
#         logging.info("Dropping unnecessary features and one-hot encoding categorical columns...")
#         if basic == 0 or basic == 1:
#             cat_cols = ["Parity"]
#         else:
#             columns_drop = ["Target_Element_w_A", "EL", "O", "Decay_Info", "ENSDF_Spin"]
#             cat_cols = ["Parity", "Flag"]
#             df = df.drop(columns=columns_drop)
#         # We need to keep track of columns to normalize excluding categorical data.
#         norm_columns = len(df.columns) - len(cat_cols) - 1
#         df = pd.concat([df, pd.get_dummies(df[cat_cols])], axis=1).drop(columns=cat_cols)
#         df = df.fillna(value=0)
#         logging.info("Splitting dataset into training and testing...")
#         x_train, x_test, y_train, y_test = train_test_split(df.drop(["Level_Energy"], axis=1), df["Level_Energy"], test_size=frac)
#         logging.info("Normalizing dataset...")
#         to_scale = list(x_train.columns)[:norm_columns]
#         if log_sqrt or log:
#             to_scale.remove("Level_Number")
#         if scaler_dir is not None:
#             logging.info("Using previously saved scaler.")
#             scaler = load(open(scaler_dir, 'rb'))
#         else:
#             logging.info("Fitting new scaler.")
#             if scaling_type == "pt":
#                 scaler = preprocessing.PowerTransformer().fit(x_train[to_scale])
#             elif scaling_type == "std":
#                 scaler = preprocessing.StandardScaler().fit(x_train[to_scale])
#             elif scaling_type == "minmax":
#                 scaler = preprocessing.MinMaxScaler().fit(x_train[to_scale])
#         x_train[to_scale] = scaler.transform(x_train[to_scale])
#         x_test[to_scale] = scaler.transform(x_test[to_scale])
#         logging.info("Finished. Resulting dataset has shape {}, Training and Testing dataset shapes are {} and {} respesctively.".format(df.shape, x_train.shape, x_test.shape))
#         return df, x_train, x_test, y_train, y_test, to_scale, scaler
#     else:
#         logging.info("Finished. Resulting dataset has shape {}".format(df.shape))
#         return df