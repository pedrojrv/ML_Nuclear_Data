# Evaluated Nuclear Data File (ENDF)

This directory contains files related to the Evaluated Nuclear Data File (ENDF). For more information on the contents of this directory look at the <a src="https://www-nds.iaea.org/exfor/endf.htm">IAEA website</a>. The following structure is assume by other scripts in `NucML`.


## Setting up the Directory

The `NucML` utilities assumes the following structure.

```
| ML_Nuclear_Data
    | ENDF
        | ENDF_neutrons
            | Ac227
                | endfb8.0
                    | tables
                        | xs
                            n-Ac227-MT001.endfb8.0
                            n-Ac227-MT002.endfb8.0
                            n-Ac227-MT004.endfb8.0
                            ...
            | Ag000
            | Ag107
            | ...
```

The ENDF files are pretty heavy though and are not included in the repository. Please download them <a src="TODO">here</a>.