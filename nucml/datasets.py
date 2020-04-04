import pandas as pd

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


def load_exfor(nan=False):
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
