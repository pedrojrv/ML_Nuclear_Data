import natsort
from natsort import natsorted
import os
import shutil
import pandas as pd
import numpy as np

def get_c4_names(exfor_directory):
    """Searches directory for EXFORs C4 files and returns a list of relative paths for each one.

    Args:
        exfor_directory (str): path to exfor directory containing c4 files.

    Returns:
        list: contains relative path to each c4 file.

    """
    print("Searching {} directory for .c4 files...".format(exfor_directory))
    names = []
    for root, dirs, files in os.walk(exfor_directory):
        for file in files:
            if file.endswith(".c4"):
                names.append(os.path.join(root, file))

    print("Finished. Found {} .c4 files.".format(len(names)))
    names = natsorted(names)
    return names

def initialize_directories(path):
    """Creates or resets the given directories.

    Args:
        path (str): directory to reset or create.

    Returns:
        None

    """
    if os.path.isdir(path):
        shutil.rmtree(path)
        os.makedirs(path)
        print("Directory restarted.")
    else:
        os.makedirs(path)
        print("Directory created.")

def get_raw_datapoints(c4_list, path):
    """Collects the data section of the c4 files into a single TXT file.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files (needs to hold more than 6 GB of information).

    Returns:
        None

    """
    if os.path.exists(path + "/all_cross_sections.txt"):
        print("Removing previous all_cross_sections.txt file...")
        os.remove(path + "/all_cross_sections.txt")
    print("Extracting experimental data from all .c4 EXFOR files...")
    for i in c4_list:
        with open(i) as infile, open((path + "/all_cross_sections.txt"), 'a') as outfile:
            copy = False
            for line in infile:
                if line.startswith(r"#---><---->o<-><-->ooo<-------><-------><-------><-------><-------><-------><-------><-------><-><-----------------------><---><->o"):
                    copy = True
                    continue
                elif line.startswith(r"#/DATA"):
                    copy = False
                    continue
                elif copy:
                    outfile.write(line)
            infile.close()
            outfile.close()
    print("Finished extracting all experimental data.")

    print("Formatting extracted data using given fortran format...")
    with open(path + "/all_cross_sections.txt") as infile, open(path + "/all_cross_sections_v1.txt", 'w') as outfile:
        for line in infile:
            if line.strip():
                string = list(line)
                for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                    string.insert(i + j, ';')
                outfile.write("".join(string))
    print("Finished formating EXFOR data. Saved to " + path + "/all_cross_sections_v1.txt")
    os.remove(path + "/all_cross_sections.txt")
    return None


def get_authors(c4_list, path):
    """Retrieves the avaliable Authors from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting AUTHORS ...")
    for i in c4_list:
        with open(i) as infile, open(path + '/authors.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#AUTHOR1"):
                    outfile.write(line)
    print("Finished extracting AUTHORS.")
    return None

def get_years(c4_list, path):
    """Retrieves the avaliable Years from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting YEARS ...")
    for i in c4_list:
        with open(i) as infile, open(path + '/years.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#YEAR"):
                    outfile.write(line)
    print("Finished extracting YEARS.")
    return None

def get_institutes(c4_list, path):
    """Retrieves the avaliable Institutes from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting INSTITUTES ...")
    for i in c4_list:
        with open(i) as infile, open(path + '/institutes.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#INSTITUTE"):
                    outfile.write(line)
    print("Finished extracting INSTITUTES.")
    return None


def get_dates(c4_list, path):
    """Retrieves the avaliable Dates from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting DATES ...")
    for i in c4_list:
        with open(i) as infile, open(path + '/dates.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#DATE"):
                    outfile.write(line)
    print("Finished extracting DATES.")
    return None



def get_titles(c4_list, path):
    """Retrieves the avaliable experiment Titles from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting TITLES ...")
    for i in c4_list:
        with open(i, "r") as infile, open(path + '/titles.txt', 'a') as outfile:
            lines = infile.readlines()
            for z, line in enumerate(lines):
                if line.startswith(r"#TITLE"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        outfile.write(line)
    print("Finished extracting TITLES.")
    return None



def get_references(c4_list, path):
    """Retrieves the avaliable references for all experiments from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting REFERENCES ...")
    for i in c4_list:
        with open(i, "r") as infile, open(path + '/references.txt', 'a') as outfile:
            lines = infile.readlines()
            for z, line in enumerate(lines):
                if line.startswith(r"#REFERENCE"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        outfile.write(line)
    print("Finished extracting REFERENCES.")
    return None


def get_reaction_notations(c4_list, path):
    """Retrieves the avaliable reaction notation from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting REACTION NOTATION ...")
    for i in c4_list:
        with open(i, "r") as infile, open(path + '/reaction_notations.txt', 'a') as outfile:
            lines = infile.readlines()
            for z, line in enumerate(lines):
                if line.startswith(r"#REACTION"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        outfile.write(line)
    print("Finished extracting REACTION NOTATION.")
    return None



def get_datapoints_per_experiment(c4_list, path):
    """Retrieves the number of data points per experiment from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        path (str): path to directory for saving files.

    Returns:
        None

    """
    print("Extracting Data Points per Experiment ...")
    for i in c4_list:
        with open(i, "r") as infile, open(path + '/data_points_per_experiment_refined.txt', 'a') as outfile:
            lines = infile.readlines()
            for z, line in enumerate(lines):
                if line.startswith(r"#DATA "):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            outfile.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        outfile.write(line)
    print("Finished extracting Data Points per Experiment.")
    return None


def get_all(c4_list, heavy_path, path):
    """Retrieves all avaliable information from all .c4 files. This function combines the
    proccesses defined on:

    It is optimized to run faster than running the individual functions.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        heavy_path (str): path to directory where heavy files are to be saved.
        path (str): path to directory where temporary files are to be saved.

    Returns:
        None

    """
    if os.path.exists(heavy_path + "/all_cross_sections.txt"):
        os.remove(heavy_path + "/all_cross_sections.txt")

    initialize_directories(path)
    initialize_directories(heavy_path)

    print("Extracting experimental data, authors, years, institutes, and dates...")
    for i in c4_list:
        with open(i) as infile, \
            open((heavy_path + "/all_cross_sections.txt"), 'a') as num_data, \
            open(path + '/authors.txt', 'a') as authors, \
            open(path + '/years.txt', 'a') as years, \
            open(path + '/institutes.txt', 'a') as institute, \
            open(path + '/dates.txt', 'a') as date:
            copy = False
            for line in infile:
                if line.startswith(r"#AUTHOR1"):
                    copy=False
                    authors.write(line)
                elif line.startswith(r"#YEAR"):
                    copy=False
                    years.write(line)
                elif line.startswith(r"#INSTITUTE"):
                    copy=False
                    institute.write(line)
                elif line.startswith(r"#DATE"):
                    copy=False
                    date.write(line)
                elif line.startswith(r"#---><---->o<-><-->ooo<-------><-------><-------><-------><-------><-------><-------><-------><-><-----------------------><---><->o"):
                    copy = True
                    continue
                elif line.startswith(r"#/DATA"):
                    copy = False
                    continue
                elif copy:
                    num_data.write(line)
            infile.close()
            authors.close()
            years.close()
            institute.close()
            date.close()
            num_data.close()
    print("Finish extracting experimental data, authors, years, institutes, and datas.")
    print("Extracting titles, references, and number of data points per experiment...")
    for i in c4_list:
        with open(i, "r") as infile, \
            open(path + '/titles.txt', 'a') as titles, \
            open(path + '/references.txt', 'a') as references, \
            open(path + '/data_points_per_experiment_refined.txt', 'a') as data_points, \
            open(path + '/reaction_notations.txt', 'a') as reactions:
            lines = infile.readlines()
            for z, line in enumerate(lines):
                if line.startswith(r"#TITLE"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                titles.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                titles.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            titles.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        titles.write(line)

                elif line.startswith(r"#REFERENCE"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                references.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                references.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            references.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        references.write(line)

                elif line.startswith(r"#DATA "):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                data_points.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                data_points.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            data_points.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        data_points.write(line)


                elif line.startswith(r"#REACTION"):
                    if lines[z + 2].startswith(r"#+"):
                        if lines[z + 4].startswith(r"#+"):
                            if lines[z + 6].startswith(r"#+"):
                                reactions.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + " " +
                                              str(lines[z+6].strip('#+').strip()) + "\n")
                            else:
                                reactions.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + " " +
                                              str(lines[z+4].strip('#+').strip()) + "\n")
                        else:
                            reactions.write(str(line.strip('\n')) + " " + str(lines[z+2].strip('#+').strip()) + "\n")
                    else:
                        reactions.write(line)
            infile.close()
            titles.close()
            references.close()
            data_points.close()
            reactions.write(line)
    print("Finished extracting titles, references, and number of data points per experiment.")
    print("Formatting experimental data...")
    with open(heavy_path + "/all_cross_sections.txt") as infile, open(heavy_path + "/all_cross_sections_v1.txt", 'w') as outfile:
        for line in infile:
            if line.strip():
                string = list(line)
                for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                    string.insert(i + j, ';')
                outfile.write("".join(string))
    print("Finished formating experimental data.")
    os.remove(heavy_path + "/all_cross_sections.txt")
    print("Finished.")
    return None

def csv_creator(heavy_path, path, mode, ame_dir, append_ame=True, fillna=True):
    """Creates a CSV file containing all extracted features using:
    LIST FUNCTIONS ABOVE
    GIVE FLEXIBILITY TO JUST APPEND THE ONES THEY have
    BE ABLE TO SELECT MF
    GIVE ABILITY TO ADD MORE INFORMATION

    Args:
        heavy_path (str): path to directory where heavy files are to be saved.
        path (str): path to directory where temporary files are to be saved.
        ame_dir (str): path to directory where proccessed AME files are saved.
        append_ame (bool): if True, the AME data will be appended to the final EXFOR CSV.
        fillna (bool): if True, an additional CSV file .

    Returns:
        None

    """
    print("Reading data points from {}/all_cross_sections_v1.txt file into a DataFrame...".format(heavy_path))
    colnames = ["Prj", "Targ", "Target_Meta_State", "MF", "MT", "PXC",  "Energy",  "dEnergy",  "Data", \
            "dData",   "Cos/LO",   "dCos/LO",   "ELV/HL",  "dELV/HL", "I78", "Refer", "(YY)", "EntrySubP"]
    df = pd.read_csv(heavy_path + "/all_cross_sections_v1.txt", names=colnames, header=None, index_col=False, sep=";")

    print("Formatting data (this may take a couple minutes)...")
    # make string version of original column
    df['Targ'] = df['Targ'].astype(str)

    # Making Sure all rows have the same number of values
    max_length = 5
    df.Targ = df.Targ.apply(lambda x: '0'*(max_length - len(x)) + x)

    # Target feature is formated as ZZAAA
    df['Z'] = df['Targ'].str[0:2].astype(int).fillna(0)
    df['M'] = df['Targ'].str[2:5].astype(int).fillna(0)

    # Calculating number of neutrons = mass number - protons
    df['N'] = df['M'] - df["Z"]

    # unmarked rows are assumed to be at  ground state so we assign G value
    df["Target_Meta_State"] = df["Target_Meta_State"].replace(to_replace=" ", value="All")

    # PXC describes three different variables
    # We extract the data to independent features
    df['Product_Meta_State'] = df['PXC'].astype(str).str[0:1].replace(to_replace=" ", value="All")
    df['EXFOR_Status'] = df['PXC'].astype(str).str[1:2].replace(to_replace=" ", value="Other")
    df['Frame'] = df['PXC'].astype(str).str[2:3].replace(to_replace=" ", value="L")
    df["(YY)"] = df["(YY)"].astype(str)
    df["EntrySubP"] = df["(YY)"]

    # Defining Numerical Columns to Fix and casting them as strings
    cols = ["Energy", "dEnergy", "Data", "dData", "Cos/LO", "dCos/LO", "ELV/HL", "dELV/HL"]
    df[cols] = df[cols].astype(str)

    # df[cols] = df[cols].replace(to_replace="         ", value="0.0000000")
    df[cols] = df[cols].replace(to_replace="         ", value=np.nan)

    # We now strip values that may contain quatation marks and starting and trailing spaces
    for col in cols:
        df[col] = df[col].str.strip("\"")
        df[col] = df[col].str.strip()

    # df[cols] = df[cols].replace(to_replace="", value="0.0000000")
    df[cols] = df[cols].replace(to_replace="", value=np.nan)

    # For the numerical values we know per formatting that each of them should be 9 characters in length
    max_length = 9

    for col in cols:
        df[col] = df[col].apply(lambda x: x if pd.isnull(x) else ' '*(max_length - len(x)) + x)

    # Add appropiate formating for python to recognize it as numerical
    for col in cols:
        new_col = []
        values = df[col].values
        for x in values:
            if pd.isnull(x):
                new_col.append(x)
            elif "+" == x[7]:
                y = x[0:7]
                z = x[7:]
                new_col.append(y + "E" + z)
            elif "+" == x[6]:
                y = x[0:6]
                z = x[6:]
                new_col.append(y + "E" + z)
            elif "-" == x[7]:
                y = x[0:7]
                z = x[7:]
                new_col.append(y + "E" + z)
            elif "-" == x[6]:
                y = x[0:6]
                z = x[6:]
                new_col.append(y + "E" + z)
            else:
                new_col.append(x)
        df[col] = new_col

    # We now convert the columns to numerical
    for col in cols:
        df[col] = df[col].astype(float)
        print("Finish converting {} to float.".format(col))

    cat_cols = ["Target_Meta_State", "MF", "MT", "I78", "Product_Meta_State", "Frame"]

    # Convering all columns to strings and stripping whitespace
    for col in cat_cols:
        df[col] = df[col].astype(str)
        df[col] = df[col].str.strip("\"")
        df[col] = df[col].str.strip()

    # Replace empty values in I78 for L representing Low
    df["I78"] = df["I78"].replace(to_replace="", value="Other")

    df.drop(columns=["(YY)", 'Targ', "PXC"], inplace=True)

    print("Reading .txt files from {} into DataFrames...".format(path))
    # Reading experiments reaction notation
    df1 = pd.read_csv(path + "/reaction_notations.txt", delim_whitespace=True, header=None)
    df1.columns = ["Reaction", "Type"]

    # Reading Experiment Titles
    df2 = pd.read_csv(path + "/titles.txt", sep="#TITLE      ", header=None, engine="python")
    df2.columns = ["Keyword", "Title"]

    # Reading Data Points per Experiment
    df3 = pd.read_csv(path + "/data_points_per_experiment_refined.txt",  delim_whitespace=True, header=None)
    df3.columns = ["Data", "Multiple"]

    # Reading Experiment Year
    df4 = pd.read_csv(path + "/years.txt", delim_whitespace=True, header=None)
    df4.columns = ["Keyword", "Year"]

    # Reading Experiment Date
    df5 = pd.read_csv(path + "/authors.txt", sep="    ", header=None, engine="python")
    df5.columns = ["Keyword", "Author"]

    # Reading Experiment Institute
    df6 = pd.read_csv(path + "/institutes.txt", sep="  ", header=None, engine="python")
    df6.columns = ["Keyword", "Institute"]

    # Reading Experiment Year
    df7 = pd.read_csv(path + "/dates.txt", delim_whitespace=True, header=None)
    df7.columns = ["Keyword", "Date"]

    # Reading Experiment Refere
    df8 = pd.read_csv(path + "/references.txt", sep="#REFERENCE  ", header=None, engine="python")
    df8.columns = ["Keyword", "Reference"]

    # Merging Datapoints, notation and titles and expanding based on datapoints
    print("Expanding information based on the number of datapoints per experimental campaign...")
    pre_final = pd.concat([df3, df1, df2, df4, df5, df6, df7, df8], axis=1)
    final = pre_final.reindex(pre_final.index.repeat(pre_final.Multiple))
    final['position'] = final.groupby(level=0).cumcount() + 1

    # Extracting projectile and outogoing particle
    final["reaction_notation"] = final.Type.str.extract('.*\((.*)\).*')

    final["reaction_notation2"] = final["reaction_notation"].apply(lambda x: x.split(')')[0])
    final = pd.concat([final, final["reaction_notation2"].str.split(',', expand=True)], axis=1)

    # Formatting Columns
    new_columns = list(final.columns)[:19]
    new_columns.extend(["Projectile", "Out"])
    final.columns = new_columns

    # Indexing only required information and saving file
    final = final[["Type", "Title", "Year", "Institute", "Author", "Date", "Reference", "Out"]]

    # Reset Indexes to make copying faster
    df = df.reset_index(drop=True)
    final = final.reset_index(drop=True)

    print("Appending information to main DataFrame...")
    # Assign newly extracted data to main dataframe
    df["Type"] = final["Type"]
    df["Title"] = final["Title"]
    df["Year"] = final["Year"]
    df["Author"] = final["Author"]
    df["Institute"] = final["Institute"]
    df["Date"] = final["Date"]
    df["Reference"] = final["Reference"]
    df["Out"] = final["Out"]

    df.Title = df.Title.fillna("No Title")
    # df = df[df.N != -1]
    df["Reference"] = df["Author"] + " " + df["Reference"]
    df = df.drop(columns=["Refer", "Author"])
    df.Reference = df.Reference.fillna(df["Title"])

    print("CHECKPOINT: Saving EXFOR CSV file to {}...".format(heavy_path + "/EXFOR_" + mode + "_ORIGINAL.csv"))
    df.to_csv(heavy_path + "/EXFOR_" + mode + "_ORIGINAL.csv", index=False)

    if append_ame:
        print("Reading AME file...")
        df_workxs = df.copy()
        masses = pd.read_csv(ame_dir + "/AME_final_properties_no_NaN.csv").rename(
            columns={'N': 'Neutrons', 'A': 'Mass_Number', 'Neutrons':'N', 'Mass_Number':'M'})

        df_workxs = df_workxs.reset_index(drop=True)
        masses = masses.reset_index(drop=True)
        print("Appending AME data to EXFOR File...")
        df = df_workxs.merge(masses, on=['N', 'Z'], how='left')

        df["O"].fillna(value="Other", inplace=True)

    print("Creating new CSV file with only reaction data (MF=3)...")
    df.MF = df.MF.astype(str)
    df.MT = df.MT.astype(str)
    df = df[df["MF"] == "3"]
    columns_drop = ["MF", "Cos/LO", "dCos/LO", "Prj", "M_x", "M_y", "N"]
    df = df.drop(columns=columns_drop)

    # We get rid of heavy water measurments
    df = df[~df.EL.isna()]
    df["Neutrons"] = df["Neutrons"].astype(int)
    df["Mass_Number"] = df["Mass_Number"].astype(int)
    df = df.rename(columns={"Z":"Protons", "EL":"Element", "O":"Origin", "Type":"Reaction_Notation"})
    df["Element_w_A"] = df["Mass_Number"].astype(str) + df.Element


    if fillna:
        print("Filling dEnergy, dData, and dELV by reaction channel...")
        df["Uncertainty_E"] = df["dEnergy"]/df["Energy"]
        df["Uncertainty_D"] = df["dData"]/df["Data"]
        df["Uncertainty_ELV"] = df["dELV/HL"]/df["ELV/HL"]

        df["Uncertainty_E"] = df[["MT", "Uncertainty_E"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_D"] = df[["MT", "Uncertainty_D"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_ELV"] = df[["MT", "Uncertainty_ELV"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))

        print("Filling dEnergy, dData, and dELV by Institute...")
        df["Uncertainty_E"] = df[["Institute", "Uncertainty_E"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_D"] = df[["Institute", "Uncertainty_D"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_ELV"] = df[["Institute", "Uncertainty_ELV"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))

        print("Filling dEnergy, dData, and dELV by Isotope...")
        df["Uncertainty_E"] = df[["Element_w_A", "Uncertainty_E"]].groupby("Element_w_A").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_D"] = df[["Element_w_A", "Uncertainty_D"]].groupby("Element_w_A").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_ELV"] = df[["Element_w_A", "Uncertainty_ELV"]].groupby("Element_w_A").transform(lambda x: x.fillna(x.mean()))

        df["Uncertainty_ELV"] = df[["I78", "Uncertainty_ELV"]].groupby("I78").transform(lambda x: x.fillna(x.mean()))

        df.dEnergy = df.dEnergy.fillna(df.Energy * df.Uncertainty_E)
        df.dData = df.dData.fillna(df.Data * df.Uncertainty_D)
        df["dELV/HL"] = df["dELV/HL"].fillna(df["ELV/HL"] * df["Uncertainty_ELV"])

        df.Uncertainty_D = df.Uncertainty_D.replace(to_replace=np.inf, value=0)
        df.dData = df.dData.replace(to_replace=np.nan, value=0)
        df["dELV/HL"] = df["dELV/HL"].replace(to_replace=np.nan, value=0)
        df["ELV/HL"] = df["ELV/HL"].replace(to_replace=np.nan, value=0)

        df.fillna(value=0, inplace=True)

    print("Adding Nuclear Radius and Neutron to Nucleus Radius Ratio data...")
    df["Nuc_Radius_fm"] = 1.25 * np.power(df["Mass_Number"], 1/3)
    df["Neut_Nuc_Rad_Ratio"] = 0.8 / df["Nuc_Radius_fm"]

    # Use this for ordering
    new_order = list(df.columns)[:24]
    new_order_2 = list(df.columns)[-7:]
    new_order.extend(new_order_2)
    nuclear_data_target = list(df.columns)[24:-7]
    new_order.extend(nuclear_data_target)

    # use these for renaming
    nuclear_data_target_cols = ["Target_" + s for s in nuclear_data_target]

    df = df[new_order]

    df = df.rename(columns={"Protons":"Target_Protons", "Neutrons":"Target_Neutrons",
                            "Mass_Number":"Target_Mass_Number", "Element":"Target_Element",
                            "Flag": "Target_Flag", "Nuc_Radius_fm":"Target_Radius",
                            "Neut_Nuc_Rad_Ratio":"Target_Neut_Rad_Ratio", "Element_w_A":"Target_Element_w_A"})
    df = df.drop(columns=["Uncertainty_D", "Uncertainty_E", "Uncertainty_ELV"])

    new_order = list(df.columns)[:28]
    nuclear_data_target = list(df.columns)[28:]
    nuclear_data_target_cols = ["Target_" + s for s in nuclear_data_target]
    new_order.extend(nuclear_data_target_cols)

    df.columns = new_order

    print("Adding information for Compound Nucleus...")
    df["Compound_Neutrons"] = df.Target_Neutrons + 1
    df["Compound_Mass_Number"] = df.Target_Mass_Number + 1
    df["Compound_Protons"] = df.Target_Protons

    masses = pd.read_csv(ame_dir + "/AME_final_properties_no_NaN.csv")
    masses = masses[masses.Flag == "I"]
    masses = masses.drop(columns=["Neutrons", "Mass_Number", "Flag"])
    masses = masses.rename(columns={'N': 'Neutrons', 'A': 'Mass_Number', "Z":"Protons", "O":"Origin"})

    nuclear_data_compound = list(masses.columns)
    nuclear_data_compound_cols = ["Compound_" + s for s in nuclear_data_compound]
    masses.columns = nuclear_data_compound_cols

    df = df.reset_index(drop=True)
    masses = masses.reset_index(drop=True)

    df = df.merge(masses, on=['Compound_Neutrons', 'Compound_Protons'], how='left')

    df = df.drop(columns=["Compound_Mass_Number_y"])
    df = df.rename(columns={'Compound_Mass_Number_x': 'Compound_Mass_Number'})

    print("Dropping Q-Values...")
    q_value = [col for col in df.columns if 'Q' in col]
    df = df.drop(columns=q_value)

    print("Dropping RAW experimental datapoints...")
    df = df[~df.Reaction_Notation.str.contains("RAW")]
    df = df[~(df.Data < 0)]

    print("Saving MF3 NaN Imputed RAW Free EXFOR CSV...")
    df.to_csv(heavy_path + "/EXFOR_" + mode + "_MF3_AME_no_NaNRaw.csv", index=False)
    print("Finished")
    return None


if __name__ == "__main__":
    import sys
    if sys.argv[1] == "-c":
        print("Using custom directories.")
        get_all(exfor_parsing.get_c4_names(sys.argv[2]), sys.argv[3], sys.argv[4])
        csv_creator(sys.argv[3], sys.argv[4], sys.argv[5], append_ame=True, fillna=True)
    elif sys.argv[1] == "-d":
        print("Using default directories.")
        exfor_directory =  "./EXFOR/neutrons_2019_07_18"
        ame_dir = "./AME"

        # I am going to define two different paths
        # (1) one to store temporary light files needed for later compilation
        # (2) one to store resulting files using data from the temporary directory (big files).
        # Notice that if size is not an issue you can define both directories as the same one.
        tmp_path =  "./EXFOR/tmp/Extracted_Text"
        heavy_dir = './ML_Data'

        # This will be appended to the previous directories
        mode = 'neutrons' # protons
        tmp_path = tmp_path + "_" + mode
        heavy_dir = heavy_dir + "/EXFOR_" + mode

        get_all(get_c4_names(exfor_directory), heavy_dir, tmp_path)
        csv_creator(heavy_dir, tmp_path, mode, ame_dir, append_ame=True, fillna=True)
