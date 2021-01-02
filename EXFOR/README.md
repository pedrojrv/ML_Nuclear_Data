# Experimental Nuclear Reaction Database (EXFOR)

This directory contains files related to the Experimental Nuclear Reaction Database (EXFOR). For more information on the contents of this directory look at the <a src="https://www-nds.iaea.org/exfor/">IAEA website</a>. The following structure is assume by other scripts in `NucML`.


## Directory Description

The `NucML` utilities assumes the following structure.

```
| ML_Nuclear_Data
    | EXFOR
        | C4_Files
            | alphas
                001_H_000.c4
                001_H_001.c4
                ...
                098_Cf_252.c4
            | deuterons
            | gammas
            | helions
            | neutrons
            | other
            | protons
        | CSV_Files
            | EXFOR_alphas
                all_cross_sections_v1.txt
                EXFOR_alphas_MF3_AME_no_RawNan.csv
                EXFOR_alphas_ORIGINAL_csv
                EXFOR_alphas_ORIGINAL_w_AME.csv
            | EXFOR_deuterons
            | ...
            | EXFOR_protons
        | tmp
            | Extracted_Text_alphas
                authors.txt
                data_points_per_experiment_refined.txt
                ...
                years.txt
            | Extracted_Text_deuterons
            | ...
            | Extracted_Text_protons
```

The EXFOR files are pretty heavy though and are not included in the repository. You have two options: (1) download a copy of the directory <a src="TODO">here</a>. This contains my last personal update but not necessarly the last update by the IAEA or (2) generate your own using the provided utilities.


## Parsing and Generating the EXFOR Files Locally

First you need to download the c4 zip file from the IAEA database <a src="https://www-nds.iaea.org/x4toc4-master/?C=M;O=D">here</a>. You'll see a variety of files avaliable. Download the latest zip file with the following format: C4-YYYY-MM-DD.zip. 

Once you unzip the file you'll see four main files: `C4-YYYY-MM-DD.xc4`, `C4-YYYY-MM-DD.xc4.readme`, `C4-YYYY-MM-DD.xc4.tbl` and `EXFOR14A.DAT`. We need to convert the `.xc4` file to `.c4` files. Fortunatly, EMPIRE contains a script to do just that. For your convenience the script, `parseC4.py` is located in the C4_Files directory. Run the script in your python terminal while in the same directory where you have the `C4-YYYY-MM-DD.xc4` file.

```python
python parseC4.py C4-YYYY-MM-DD.xc4
```

You can then grab the create directories and accomodate them following the given directory structure. Once you have all files in the correct place you can run the `generating_dataset.py` script as follow:

```python
python generating_dataset.py --dataset exfor 
```

This will take a couple of minutes. Running this script will create the CSV_Files directory and all the content including all CSV files. Additionally, a `tmp` directory will be created containing files to create the CSV files. Feel free to delete it after the process has finish. 




# Experimental Nuclear Reaction Database (EXFOR)

This directory contains files related to the Experimental Nuclear Reaction Database (EXFOR). For more information on the contents of this directory look at the <a src="https://www-nds.iaea.org/exfor/">IAEA website</a>. The following structure is assume by other scripts in `NucML`.


## Directory Description

The `NucML` utilities assumes the following structure.

```
| ML_Nuclear_Data
    | EXFOR
        | C4_Files
            | alphas
                001_H_000.c4
                001_H_001.c4
                ...
                098_Cf_252.c4
            | deuterons
            | gammas
            | helions
            | neutrons
            | other
            | protons
        | CSV_Files
            | EXFOR_alphas
                all_cross_sections_v1.txt
                EXFOR_alphas_MF3_AME_no_RawNan.csv
                EXFOR_alphas_ORIGINAL_csv
                EXFOR_alphas_ORIGINAL_w_AME.csv
            | EXFOR_deuterons
            | ...
            | EXFOR_protons
        | tmp
            | Extracted_Text_alphas
                authors.txt
                data_points_per_experiment_refined.txt
                ...
                years.txt
            | Extracted_Text_deuterons
            | ...
            | Extracted_Text_protons
```

The EXFOR files are pretty heavy though and are not included in the repository. You have two options: (1) download a copy of the directory <a src="TODO">here</a>. This contains my last personal update but not necessarly the last update by the IAEA or (2) generate your own using the provided utilities.


## Parsing and Generating the EXFOR Files Locally

First you need to download the c4 zip file from the IAEA database <a src="https://www-nds.iaea.org/x4toc4-master/?C=M;O=D">here</a>. You'll see a variety of files avaliable. Download the latest zip file with the following format: C4-YYYY-MM-DD.zip. 

Once you unzip the file you'll see four main files: `C4-YYYY-MM-DD.xc4`, `C4-YYYY-MM-DD.xc4.readme`, `C4-YYYY-MM-DD.xc4.tbl` and `EXFOR14A.DAT`. We need to convert the `.xc4` file to `.c4` files. Fortunatly, EMPIRE contains a script to do just that. For your convenience the script, `parseC4.py` is located in the C4_Files directory. Run the script in your python terminal while in the same directory where you have the `C4-YYYY-MM-DD.xc4` file.

```python
python parseC4.py C4-YYYY-MM-DD.xc4
```

You can then grab the create directories and accomodate them following the given directory structure. Once you have all files in the correct place you can run the `generating_dataset.py` script as follow:

```python
python generating_dataset.py --dataset exfor 
```

This will take a couple of minutes. Running this script will create the CSV_Files directory and all the content including all CSV files. Additionally, a `tmp` directory will be created containing files to create the CSV files. Feel free to delete it after the process has finish. 