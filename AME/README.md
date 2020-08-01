# Atomic Mass Evaluation 2016 Files

This directory contains files related to the Atomic Mass Evaluation. For more information on the contents of the AME2016 look at the <a src="https://www-nds.iaea.org/amdc/">IAEA website</a>. The following structure is assume by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | AME
	    - AME_all_merged.csv                  (CREATED)
	    - AME_mass16.csv                      (CREATED)
	    - AME_Natural_Properties_no_NaN.csv   (CREATED)
	    - AME_Natural_Properties_w_Nan.csv    (CREATED)
	    - AME_rct1.csv                        (CREATED)
	    - AME_rct2.csv                        (CREATED)
        | Originals
            - mass16.txt
            - rct1_16.txt
            - rct2_16.txt
            - periodic_table.csv
```

`AME_mass16.csv` contains the evaluations basic information including mass excess, binding energy, beta decay energy, and atomic masses.

`AME_rct1.csv` contains the evaluations basic information included in the rct1.txt file.

`AME_rct2.csv` contains the evaluations basic information included in the rct1.txt file.

`AME_all_merged.csv` merges the previous three files and calculates additional Q-values.

`AME_Natural_Properties_w_NaN.csv` contains not only the same information in `AME_all_merged.csv` but also an entry created for each natural element. Most of the features other than Atomic Masses are filled with NaNs since no data is avaliable for natural occuring elements. It contains an additional feature that flags rows as isotopic or natural. 

`AME_Natural_Properties_no_NaN.csv` contains the same data as `AME_Natural_Properties_w_NaN.csv`. Missing values are filled using linear elemental interpolation.

## Re-creating CSV Files

If for some reason the CREATED csv files are not avaliable, as long as the other text files are avaliable they can be recreated using the `generating_datasets.py` script located in the main NucML directory.

`python generating_datasets.py"`
