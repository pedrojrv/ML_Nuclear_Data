# Benchmark Repository and ML Model Validation

This directory contains files related to the validation of ML algorithms using criticality benchmarks. The following structure is assumed by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | Benchmarks
        | figures
        | inputs
            | originals
            | templates
            README.md
        | ml
        - 0_Generating_MLXS_Benchmark.ipynb
        - 1_Gathering_Benchmark_Results_DT.ipynb
        - 1_Gathering_Benchmark_Results_KNN.ipynb
        - 1_Gathering_Benchmark_Results_XGB.ipynb
        - 2_Hybrid_ML_ENDF_XS_Generation.ipynb
```

# Notebooks

- `0_Generating_MLXS_Benchmark.ipynb`: This is the main tutorial showing how to validate ML models using criticality benchmarks with NucML.
- `1_Gathering_Benchmark_Results_DT.ipynb`: This notebook is Part 2 of the previous notebook. It contains information on how to gather and analyze criticality benchmark results. The `1_Gathering_Benchmark_Results_KNN.ipynb` and `1_Gathering_Benchmark_Results_XGB.ipynb` notebooks are similar but contain no instructions or educational content. 
- `2_Hybrid_ML_ENDF_XS_Generation.ipynb`: This is purely an informative notebook on the assumptions and processes happening behind when generating benchmark files. It also shows how to use some useful ACE reading and manipulation utilities. 

# inputs

The `inputs` directory contains both the original criticality benchmark serpent inputs and the templates used by NucML to automate ML model validation. Please refer to the README.md file within the inputs directory for more information on the contents and instructions on how to correctly add your own benchmarks.

# ml

This is a hidden directory due to the size. See the `0_Generating_MLXS_Benchmark.ipynb` notebook for more information. 
