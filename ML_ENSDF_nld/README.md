# ML-based Inference of Nuclear Level Densities (Experimental)

Work meant to predict nuclear level density to append to EXFOR dataset for ML inference of reaction cross section. The current structure is:


```
| ML_Nuclear_Data
    | ML_ENSDF_nld
        | Figures
        | Level_Density
            - 9Be_Level_Density.csv
            - 9Be_linear_model.joblib
            - 10B_Level_Density.csv
            - 10B_linear_model.joblib
            - ...
        - 0_ENSDF_Linear_Interpolation.ipynb
        - 1_ENSDF_NN.ipynb
```


# Notebooks

This directory currently contains only two notebooks: 

- `0_ENSDF_Linear_Interpolation.ipynb`: code needed to generate nuclear level density values using a simple linear regression model to append to the EXFOR database.
- `1_ENSDF_NN Sections.ipynb`: experimental notebook (not guaranteed to run).


# Level Density

See `0_ENSDF_Linear_Interpolation.ipynb` for information on the contents of this directory. 