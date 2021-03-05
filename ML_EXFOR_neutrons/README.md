# ML-based Inference of Neutron-induced Cross Sections

This directory contains jupyter notebooks and python scripts used to generate or analyze results for my PhD thesis. Feel free to browse them. They contain a lot of useful information on how to use `NucML` to perform nuclear data evaluations. The directories are organized as follows:

<!-- C:/Users/Pedro/Anaconda3/Scripts/activate
conda activate tf_nightly
cd Desktop/ML_Nuclear_Data/ML_EXFOR_neutrons/1_KNN/
python knn.py --scale_e y --version v2 --normalizer minmax --k_list  -->

```
| ML_Nuclear_Data
    | ML_EXFOR_neutrons
        | 1_KNN
            | KNN_B0
                | Figures
                | wandb
                - knn_maxabs.py
                - knn_minmax.py
                - ...
                - knn_standard.py
                - knn_results.csv
            | KNN_B1
            | KNN_B2
            | KNN_B3
        | 2_DT
        | 3_XGB
        | 4_NN
        | Figures
        | ML_Management
        - 
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
