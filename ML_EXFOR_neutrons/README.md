# ML-based Inference of Neutron-induced Cross Sections

This directory contains jupyter notebooks and python scripts used to generate or analyze results for my PhD thesis. Feel free to browse them. They contain a lot of useful information on how to use `NucML` to perform nuclear data evaluations. The directories are organized as follows:

<!-- C:/Users/Pedro/Anaconda3/Scripts/activate
conda activate tf_nightly
cd Desktop/ML_Nuclear_Data/ML_EXFOR_neutrons/1_KNN/
python knn.py --scale_e y --version v2 --normalizer minmax --dataset B1 --k_list
python knn.py --normalizer minmax --dataset B4 --k_list
  -->

```
| ML_Nuclear_Data
    | ML_EXFOR_neutrons
        | 1_KNN
            - 0_KNN_Model_Parameters.ipynb
            - 1_KNN_Cross_Sections.ipynb
            - knn.py
            - knn_results_B0.csv
        | 2_DT
            - 0_KNN_Model_Parameters.ipynb
            - 1_KNN_Cross_Sections.ipynb
            - dt.py
            - dt_resultsB0.csv
        | 3_XGB
            - 0_KNN_Model_Parameters.ipynb
            - 1_KNN_Cross_Sections.ipynb
            - xgb.py
            - xgb_resultsB0.csv
        | 4_NN (Hidden)
        | Figures
        | ML_Management
        - Cleaning_Up_Storage.ipynb
        - Generating_Paper_Figures.ipynb
        - README.md
        - columns_b0.csv
        - columns_b1.csv
        - columns_b2.csv
        - columns_b3.csv
        - columns_b4.csv
```

# 1_KNN, 2_DT, and 3_XGB

These three directories contain the same high-level material. 

- There is at least one training script that can serve as an example on how to train a couple of proof-of-concept models (i.e. `knn.py`, `xgb.py`, etc.). 
- The models can be trained on one of the five subsets of data provided by `NucML`. For each dataset, a `*_resultsB*.csv` file is created containing the training, testing, and validation performance metrics. Metadata information is also saved including the full model and scaler path (where the files were saved). These are needed for other utilities of NucML. 
- The `0_*_Model_Parameters.ipynb` notebook contains hyperparameter exploration examples.
- The `1_*_Cross_Sections.ipynb` notebook contains examples of visualizing the predictions of several models on several reactions of interest. 

# Notebooks

This directory contains two notebooks:

- `Cleaning_Up_Storage.ipynb`: shows the use of an internal utility designed to delete unnecessary experimental campaigns. 
- `Generating_Paper_Figures.ipynb`: personal notebook containing code needed to generate a figure comparing two ML algorithms performance on a reaction channel of interest. 

# ML_Management (deprecated)

`Weights and Biases` and `Comet ML` are two ML experiment tracking services. Three example scripts are provided incorporating the necessary callbacks. You must set up your account previous to testing them. 

# Columns CSV Files

`NucML` offers five different subsets of data. The name of the features for each one of the datasets is saved in the `columns_b*.csv` files. 