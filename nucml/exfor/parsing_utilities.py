import os
import shutil
import logging

import numpy as np
import pandas as pd
from natsort import natsorted
import sys

sys.path.append("..")

from nucml import general_utilities # pylint: disable=import-error

ame_dir_path = os.path.abspath("../AME/")

def get_all(c4_list, heavy_path, tmp_path):
    """Retrieves all avaliable information from all .c4 files. This function combines the
    proccesses defined on:

    - get_c4_names()
    - get_raw_datapoints()
    - get_authors()
    - get_years()
    - get_institutes()
    - get_dates()
    - get_titles()
    - get_references()
    - get_reaction_notation()
    - get_datapoints_per_experiment()

    It is optimized to run faster than running the individual functions.

    Args:
        c4_list (list): iterable containing the paths to c4 files.
        heavy_path (str): path to directory where heavy files are to be saved.
        tmp_path (str): path to directory where temporary files are to be saved.

    Returns:
        None

    """
    if len(c4_list) != 0:
        cross_section_file = os.path.join(heavy_path, "all_cross_sections.txt")
        if os.path.exists(cross_section_file):
            os.remove(cross_section_file)

        general_utilities.initialize_directories(tmp_path)
        general_utilities.initialize_directories(heavy_path)

        logging.info("EXFOR: Extracting experimental data, authors, years, institutes, and dates...")
        for i in c4_list:
            with open(i) as infile, \
                open(os.path.join(heavy_path, "all_cross_sections.txt"), 'a') as num_data, \
                open(os.path.join(tmp_path, 'authors.txt'), 'a') as authors, \
                open(os.path.join(tmp_path, 'years.txt'), 'a') as years, \
                open(os.path.join(tmp_path, 'institutes.txt'), 'a') as institute, \
                open(os.path.join(tmp_path, 'dates.txt'), 'a') as date:
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
        logging.info("EXFOR: Finished extracting experimental data, authors, years, institutes, and dates.")
        logging.info("EXFOR: Extracting titles, references, and number of data points per experiment...")
        for i in c4_list:
            with open(i, "r") as infile, \
                open(os.path.join(tmp_path, 'titles.txt'), 'a') as titles, \
                open(os.path.join(tmp_path, 'references.txt'), 'a') as references, \
                open(os.path.join(tmp_path, 'data_points_per_experiment_refined.txt'), 'a') as data_points, \
                open(os.path.join(tmp_path, 'reaction_notations.txt'), 'a') as reactions:
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
        logging.info("EXFOR: Finished extracting titles, references, and number of data points per experiment.")
        logging.info("EXFOR: Formatting experimental data...")
        with open(cross_section_file) as infile, open(os.path.join(heavy_path, "all_cross_sections_v1.txt"), 'w') as outfile:
            for line in infile:
                if line.strip():
                    string = list(line)
                    for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                        string.insert(i + j, ';')
                    outfile.write("".join(string))
        logging.info("EXFOR: Finished formating experimental data.")
        os.remove(cross_section_file)
        logging.info("EXFOR: Finished.")
        return None
    else:
        logging.error("EXFOR ALL:  No .c4 files found. Make sure you specified the path correctly.")
        return None

def csv_creator(heavy_path, tmp_path, mode, ame_dir=ame_dir_path, append_ame=True):
    """Creates a CSV file containing all extracted features generated when using the get_all() function.

    Args:
        heavy_path (str): path to directory where heavy files are to be saved.
        tmp_path (str): path to directory where temporary files are to be saved.
        ame_dir (str): path to directory where proccessed AME files are saved.
        append_ame (bool): if True, the AME data will be appended to the final EXFOR CSV.
        fillna (bool): if True, an additional CSV file .

    Returns:
        None

    """
    logging.info("EXFOR CSV: Reading data points from {}/all_cross_sections_v1.txt file into a DataFrame...".format(heavy_path))

    colnames = ["Prj", "Targ", "Target_Meta_State", "MF", "MT", "PXC",  "Energy",  "dEnergy",  "Data", \
            "dData",   "Cos/LO",   "dCos/LO",   "ELV/HL",  "dELV/HL", "I78", "Refer", "(YY)", "EntrySubP"]
    df = pd.read_csv(os.path.join(heavy_path + "all_cross_sections_v1.txt"), names=colnames, header=None, index_col=False, sep=";")

    ########################################################################################
    ########################################################################################
    ########################################################################################

    logging.info("EXFOR CSV: Formatting data (this may take a couple minutes)...")
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
        logging.info("Finish converting {} to float.".format(col))

    cat_cols = ["Target_Meta_State", "MF", "MT", "I78", "Product_Meta_State", "Frame"]

    # Convering all columns to strings and stripping whitespace
    for col in cat_cols:
        df[col] = df[col].astype(str)
        df[col] = df[col].str.strip("\"")
        df[col] = df[col].str.strip()

    # Replace empty values in I78 for L representing Low
    df["I78"] = df["I78"].replace(to_replace="", value="Other")

    df.drop(columns=["(YY)", 'Targ', "PXC"], inplace=True)

    logging.info("Reading .txt files from {} into DataFrames...".format(tmp_path))
    # Reading experiments reaction notation
    df1 = pd.read_csv(os.path.join(tmp_path, "reaction_notations.txt"), delim_whitespace=True, header=None)
    df1.columns = ["Reaction", "Type"]

    # Reading Experiment Titles
    df2 = pd.read_csv(os.path.join(tmp_path, "titles.txt"), sep="#TITLE      ", header=None, engine="python")
    df2.columns = ["Keyword", "Title"]

    # Reading Data Points per Experiment
    df3 = pd.read_csv(os.path.join(tmp_path, "data_points_per_experiment_refined.txt"),  delim_whitespace=True, header=None)
    df3.columns = ["Data", "Multiple"]

    # Reading Experiment Year
    df4 = pd.read_csv(os.path.join(tmp_path, "years.txt"), delim_whitespace=True, header=None)
    df4.columns = ["Keyword", "Year"]

    # Reading Experiment Date
    df5 = pd.read_csv(os.path.join(tmp_path, "authors.txt"), sep="    ", header=None, engine="python")
    df5.columns = ["Keyword", "Author"]

    # Reading Experiment Institute
    df6 = pd.read_csv(os.path.join(tmp_path, "institutes.txt"), sep="  ", header=None, engine="python")
    df6.columns = ["Keyword", "Institute"]

    # Reading Experiment Year
    df7 = pd.read_csv(os.path.join(tmp_path, "dates.txt"), delim_whitespace=True, header=None)
    df7.columns = ["Keyword", "Date"]

    # Reading Experiment Refere
    df8 = pd.read_csv(os.path.join(tmp_path, "references.txt"), sep="#REFERENCE  ", header=None, engine="python")
    df8.columns = ["Keyword", "Reference"]

    # Merging Datapoints, notation and titles and expanding based on datapoints
    logging.info("Expanding information based on the number of datapoints per experimental campaign...")
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

    logging.info("EXFOR CSV: Appending information to main DataFrame...")
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

    csv_name = os.path.join(heavy_path, "EXFOR_" + mode + "_ORIGINAL.csv")
    logging.info("EXFOR CSV: Saving EXFOR CSV file to {}...".format(csv_name))
    df.to_csv(csv_name, index=False)

    df_personal = df.copy()

    if append_ame:
        logging.info("EXFOR CSV: Reading AME file...")
        df_workxs = df.copy()
        masses = pd.read_csv(os.path.join(ame_dir, "AME_Natural_Properties_w_NaN.csv")).rename(
            columns={'N': 'Neutrons', 'A': 'Mass_Number', 'Neutrons':'N', 'Mass_Number':'M'})

        df_workxs = df_workxs.reset_index(drop=True)
        masses = masses.reset_index(drop=True)
        logging.info("EXFOR CSV: Appending AME data to EXFOR File...")
        df = df_workxs.merge(masses, on=['N', 'Z'], how='left')

        # df["O"].fillna(value="Other", inplace=True)

        csv_name = os.path.join(heavy_path, "EXFOR_" + mode + "_ORIGINAL_w_AME.csv")
        logging.info("EXFOR CSV: Saving EXFOR CSV file to {}...".format(csv_name))
        df.to_csv(csv_name, index=False)

    df = df_personal.copy()

    if append_ame:
        logging.info("EXFOR CSV: Reading AME file...")
        df_workxs = df.copy()
        masses = pd.read_csv(os.path.join(ame_dir, "AME_Natural_Properties_no_NaN.csv")).rename(
            columns={'N': 'Neutrons', 'A': 'Mass_Number', 'Neutrons':'N', 'Mass_Number':'M'})

        df_workxs = df_workxs.reset_index(drop=True)
        masses = masses.reset_index(drop=True)
        logging.info("EXFOR CSV: Appending AME data to EXFOR File...")
        df = df_workxs.merge(masses, on=['N', 'Z'], how='left')

        df["O"].fillna(value="Other", inplace=True)

    logging.info("EXFOR CSV: Creating new CSV file with only MF=3 data...")
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

    logging.info("EXFOR CSV: Filling dEnergy, dData, and dELV by reaction channel...")
    df["Uncertainty_E"] = df["dEnergy"]/df["Energy"]
    df["Uncertainty_D"] = df["dData"]/df["Data"]
    df["Uncertainty_ELV"] = df["dELV/HL"]/df["ELV/HL"]

    df["Uncertainty_E"] = df[["MT", "Uncertainty_E"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
    df["Uncertainty_D"] = df[["MT", "Uncertainty_D"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
    df["Uncertainty_ELV"] = df[["MT", "Uncertainty_ELV"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))

    logging.info("EXFOR CSV: Filling dEnergy, dData, and dELV by Institute...")
    df["Uncertainty_E"] = df[["Institute", "Uncertainty_E"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
    df["Uncertainty_D"] = df[["Institute", "Uncertainty_D"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
    df["Uncertainty_ELV"] = df[["Institute", "Uncertainty_ELV"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))

    logging.info("EXFOR CSV: Filling dEnergy, dData, and dELV by Isotope...")
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

    logging.info("EXFOR CSV: Dropping RAW experimental datapoints...")
    df = df[~df.Reaction_Notation.str.contains("RAW")]
    df = df[~(df.Data < 0)]

    logging.info("EXFOR CSV: Saving MF3 NaN Imputed RAW Free EXFOR CSV...")
    df.to_csv(os.path.join(heavy_path, "EXFOR_" + mode + "_MF3_AME_no_RawNan.csv"), index=False)
    logging.info("Finished")
    return None
    
def get_c4_names(originals_directory):
    """Searches directory for EXFORs C4 files and returns a list of relative paths for each one.

    Args:
        originals_directory (str): path to the EXFOR directory containing all c4 files.

    Returns:
        list: contains relative path to each c4 file. None if no files are found.

    """
    logging.info("C4: Searching {} directory for .c4 files...".format(originals_directory))

    names = general_utilities.get_files_w_extension(originals_directory, "*.c4")
    if len(names) != 0:
        names = natsorted(names)
        logging.info("C4: Finished. Found {} .c4 files.".format(len(names)))
        return names
    else:
        logging.error("C4: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_raw_datapoints(c4_list, saving_directory):
    """Collects the data section of the c4 files into a single TXT file.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files (needs to hold more than 6 GB of information).

    Returns:
        None

    """
    if len(c4_list) != 0:
        if os.path.exists(saving_directory + "/all_cross_sections.txt"):
            logging.info("RAW DATAPOINTS: An all_cross_sections.txt file already exists. Removing to create new file...")
            os.remove(os.path.join(saving_directory, "/all_cross_sections.txt"))

        logging.info("RAW DATAPOINTS: Processing {} .c4 files.".format(len(c4_list)))

        logging.info("RAW DATAPOINTS: Extracting experimental data from all .c4 EXFOR files...")
        for i in c4_list:
            with open(i) as infile, open(os.path.join(saving_directory, "all_cross_sections.txt"), 'a') as outfile:
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
        logging.info("RAW DATAPOINTS: Finished extracting all experimental data.")

        logging.info("RAW DATAPOINTS: Formatting extracted data using EXFORs fortran format...")
        with open(os.path.join(saving_directory, "all_cross_sections.txt")) as infile, open(os.path.join(saving_directory, "all_cross_sections_v1.txt"), 'w') as outfile:
            for line in infile:
                if line.strip():
                    string = list(line)
                    for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                        string.insert(i + j, ';')
                    outfile.write("".join(string))
        logging.info("RAW DATAPOINTS: Finished formating EXFOR data. Saved to {}".format(os.path.join(saving_directory, "all_cross_sections_v1.txt")))
        os.remove(os.path.join(saving_directory + "all_cross_sections.txt"))
        return None
    else:
        logging.error("RAW DATAPOINTS: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_authors(c4_list, saving_directory):
    """Retrieves the avaliable Authors from all entries in all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("AUTHORS: Extracting...")
        for i in c4_list:
            with open(i) as infile, open(os.path.join(saving_directory, 'authors.txt'), 'a') as outfile:
                for line in infile:
                    if line.startswith(r"#AUTHOR1"):
                        outfile.write(line)
        logging.info("AUTHORS: Finished. Saved to {}".format(os.path.join(saving_directory, "authors.txt")))
        return None
    else:
        logging.error("AUTHORS: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_years(c4_list, saving_directory):
    """Retrieves the years from from all .c4 exfor entries.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("YEARS: Extracting...")
        for i in c4_list:
            with open(i) as infile, open(os.path.join(saving_directory, 'years.txt'), 'a') as outfile:
                for line in infile:
                    if line.startswith(r"#YEAR"):
                        outfile.write(line)
        logging.info("YEARS: Finished. Saved to {}".format(os.path.join(saving_directory, "years.txt")))
        return None
    else:
        logging.error("YEARS: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_institutes(c4_list, saving_directory):
    """Retrieves the avaliable Institutes from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("INSTITUTES: Extracting...")
        for i in c4_list:
            with open(i) as infile, open(os.path.join(saving_directory, 'institutes.txt'), 'a') as outfile:
                for line in infile:
                    if line.startswith(r"#INSTITUTE"):
                        outfile.write(line)
        logging.info("INSTITUTES: Finished. Saved to {}".format(os.path.join(saving_directory, "institutes.txt")))
        return None
    else:
        logging.error("INSTITUTES: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_dates(c4_list, saving_directory):
    """Retrieves the avaliable Dates from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("DATES: Extracting...")
        for i in c4_list:
            with open(i) as infile, open(os.path.join(saving_directory, 'dates.txt'), 'a') as outfile:
                for line in infile:
                    if line.startswith(r"#DATE"):
                        outfile.write(line)
        logging.info("DATES: Finished. Saved to {}".format(os.path.join(saving_directory, "dates.txt")))
        return None
    else:
        logging.error("DATES: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_titles(c4_list, saving_directory):
    """Retrieves the avaliable experiment Titles from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("TITLES: Extracting...")
        for i in c4_list:
            with open(i, "r") as infile, open(os.path.join(saving_directory, 'titles.txt'), 'a') as outfile:
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
        logging.info("TITLES: Finished. Saved to {}".format(os.path.join(saving_directory, "titles.txt")))
        return None
    else:
        logging.error("TITLES: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_references(c4_list, saving_directory):
    """Retrieves the avaliable references for all experiments from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("REFERENCES: Extracting...")
        for i in c4_list:
            with open(i, "r") as infile, open(os.path.join(saving_directory, 'references.txt'), 'a') as outfile:
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
        logging.info("REFERENCES: Finished. Saved to {}".format(os.path.join(saving_directory, "references.txt")))
        return None
    else:
        logging.error("REFERENCES: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_reaction_notations(c4_list, saving_directory):
    """Retrieves the avaliable reaction notation from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("REACTION NOTATION: Extracting...")
        for i in c4_list:
            with open(i, "r") as infile, open(os.path.join(saving_directory, 'reaction_notations.txt'), 'a') as outfile:
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
        logging.info("REACTION NOTATION: Finished. Saved to {}".format(os.path.join(saving_directory, "reaction_notation.txt")))
        return None
    else:
        logging.error("REACTION NOTATION: No .c4 files found. Make sure you specified the path correctly.")
        return None

def get_datapoints_per_experiment(c4_list, saving_directory):
    """Retrieves the number of data points per experiment from all .c4 files.

    Args:
        c4_list (list): iterable containing the paths to all c4 files to be processed.
        saving_directory (str): path to directory for saving files.

    Returns:
        None

    """
    if len(c4_list) != 0:
        logging.info("DATA POINTS: Extracting...")
        for i in c4_list:
            with open(i, "r") as infile, open(os.path.join(saving_directory, 'data_points_per_experiment_refined.txt'), 'a') as outfile:
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
        logging.info("DATA POINTS: Finished. Saved to {}".format(os.path.join(saving_directory, "data_points_per_experiment_refined.txt")))
        return None
    else:
        logging.error("DATA POINTS:  No .c4 files found. Make sure you specified the path correctly.")
        return None

# if __name__ == "__main__":
#     import sys
#     if sys.argv[1] == "-c":
#         logging.info("Using custom directories.")
#         get_all(exfor_parsing.get_c4_names(sys.argv[2]), sys.argv[3], sys.argv[4])
#         csv_creator(sys.argv[3], sys.argv[4], sys.argv[5], append_ame=True, fillna=True)
#     elif sys.argv[1] == "-d":
#         logging.info("Using default directories.")
#         exfor_directory =  "./EXFOR/neutrons_2019_07_18"
#         ame_dir = "./AME"

#         # I am going to define two different paths
#         # (1) one to store temporary light files needed for later compilation
#         # (2) one to store resulting files using data from the temporary directory (big files).
#         # Notice that if size is not an issue you can define both directories as the same one.
#         tmp_path =  "./EXFOR/tmp/Extracted_Text"
#         heavy_dir = './ML_Data'

#         # This will be appended to the previous directories
#         mode = 'neutrons' # protons
#         tmp_path = tmp_path + "_" + mode
#         heavy_dir = heavy_dir + "/EXFOR_" + mode

#         get_all(get_c4_names(exfor_directory), heavy_dir, tmp_path)
#         csv_creator(heavy_dir, tmp_path, mode, ame_dir, append_ame=True, fillna=True)
