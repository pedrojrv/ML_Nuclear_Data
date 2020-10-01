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

For both the target and product metastable state there where some transformations to make the table more verbose: The same transformation was applied to both. The transform dictionary is as follow:

```python
{
    " ": "All_or_Total", # MISSING VALUE TAG
    "G": "Ground", 
    "1": "M1", 
    "2": "M2", 
    "3": "M3", 
    "4": "M4", 
    "5": "M5", 
    "?": "Unknown", 
    "+": "More_than_1", 
    "T": "All_or_Total"
}
```

Similary, the exfor status feature was subject to a transformation.

```python
{
    "U":"Un_normalized", 
    "A":"Approved_by_Author", 
    "C":"Correlated", 
    "D":"Dependent", 
    "O":"Outdated", 
    "P":"Preliminary", 
    "R":"Re_normalized", 
    "S":"Superseded", 
    " ":"Other" # MISSING VALUE TAG
}
```

for the center of mass flag:

```python
{
    "C":"Center_of_Mass", 
    " ":"Lab"} # MISSING VALUE 
```

for the I78 field:

```python
{
    "E2":"Secondary_Energy", 
    "LVL":"Level", 
    "HL":"Half_Life", 
    "DLV":"Level_Range", 
    "EXC":"Excitation", 
    "DE2":"Secondary_Energy_Range", 
    "MIN":"Minimum_Energy", 
    "MAX":"Maximum_Energy", 
    "":"Other" # MISSING VALUE TAG
}
```

There where a couple of experiment/rows where some basic information was not extracted either because it was missing or it was not avaliable for extraction.


- Title N/A Tag: "No Title Found. Check EXFOR."
- Reference N/A Tag: "No Reference Found. Check EXFOR."
- Short_Reference N/A Tag: "No Reference Found. Check EXFOR."
- Reference_Code N/A Tag: "No Reference Code Found. Check EXFOR."
- Author N/A Tag: "No Author Found. Check EXFOR."
- EXFOR_Pointer N/A Tag: "No Pointer"

In the AME appended version of the EXFOR database one more feature was created named `Element_Flag` which identifies rows where experiments are taken in isotopic samples or natural samples. 

(6007126, 38)

The imputed EXFOR data version was made with a special purpose: My personal PhD dataset template. It uses a custom AME2016 version of the dataset that was engineered to fill missing values and created natural ocurring element data approximations using linear interpolation. See the AME2016 NucML documentation for more informaiton. 

On thing is that we eliminated the natural water/molecular cross section measurements at all 

6007126 - X = 6006239

Since my work was primarly on neutorn induce reactions the first transforation was to keep only MF=3 rows.

6006239 - X = 4644791

This meant dropping the MF row after the filtration and the Cos/LO, dCos/LO features. The only missing values belonged to the ['dEnergy', 'dData', 'ELV/HL', 'dELV/HL'] features. Unfortunately there is no standard way to impute these features and therefore will affect the model capabilities of providing uncertainty in it's calculations. To impute these values the following framework was followed. 

1. We divided the Uncertainty by the actual Value (i.e. dEnergy/Energy)
2. We then grouped by Reaction Channel and filled the missing vaues using he groups mean.
3. For the remaining missing values we group by Institute and filled using the institute means.
4. Then we grouped by Isotope,
5. Then by I78,

Afterwards all missing values where filled and the new uncertainity where use to derive the final uncertainities by multiplying times the original feature. 

You may notice that two new features where also included in my dataset. The Nucleus radius and the neutron to nucleon radius ration. 

```python
df["Nucleus_Radius"] = 1.25 * np.power(df["A"], 1/3)
df["Neutron_Nucleus_Radius_Ratio"] = 0.8 / df["Nucleus_Radius"]
```

Additionally all rows containing the word tag `RAW` in the Reaction Notation field where dropped. 

4644791 - 311512 = 4333279

Then we dropped all rows where the cross sectionv alue is 0.

4333279 - X = 4255409 