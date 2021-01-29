# NucML

Pedro Vicente-Valdez\
Nuclear Engineering PhD Candidate - UC Berkeley \
pedro.vicentevz@berkeley.edu


NucML is the first and only end-to-end python-based supervised machine learning pipeline for enhanced bias-free nuclear data generation and evaluation to support the advancement of next-generation nuclear systems. It offers capabilities that allows researchers to navigate through each step of the ML-based nuclear data cross section evaluation pipeline. Some of the supported activities include include dataset parsing and compilation of reaction data, exploratory data analysis, data manipulation and feature engineering, model training and evaluation, and validation via criticality benchmarks. Some of the inherit benefits of this approach are the reduced human-bias in the generation and solution and the fast iteration times. Resulting data from these models can aid the current NDE and help decisions in uncertain scenarios.

<!-- # TODO: UNCOMMENT PERIODIC TABLE ONCE GITHUB PUBLIC in AME PARSING UTILITIES
# TODO: ADD LINK TO DOWNLOAD EVALUATED DATA
# TODO: FIX GET FOR EXFOR ENDF DATA UTILITIES IF NEEDED 
# TODO: ADD ABILITY TO ADD JUST SINGLE C4 FILES -->

# Installation


You can simply install NucML using `pip`:

```python
pip install nucml
```

# Setup

Before exploring any functionalities all datasets need to be generated. There are many data sources that enable NucML's core functionalities. Before you begin, we need to setup a special directory where NucML will generaet the needed data. The easesit path is to clone the ML_Nuclear_Data repo into the location of your choice:

```git
git clone https://github.com/pedrojrv/ML_Nuclear_Data.git
```

Once cloned, we need to setup the path to both the workign directory and the .ACE files which already form part of the ML_Nuclear_Data repository. Next, is to parse all EXFOR files to generate usable single files for each projectile. The ML_Nuclear_Data repository contains a utility script to do just that. Run the following cmd commands:


```python
cd path/to/the/directory/ML_Nuclear_Data
python -c "import nucml.configure as config; config.configure('."', 'ACE/')"
python generate_exfor.py
```


This will take a couple of minutes. Running this script will create the CSV_Files directory and all the content including all CSV files. Additionally, a `tmp` directory will be created containing files to create the CSV files. Feel free to delete it after the process has finish. The cloned repository does not only contain the raw data files but a lot of turials on how to use all NucML capabilities. For more information in the structure please visit the repos README.md The best way to get starte is through those jupyter notebooks. 

NOTE: This will create a database based on the latest pulled version of the EXFOR database. For information on what database look at the clone repository information. 





