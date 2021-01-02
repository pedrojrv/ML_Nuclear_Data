# Evaluated Nuclear Data File (ENDF)

This directory contains files related to various evaluations including the Evaluated Nuclear Data File (ENDF). For more information on the contents of this directory, visit the <a src="https://www-nds.iaea.org/exfor/endf.htm">IAEA website</a>. The following structure is assume by other scripts in `NucML`.


## Setting up the Directory

The `NucML` utilities assumes the following structure.

```
| ML_Nuclear_Data
    | Evaluated_Data
        | neutrons
            | Ac227
                | endfb8.0
                    | tables
                        | xs
                            n-Ac227-MT001.endfb8.0
                            n-Ac227-MT002.endfb8.0
                            n-Ac227-MT004.endfb8.0
                            ...
                | jendl4.0
                    | tables
                        | xs
                            n-Ac227-MT001-G069.jendl4.0
                            ...
                | ... (other evaluations)
            | Ag000
            | Ag107
            | ...
        | protons
            | Ac227
                |tendl.2019
                    | tables
                        | xs
                            p-Ac227-MT002.tendl.2019
                            ...
            | Ag000
            | ...
```

Both the `protons` and `neutrons` directory contain the evaluation files for all nuclides including the `endf`, `jendl4.0`, and `tendl.2019` evaluations. Not every nuclide has all three evaluation files. All energies are provided in `MeV`.

`Notbooks`: this directory contains one notebook. It goes through various examples on how to use the NucML plotting utilities on various evaluations. Within this directory, there is also the `eval_dir_cleanup.py` script which deletes all other non necessary files that come with the evaluations download.

The ENDF files are quite heavy and are not included in the repository. Please download them <a src="TODO">here</a>.