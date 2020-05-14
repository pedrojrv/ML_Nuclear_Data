# Atomic Mass Evaluation 2016 Files

This directory contains files related to the Atomic Mass Evaluation. The following structure is assume by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | AME
	    - AME_atomic_masses_v1.csv          (CREATED)
	    - AME_atomic_masses_v1_rct1.csv     (CREATED)
	    - AME_atomic_masses_v1_rct2.csv     (CREATED)
	    - AME_atomic_masses_v2.csv          (CREATED)
	    - AME_final_properties_w_NaN.csv    (CREATED)
	    - AME_final_properties_no_NaN.csv   (CREATED)
        | For Extraction
            - mass16_toparse.txt
            - rct1_16_toparse.txt
            - rct2_16_toparse.txt
            - periodic_Table.csv
            | Originals
                - mass16.txt
                - rct1_16.txt
                - rct2_16.txt
```

`AME_atomic_masses_v1.csv` contains the evaluations basic information including mass excess, binding energy, beta decay energy, and atomic masses.

`AME_atomic_masses_v1_rct1.csv` contains the evaluations basic information included in the rct1.txt file.

`AME_atomic_masses_v1_rct2.csv` contains the evaluations basic information included in the rct1.txt file.

`AME_atomic_masses_v1.csv` merges the previous three files and calculates additional Q-values.

`AME_final_properties_w_NaN.csv` and `AME_final_properties_no_NaN.csv` contains information not only for all isotopes but also for natural elements created by averaging isotopic information (natural abundance is not taken into account yet). It contains an additional feature that flaggas row by isotopic or natural. The latter file imputes NaN values using the mean value by element.  

## Re-creating CSV Files
If for some reason the CREATED csv files are not avaliable, as long as the other text files are avaliable they can be recreated using the following command on the terminal (it assumes you are in the NucML directory):

`python ./nucml/ame/parsing_utilities.py "./AME"`
