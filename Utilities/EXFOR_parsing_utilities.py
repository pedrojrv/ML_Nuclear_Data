import natsort
from natsort import natsorted
import os
import shutil
import pandas as pd
import numpy as np

def get_c4_names(exfor_directory):
    print("Searching directory for .c4 files...")
    names = []
    for root, dirs, files in os.walk(exfor_directory):
        for file in files:
            if file.endswith(".c4"):
                names.append(os.path.join(root, file))

    print("Gathered {} .c4 files.".format(len(names)))
    names = natsorted(names)
    return names

def initialize_directories(tmp_path, saving_directory):
    if os.path.isdir(tmp_path):
        shutil.rmtree(tmp_path)
        os.makedirs(tmp_path)
        print("Temporary Directory restarted.")
    else:
        os.makedirs(tmp_path)
        print("Temporary Directory created.")

    if os.path.isdir(saving_directory):
        shutil.rmtree(saving_directory)
        os.makedirs(saving_directory)
        print("Saving Directory restarted.")
    else:
        os.makedirs(saving_directory)
        print("Saving Directory created.")

def get_datapoints(c4_list, saving_directory):
    if os.path.exists(saving_directory + "/all_cross_sections.txt"):
        os.remove(saving_directory + "/all_cross_sections.txt")
    print("Extracting experimental data from the c4 EXFOR files ...")
    for i in c4_list:
        with open(i) as infile, open((saving_directory + "/all_cross_sections.txt"), 'a') as outfile:
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

    print("Formatting extracted data...")
    with open(saving_directory + "/all_cross_sections.txt") as infile, open(saving_directory + "/all_cross_sections_v1.txt", 'w') as outfile:
        for line in infile:
            if line.strip():
                string = list(line)
                for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                    string.insert(i + j, ';')
                outfile.write("".join(string))
    print("Finished formating EXFOR data.")
    os.remove(saving_directory + "/all_cross_sections.txt")

def get_authors(c4_list, tmp_path):
    print("Extracting AUTHORS ...")
    for i in c4_list:
        with open(i) as infile, open(tmp_path + '/authors.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#AUTHOR1"):
                    outfile.write(line)
    print("Finished extracting AUTHORS.")

def get_years(c4_list, tmp_path):
    print("Extracting YEARS ...")
    for i in c4_list:
        with open(i) as infile, open(tmp_path + '/years.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#YEAR"):
                    outfile.write(line)
    print("Finished extracting YEARS.")

def get_institutes(c4_list, tmp_path):
    print("Extracting INSTITUTES ...")
    for i in c4_list:
        with open(i) as infile, open(tmp_path + '/institutes.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#INSTITUTE"):
                    outfile.write(line)
    print("Finished extracting INSTITUTES.")


def get_dates(c4_list, tmp_path):
    print("Extracting DATES ...")
    for i in c4_list:
        with open(i) as infile, open(tmp_path + '/dates.txt', 'a') as outfile:
            for line in infile:
                if line.startswith(r"#DATE"):
                    outfile.write(line)
    print("Finished extracting DATES.")



def get_titles(c4_list, tmp_path):
    print("Extracting TITLES ...")
    for i in c4_list:
        with open(i, "r") as infile, open(tmp_path + '/titles.txt', 'a') as outfile:
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



def get_references(c4_list, tmp_path):
    print("Extracting REFERENCES ...")
    for i in c4_list:
        with open(i, "r") as infile, open(tmp_path + '/references.txt', 'a') as outfile:
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


def get_reaction_notations(c4_list, tmp_path):
    print("Extracting REACTION NOTATION ...")
    for i in c4_list:
        with open(i, "r") as infile, open(tmp_path + '/reaction_notations.txt', 'a') as outfile:
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



def get_datapoints_per_experiment(c4_list, tmp_dir):
    print("Extracting Data Points per Experiment ...")
    for i in c4_list:
        with open(i, "r") as infile, open(tmp_dir + '/data_points_per_experiment_refined.txt', 'a') as outfile:
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




def get_all(c4_list, saving_directory, tmp_path):
    if os.path.exists(saving_directory + "/all_cross_sections.txt"):
        os.remove(saving_directory + "/all_cross_sections.txt")

    initialize_directories(tmp_path, saving_directory)

    print("Extracting experimental data, authors, years, institutes, and datas...")
    for i in c4_list:
        with open(i) as infile, \
            open((saving_directory + "/all_cross_sections.txt"), 'a') as num_data, \
            open(tmp_path + '/authors.txt', 'a') as authors, \
            open(tmp_path + '/years.txt', 'a') as years, \
            open(tmp_path + '/institutes.txt', 'a') as institute, \
            open(tmp_path + '/dates.txt', 'a') as date:
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
            open(tmp_path + '/titles.txt', 'a') as titles, \
            open(tmp_path + '/references.txt', 'a') as references, \
            open(tmp_path + '/data_points_per_experiment_refined.txt', 'a') as data_points, \
            open(tmp_path + '/reaction_notations.txt', 'a') as reactions:
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
    with open(saving_directory + "/all_cross_sections.txt") as infile, open(saving_directory + "/all_cross_sections_v1.txt", 'w') as outfile:
        for line in infile:
            if line.strip():
                string = list(line)
                for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                    string.insert(i + j, ';')
                outfile.write("".join(string))
    print("Finished formating experimental data.")
    os.remove(saving_directory + "/all_cross_sections.txt")
    print("Finished.")


def csv_creator(saving_directory, tmp_path, ame_dir, append_ame=True, fillna=True):
    """Creates CSV data from EXFOR Extracted Files"""
    colnames = ["Prj", "Targ", "Target_Meta_State", "MF", "MT", "PXC",  "Energy",  "dEnergy",  "Data", \
            "dData",   "Cos/LO",   "dCos/LO",   "ELV/HL",  "dELV/HL", "I78", "Refer", "(YY)", "EntrySubP"]
    df = pd.read_csv(saving_directory + "/all_cross_sections_v1.txt", names=colnames, header=None, index_col=False, sep=";")

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


    # Reading experiments reaction notation 
    df1 = pd.read_csv(tmp_path + "/reaction_notations.txt", delim_whitespace=True, header=None)
    df1.columns = ["Reaction", "Type"]

    # Reading Experiment Titles
    df2 = pd.read_csv(tmp_path + "/titles.txt", sep="#TITLE      ", header=None, engine="python")
    df2.columns = ["Keyword", "Title"]

    # Reading Data Points per Experiment
    df3 = pd.read_csv(tmp_path + "/data_points_per_experiment_refined.txt",  delim_whitespace=True, header=None)
    df3.columns = ["Data", "Multiple"]

    # Reading Experiment Year 
    df4 = pd.read_csv(tmp_path + "/years.txt", delim_whitespace=True, header=None)
    df4.columns = ["Keyword", "Year"]

    # Reading Experiment Date 
    df5 = pd.read_csv(tmp_path + "/authors.txt", sep="    ", header=None, engine="python")
    df5.columns = ["Keyword", "Author"]

    # Reading Experiment Institute 
    df6 = pd.read_csv(tmp_path + "/institutes.txt", sep="  ", header=None, engine="python")
    df6.columns = ["Keyword", "Institute"]

    # Reading Experiment Year 
    df7 = pd.read_csv(tmp_path + "/dates.txt", delim_whitespace=True, header=None)
    df7.columns = ["Keyword", "Date"]

    # Reading Experiment Refere
    df8 = pd.read_csv(tmp_path + "/references.txt", sep="#REFERENCE  ", header=None, engine="python")
    df8.columns = ["Keyword", "Reference"]

    # Merging Datapoints, notation and titles and expanding based on datapoints
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

    df.to_csv(heavy_dir + "/EXFOR_neutrons_ORIGINAL.csv", index=False)
    

    if append_ame:
        df_workxs = df.copy()
        masses = pd.read_csv(ame_dir + "/AME_Isotopic_Properties_no_NaN.csv").rename(
            columns={'N': 'Neutrons', 'A': 'Mass_Number', 'Neutrons':'N', 'Mass_Number':'M'})

        df_workxs = df_workxs.reset_index(drop=True)
        masses = masses.reset_index(drop=True)
        df = df_workxs.merge(masses, on=['N', 'Z'], how='left')

        df["O"].fillna(value="Other", inplace=True)

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
        df["Uncertainty_E"] = df["dEnergy"]/df["Energy"]
        df["Uncertainty_D"] = df["dData"]/df["Data"]
        df["Uncertainty_ELV"] = df["dELV/HL"]/df["ELV/HL"]

        df["Uncertainty_E"] = df[["MT", "Uncertainty_E"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_D"] = df[["MT", "Uncertainty_D"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_ELV"] = df[["MT", "Uncertainty_ELV"]].groupby("MT").transform(lambda x: x.fillna(x.mean()))

        df["Uncertainty_E"] = df[["Institute", "Uncertainty_E"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_D"] = df[["Institute", "Uncertainty_D"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))
        df["Uncertainty_ELV"] = df[["Institute", "Uncertainty_ELV"]].groupby("Institute").transform(lambda x: x.fillna(x.mean()))

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

    df["Compound_Neutrons"] = df.Target_Neutrons + 1
    df["Compound_Mass_Number"] = df.Target_Mass_Number + 1
    df["Compound_Protons"] = df.Target_Protons

    masses = pd.read_csv(ame_dir + "/AME_Isotopic_Properties_no_NaN.csv")
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

    q_value = [col for col in df.columns if 'Q' in col]
    df = df.drop(columns=q_value)

    df = df[~df.Reaction_Notation.str.contains("RAW")]
    df = df[~(df.Data < 0)]


    df.to_csv(heavy_dir + "/EXFOR_neutrons_MF3_AME_no_NaNRaw.csv", index=False)



