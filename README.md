# NucML

Python tools to process nuclear data and test ML models in benchmark calculations.

- EXFOR_Parsing_Utilities.py: provides tools to process EXFOR C4 files into a format useful for futher data processing and ML applications.
- AME_Parsing_Utilities.py: provides tools to process the Atomic Mass Evaluation files. The resulting data files can be use in conjunction with the EXFOR files or independently.


## Quick-Start: Creating Datasets
Lets say you have your own C4 files and your own mass16, rct1, rct2 files and you want recreate the EXFOR database in csv format. The way you would do this is by calling out

This command creates two files: a pure AME csv or an iputed AME csv where NaN values can been filled using the mean from the avaliable isotopes. This command should take a few minutes.

`python -c "from Utilities import AME_Parsing_Utilities as ame_parsing; ame_parsing.get_all()"`

You'll need the proccessed AME files to create the EXFOR csv since the information will be appended to each measurment. To create an EXFOR csv either for protons or neutros or both you need to run the following command. This will process each c4 file and collect the necessary information, process it, convert it into a user-friendly format, and save a it into a single CSV file. Because of this, expect this command to last a while.

`python -c "from Utilities import EXFOR_Parsing_Utilities as exfor_parsing; exfor_parsing.get_all()"`

After having your dataset created you are welcome to use any other packages to traing your models on this dataset.

## Quick-Start: Testing your ML algorithms

- VISUALIZE ML ENDF EXFOR AND OTHER EVALUATED LIBRARIES
- GET STATISTICS FROM PREDICTINS ERRORS AMONGST EACH OTHER
- COMPILE ACE FILES IN CURRENT GRID
- RUN BENCHMARKS AND GET RESULTS NO TONLY KEFF


ADD VERBOSITY FUNCTIONS


Packages needed `natsort`

`python ./nucml/exfor/parsing_utilities.py "./AME"`
