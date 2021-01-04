# Evaluated Nuclear Structure Data File (ENSDF)

This directory contains files related to the Evaluated Nuclear Structure Data File (ENSDF) and the Reference Input Parameter Library (RIPL). For more information on the contents of this databases, visit the <a src="https://www.iaea.org/resources/databases/evaluated-nuclear-structure-data-file"> ENSDF IAEA website</a>. The following structure is assumed by other scripts in `NucML`.

```
| ML_Nuclear_Data
    | ENSDF
        | CSV_Files
            - all_ensdf_headers_formatted.csv
            - ensdf_cutoff.csv
            - ensdf_stable_state_formatted.csv
            - ensdf.csv
            - ripl_cut_off_energies.csv
        | Elemental_ENSDF
            | Elemental_ENSDF_no_Header
              - 1H.txt
              - 2H.txt
              - ...
            | Elemental_ENSDF_no_Header_F
              - 1H.txt
              - 2H.txt
              - ...
            | Elemental_ENSDF_v1
              - 1H.txt
              - 2H.txt
              - ...
        | Notebooks
            - 0_Extracting_ENSDF_RIPL_Data.ipynb
            - 1_Loading_ENSDF_RIPL_Datasets.ipynb
            - 2_EDA.ipynb
        | RIPL
            | levels
                | levels
                    - z000.dat
                    - z001.dat
                    - ...
                - levels-param.data
                - ...
```


# CSV Files

The `CSV_Files` this directory contains the resulting files from the processed RIPL files. The files include:
- `all_ensdf_headers_formatted.csv` contains the headers of all RIPL .dat files. Features include:

```
SYMB   : mass number with symbol of the element
A      : mass number
Z      : atomic number
Nol    : number of levels in the decay scheme
Nog    : number of gamma rays in the decay scheme
Nmax   : maximum number of levels up to which the level scheme is complete
Nc     : number of a level up to which spins and parities are unique
Sn     : neutron separation energy in MeV
Sp     : proton separation energy in MeV
```

- `ensdf.csv` and `ensdf_cutoff.csv` both contain the ENSDF levels. The `ensdf_cutoff.csv` is limited according to the RIPL cut-off parameters. Features include:

```
Level_Number	
Energy	
Spin	
Parity	
Half_Life	
Gammas	
Flag	
ENSDF_Spin	
Num_Decay_Modes	
Decay_Info	
Element_w_A
```


- `ensdf_stable_state_formatted.csv` contains only the ground level information from the ENSDF files. The features are similar to those of the `ensdf.csv`.

- `ripl_cut_off_energies.csv` contains all information contained in the `level-param.data` file. The features include:

```
Z	
A	
Element	
Temperature_MeV	
Temperature_U	
Black_Shift	
Black_Shift_U	
N_Lev_ENSDF	
N_Max_Lev_Complete	
Min_Lev_Complete	
Num_Lev_Unique_Spin	
E_Max_N_Max	
E_Num_Lev_U_Spin	
Chi	
Fit	
Flag	
Nox	
Xm_Ex	
Sigma	
Element_w_A
```

# Elemental ENSDF

This directory contains the ENSDF levels files in an isotope-wise format rather than proton-wise as in the original RIPL files. There are three directories containing the same information in different formats. 

```
Elemental_ENSDF_no_Header: isotopic information with no header.

Elemental_ENSDF_no_Header_F: isotopic information with no header and formatted for easy extraction using NucML loading utilities.

Elemental_ENSDF_v1: raw isotopic information with headers.
```

# Notebooks

This directory contains three notebooks. The first one show how the ENSDF/RIPL .dat files are parsed and extracted in case this needs to be done again, the second one goes through a simple example on how to load the different created ENSDF datasets with NucML, and the third one explores the ENSDF files using NucML plotting utilities. 

# RIPL

This directory is just a copy of the original RIPL files. The files here are used by NucML to extract level and gamma information. These files will not be described here. Please refer to the <a src="https://www-nds.iaea.org/RIPL-3/">RIPL website</a> for more information.






<!-- 
Ground state file, Spoin of -1 means missing value, for parity 0 is the missing value.
For half life all those with -1 are stable. fOR J spin flag u means unique number of spins, in Nod a question mark is unknown, for Modifiers
m     :  decay percentage modifier; informs a user about major uncertainties. 
         The modifiers are copied out of ENSDF with no modification, and can 
         have the following values: =, <, >, ? (unknown, but expected), 
         AP (approximate), GE (greater or equal), LE (less or equal), 
         LT (less then), SY  (value from systematics).

predict half life for unknwn in ground states. 


# Headers

Each isotope begins with an identification record such as the one shown below for the case of Mg-22 (heading has been introduced to facilitate reading but does not show up in the actual file):

  SYMB    A     Z     Nol    Nog    Nmax    Nc     Sn[MeV]     Sp[MeV]
  22Mg    22    12    17     18      9      4     19.382000    5.497000

SYMB   : mass number with symbol of the element
A      : mass number
Z      : atomic number
Nol    : number of levels in the decay scheme
Nog    : number of gamma rays in the decay scheme
Nmax   : maximum number of levels up to which the level scheme is complete
Nc     : number of a level up to which spins and parities are unique
Sn     : neutron separation energy in MeV
Sp     : proton separation energy in MeV

# Level Record

Each level record may contain the following quantities:
N1  Elv[MeV]  s   p   T1/2    Ng  J  unc  spins   nd  m  percent  mode     /.../ shift     band

1  0.000000  0.0  1  3.86E+00  0           0+      1  =  100.0000 %EC+%B+  /.../ 0.031100  2    
2  1.246300  2.0  1  2.10E12   1           2+      0

(i3,1x,f10.6,1x,f5.1,i3,1x,(e10.3),i3,1x,a1,1x,a4,1x,a18,i3,10(1x,a2,1x,e10.4,1x,a7),f10.6,1x,3(2i))


Nl    :  sequential number of a level
Elv   :  energy of the level in MeV
s     :  level spin (unique). Whenever possible unknown spins up to
         Umax were inferred. Unknown and undetermined spins are entered as -1.0
p     :  parity (unique). If the parity of the level was unknown, positive or
         negative was chosen with equal probability. Parities were determined up
         to Umax as in the case of spins. The method of choice is not coded.
             The possible values are: 0 for unknown, +1 for positive and -1 for negative.
T1/2  :  half-life of the level (if known). All known half-lives or level widths
         were converted into seconds. Half-lives of stable nuclei are
         represented as -1.0E+0.
Ng    :  number of gamma rays de-exciting the level.
J     :  flag for spin estimation method (see below the list of possible flags).
unc   :  flag for an uncertain level energy. When impossible to determine, the
         relative energy of the band, the energy of these band heads were set to
         0.0 keV or, if the level order is known, to the preceding level energy
         with a note that an unknown energy X should be added. The notation uses
         X+, Y+, Z+ etc. for different bands.
spins :  original spins from the ENSDF file.
nd    :  number of decay modes of the level (if known). Values from 0 through 10
         are possible; 0 means that the level may decay via gamma-emission,
         and other decay modes are not known.
m     :  decay percentage modifier; informs a user about major uncertainties. 
         The modifiers are copied out of ENSDF with no modification, and can 
         have the following values: =, <, >, ? (unknown, but expected), 
         AP (approximate), GE (greater or equal), LE (less or equal), 
         LT (less then), SY  (value from systematics).
percent: percentage decay of different decay modes. As a general rule  the
         various decay modes add up 100%. There are, however, two exceptions:
         (i) when a small percentage decay is present, the sum may be slightly
         more then 100% due to rounding error, (ii) when beta -decay is
         followed by a heavier particle emission, the percentage of the
         beta-delayed particle emission is given as a portion of the beta-decay
         and the sum can be substantially larger then 100%. Naturally, when the
         modifier is "?" the sum is indefinite.
mode   : short indication of decay modes of a level (see Table below).
shift  : value assigned to the unknown "X", in MeV.
band   : integer assigned to band(s) to which the level is part


# Gamma Record

Two examples of the gamma records are given below:
  Nf    Eg[MeV]       Pg          Pe          ICC
  3      0.055     4.267E02    1.301E01    2.050E+00
  1      0.113     7.499E01    8.699E01    8.699E01



Nf    : sequential number of the final state
Eg    : gamma-ray energy in MeV
Pg    : Probability that a level decays through the given gamma-ray emission. 
        Pg is the ratio of the total electromagnetic decay of the level to the
        intensity of the gamma-ray. If no branching ratio is given in the
        ENSDF file, Pg=0.
Pe    : Probability that a level decays with the given electromagnetic
        transition, i.e., ratio of the total electromagnetic decay of the level
        to the intensity of the given electromagnetic transition. The sum of
        electromagnetic decays is normalized to 1. If no branching ratio is
        given in the ENSDF file, Pe=0.
ICC   : Internal conversion coefficient of a transition.


The corresponding FORTRAN format is (39x,i4,1x,f10.3,3(1x,e10.3)) -->