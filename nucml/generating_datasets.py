import sys
import os
import importlib
import logging
sys.path.append("..")

logger = logging.getLogger()
logger.setLevel(logging.INFO)

##############################################################################################
################################### GENERATING AME DATASET ###################################
##############################################################################################

import nucml.ame.parsing_utilities as ame # pylint: disable=import-error

ame_dir_path = os.path.abspath("./AME/")
ame_originals_path = os.path.abspath("./AME/Originals/")

# ame.get_all(originals_directory=ame_originals_path, saving_directory=ame_dir_path, 
#             fillna=True, add_qvalues=True, mode="elemental", fill_value=0)


##############################################################################################
################################ GENERATING EXFOR DATASETS ###################################
##############################################################################################

import nucml.exfor.parsing_utilities as exfor_parsing # pylint: disable=import-error

for mode in ["neutrons", "protons", "alphas", "deuterons", "gammas", "helions"]:
    exfor_directory =  "./EXFOR/C4_Files/" + mode + "/"
    tmp_path =  "./EXFOR/tmp/Extracted_Text" + "_" + mode + "/"
    heavy_dir = './EXFOR/CSV_Files/' + "EXFOR_" + mode + "/"

    exfor_parsing.get_all(exfor_parsing.get_c4_names(exfor_directory), heavy_dir, tmp_path)
    exfor_parsing.csv_creator(heavy_dir, tmp_path, mode, ame_dir_path, append_ame=True)