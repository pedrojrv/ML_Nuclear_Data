import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
from sklearn.metrics import mean_squared_error, r2_score


def load_ensdf(datapath, numerical=False, duplicate=False, give_split=False, frac=0.2, norm=False, log_e=False):
    print("Reading data into dataframe...")
    df = pd.read_csv(datapath)
    print("Data read into dataframe with shape: ", df.shape)

    if duplicate:
        duplicate = df.copy()

    if log_e:
        print("Transforming Energy to Log10(Energy)...")
        df["Level_Energy"] = np.log10(df["Level_Energy"])
    if numerical:
        print("Converting data to numerical...")
        df = df.drop(columns=["Level_Energy_SQRT", "Level_Number_SQRT", "Element_w_A"])      
    if give_split:
        print("Splitting dataset into training and testing...")
        x_train, x_test, y_train, y_test = train_test_split(
            df.drop(["Level_Energy"], axis=1), df["Level_Energy"], test_size=frac)
        if norm:
            # Specify columns to scale
            print("Normalizing dataset..")
            # Specify columns to scale
            to_scale = list(x_train.columns)
            scaler = preprocessing.StandardScaler().fit(x_train[to_scale])
            x_train[to_scale] = scaler.transform(x_train[to_scale])
            x_test[to_scale] = scaler.transform(x_test[to_scale])
        print("Finished.")
        if duplicate:
            return df, duplicate, x_train, x_test, y_train, y_test, to_scale, scaler
        else:
            return df, x_train, x_test, y_train, y_test, to_scale, scaler
    else:
        print("Finished")
        return df, duplitcate