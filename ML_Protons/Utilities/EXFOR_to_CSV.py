import natsort
from natsort import natsorted
import os
import shutil


# SPECIFY WHER EYOUR C4 FILES ARE
# Search all files withing the EXFOR neutrons directory
exfor_directory = "./EXFOR/neutrons_2019_07_18/"





print("Searching directory for .c4 files...")
names = []
for root, dirs, files in os.walk(exfor_directory):
    for file in files:
        if file.endswith(".c4"):
            names.append(os.path.join(root, file))
            
print("Gathered {} .c4 files.".format(len(names)))
names = natsorted(names)


dirpath = "./EXFOR/Extracted_Text"
if os.path.isdir(dirpath):
    print("Resetting Extracted_Test directory...")
    shutil.rmtree(dirpath)
    os.makedirs(dirpath)
else:
    os.makedirs(dirpath)


print("Extracting numerical experimental data from collected EXFOR neutron files ...")
for i in names:
    with open(i) as infile, open(dirpath + '/all_cross_sections.txt', 'a') as outfile:
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
print("Finished extracting all experimental data.")


# Using the document with all data we insert commas following the EXFOR format
print("Formatting EXFOR cross section data...")
with open(dirpath + '/all_cross_sections.txt') as infile, open(dirpath + '/all_cross_sections_v1.txt', 'w') as outfile:
    for line in infile:
        if line.strip():
            string = list(line)
            for i, j in enumerate([5, 11, 12, 15, 19, 22, 31, 40, 49, 58, 67, 76, 85, 94, 95, 122, 127]):
                string.insert(i + j, ';')
            outfile.write("".join(string))
print("Finished formating EXFOR data.")
os.remove(dirpath + '/all_cross_sections.txt')



print("Extracting AUTHOR1 ...")
for i in names:
    with open(i) as infile, open(dirpath + '/authors.txt', 'a') as outfile:
        for line in infile:
            if line.startswith(r"#AUTHOR1"):
                outfile.write(line)
print("Finished extracting AUTHOR1s.")


print("Extracting YEAR ...")
for i in names:
    with open(i) as infile, open(dirpath + '/years.txt', 'a') as outfile:
        for line in infile:
            if line.startswith(r"#YEAR"):
                outfile.write(line)
print("Finished extracting YEARs.")


# #INSTITUTE
print("Extracting Institute ...")
for i in names:
    with open(i) as infile, open(dirpath + '/institude.txt', 'a') as outfile:
        for line in infile:
            if line.startswith(r"#INSTITUTE"):
                outfile.write(line)
print("Finished extracting Institudes.")


# We use the list of documents to extract only the data we need
print("Extracting DATE ...")
for i in names:
    with open(i) as infile, open(dirpath + '/dates.txt', 'a') as outfile:
        for line in infile:
            if line.startswith(r"#DATE"):
                outfile.write(line)
print("Finished extracting DATEs.")


# #AUTHOR1
print("Extracting TITLE ...")
for i in names:
    with open(i, "r") as infile, open(dirpath + '/titles.txt', 'a') as outfile:
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
print("Finished extracting TITLEs.")


# #AUTHOR1
print("Extracting References ...")
for i in names:
    with open(i, "r") as infile, open(dirpath + '/references.txt', 'a') as outfile:
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
print("Finished extracting references.")



# #AUTHOR1
print("Extracting reaction notation ...")
for i in names:
    with open(i, "r") as infile, open(dirpath + '/reaction_notation.txt', 'a') as outfile:
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



# #AUTHOR1
print("Extracting reaction notation ...")
for i in names:
    with open(i, "r") as infile, open(dirpath + '/data_points_per_experiment_refined.txt', 'a') as outfile:
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
print("Finished extracting REACTION NOTATION.")





colnames = ["Prj", "Targ", "Target_Meta_State", "MF", "MT", "PXC",  "Energy",  "dEnergy",  "Data", \
            "dData",   "Cos/LO",   "dCos/LO",   "ELV/HL",  "dELV/HL", "I78", "Refer", "(YY)", "EntrySubP"]
df = pd.read_csv(dirpath + '/all_cross_sections_v1.txt', names=colnames, header=None, index_col=False, sep=";")

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
df["Target_Meta_State"] = df["Target_Meta_State"].replace(to_replace=" ", value="G")

# PXC describes three different variables
# We extract the data to independent features
df['Product_Meta_State'] = df['PXC'].astype(str).str[0:1].replace(to_replace=" ", value="G")
df['Frame'] = df['PXC'].astype(str).str[2:3].replace(to_replace=" ", value="L")


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
df["I78"] = df["I78"].replace(to_replace="", value="L")


df.drop(columns=["(YY)", "EntrySubP", 'Targ', "PXC"], inplace=True)


df.to_csv("../ML_Data/working_xs.csv", index=False)