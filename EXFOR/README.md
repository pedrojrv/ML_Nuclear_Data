# Experimental Nuclear Reaction Database (EXFOR)

This directory contains files related to the Experimental Nuclear Reaction Database (EXFOR). For more information on the EXFOR database, please visit the <a src="https://www-nds.iaea.org/exfor/">IAEA website</a>. The following structure is assume by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | EXFOR
        | C4_Files
            | alphas
                - 001_H_000.c4
                - 001_H_001.c4
                - ...
                - 098_Cf_252.c4
            | deuterons
            | gammas
            | helions
            | neutrons
            | other
            | protons
            - parseC4.py
        | CSV_Files
            | EXFOR_alphas
                - all_cross_sections_v1.txt
                - EXFOR_alphas_MF3_AME_no_RawNan.csv
                - EXFOR_alphas_ORIGINAL_csv
                - EXFOR_alphas_ORIGINAL_w_AME.csv
            | EXFOR_deuterons
            | ...
            | EXFOR_protons
            - institute_codes.csv
            - mt_codes.csv
        | Notebooks
            - 0_Extracting_EXFOR_data_TEMPLATE.ipynb
            - 1_Extracting_EXFOR_data_ALL.ipynb
            - 2_EDA_Feature_Visualization.ipynb
            - 3_EDA_Cross_Sections.ipynb
        | tmp
```

# C4 Files

The C4 files are the main EXFOR fiels containing all the experimental campaigns by isotope. Within this directory seven subdirectories exists, one for each projectile. NucML does not assume any kind of structure within the C4_Files as the subdirectory needs to be specified on the scripts. 




## Extracting new C4 Files

A version of the EXFOR files are included in the repository. If you want to process a new EXFOR dataset you can download the latest .c4 files from the <a src="https://www-nds.iaea.org/x4toc4-master/?C=M;O=D">IAEA website</a>. 

First, unzip the downloaded file. The process will result in four main files: `C4-YYYY-MM-DD.xc4`, `C4-YYYY-MM-DD.xc4.readme`, `C4-YYYY-MM-DD.xc4.tbl` and `EXFOR14A.DAT`. The `.xc4` files need to be converted to `.c4` files. Fortunatly, `EMPIRE` contains a script to do just that. For convenience, the `parseC4.py` script is included in this repository. Run the script while in the same directory where the `C4-YYYY-MM-DD.xc4` file is stored.

```python
python parseC4.py C4-YYYY-MM-DD.xc4
```

Once all files are in organized into the structure given above, follow the instructions in the main README file. 

# CSV Files

**NOTICE: THIS DIRECTORY WILL BE EMPTY UNTIL THE EXFOR DATASET C4 FILES HAVE BEEN PROCESSED.**

The `CSV_Files` this directory contains the resulting files from the processed EXFOR files for each projectile. The within each subdirectory include:
- `all_cross_sections_v1.txt` contains all the EXFOR cross section datapoints in plain `.txt` format. 
- `EXFOR_{projectile}_MF3_AME_no_RawNaN.csv` contains the custom made dataset used by NucML to load an ML-ready dataset. This is my personal working dataset.
- `EXFOR_{projectile}_ORIGINAL_w_AME.csv` contains all EXFOR datapoints withouth modifications with Atomic Mass Evaluation properties appended. 
- `EXFOR_{projectile}_ORIGINAL.csv` contains the original EXFOR datapoints with no modifications and no extra information. This is considered the raw dataset. It is a good starting point for any type of dataset preparation.


In addition to the projectile subdirectories, two more CSV files are provided.

- `institute_codes.csv` contains the experimental facilities codes used in EXFOR.
- `mt_codes.csv` contains an alternative representation for the reaction channel. This is my experimental representation and its accuracy is in no way guaranteed. 

# Notebooks

This directory contains various notebooks: 

- `0_Extracting_EXFOR_data_TEMPLATE.ipynb`: contains the source code of one of the main NucML parsing utilities in jupyter notebook form. This is my experimental playground. 
- `1_Extracting_EXFOR_data_ALL.ipynb`: contains a tutorial on how all EXFOR CSV files are created using NucML parsing utilities for each projectile. It is a great place to look for in case a new EXFOR dataset needs to be processed from new C4 files manually. 
- `2_EDA_Feature_Visualization.ipynb`: explores the EXFOR neutron-induce reactions dataset.
- `3_EDA_Cross_Sections.ipynb`: contains tutorial code on how to use NucML utilities to plot and visualize cross sections.
- `4_EDA_Feature_Engineering.ipynb`: explores statistically the EXFOR features.