# Atomic Mass Evaluation 2016 Files

This directory contains files related to the Atomic Mass Evaluation 2016. For more information on the contents of the AME2016, visit the <a src="https://www-nds.iaea.org/amdc/">IAEA website</a>. The following structure is assumed by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | AME
        | CSV_Files
            - AME_all_merged_no_NaN.csv       (CREATED)
            - AME_all_merged.csv                  (CREATED)
            - AME_mass16.csv                      (CREATED)
            - AME_Natural_Properties_no_NaN.csv   (CREATED)
            - AME_Natural_Properties_w_Nan.csv    (CREATED)
            - AME_rct1.csv                        (CREATED)
            - AME_rct2.csv                        (CREATED)
        | Originals
            - mass16.txt
            - rct1-16.txt
            - rct2-16.txt
            - periodic_table.csv
        | Notebooks
            - 0_Extracting_AME_data.ipynb
            - 1_EDA_AME.ipynb
```

# CSV Files

This directory contains the resulting files from the processed AME text files. The files include:

- `AME_mass16.csv` contains the evaluation's basic information including mass excess, binding energy, beta decay energy, and atomic masses.
- `AME_rct1.csv` contains the evaluation's basic information included in the rct1-16.txt file.
- `AME_rct2.csv` contains the evaluation's basic information included in the rct2-16.txt file.
- `AME_all_merged.csv` merges the previous three files and calculates additional Q-values.
- `AME_Natural_Properties_w_NaN.csv` contains not only the same information in `AME_all_merged.csv` but also an entry created for each natural element. Most of the features other than Atomic Masses are filled with NaNs since the data features are not applicable to multi-isotope elements. It contains an additional feature that flags rows as isotopic or natural. This flag is useful when pairing with EXFOR since it contains both experimental campaigns undertaken in isotopic and natural element samples.
- `AME_Natural_Properties_no_NaN.csv` contains the same data as `AME_Natural_Properties_w_NaN.csv`. Missing values are filled using elemental linear interpolation.

# Originals

This directory contains the original text files from the atomic mass evaluation including the `mass16.txt`, `rct1-16.txt`, and the `rct2-16.txt` files. Additionally, a `periodic_table.csv` file is included that allows for the creation of natural element data.

# Notebooks

This directory contains two notebooks. The first one shows how the AME text files are parsed and extracted in case this needs to be done again (doubtful). The second one goes through a simple example of how to load and explore the AME processed files. 
