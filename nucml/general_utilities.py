from IPython.display import Audio
import IPython.display as ipd
import time
import os
import logging
import glob
import shutil
import pickle
import sys
import re
from natsort import natsorted



def get_files_w_extension(directory, extension):
    """Gets a list of relative paths to files that match the given extension in the given directory

    Args:
        directory (str): Path to the directory where the search will be conducted.
        extension (str): The extension that will be use to match files (i.e. ".csv").

    Returns:
        list: contains relative path to each encountered file containing the given extension.
    """    
    extension = "*" + extension
    files = glob.glob(os.path.join(directory, extension))
    files = natsorted(files)
    return files

def initialize_directories_v2(directory, reset=False):
    """Creates or resets the given directories.

    Args:
        directory (str): path to directory to reset or create.

    Returns:
        None

    """
    if os.path.isdir(directory):
        logging.info("GEN UTILS: Directory already exists.")
        if reset:
            logging.info("GEN UTILS: Re-initializing...")
            shutil.rmtree(directory)
            os.makedirs(directory)
            logging.info("GEN UTILS: Directory restarted.")
    else:
        logging.info("GEN UTILS: Directory does not exists. Creating...")
        os.makedirs(directory)
        logging.info("GEN UTILS: Directory created.")


def check_if_files_exist(files_list):
    if all([os.path.isfile(f) for f in files_list]):
        return True
    else:
        return False

def func(x, c, d):
    return c * x + d

def save_obj(obj, saving_dir, name):
    with open(os.path.join(saving_dir, name + '.pkl'), 'wb') as f:
        pickle.dump(obj, f, pickle.HIGHEST_PROTOCOL)

def load_obj(file_path):
    with open(file_path, 'rb') as f:
        return pickle.load(f)


def parse_mt(mt_number, mt_for="endf", one_hot=False):
    if mt_for.upper() == "ENDF":
        mt_number = str(int(mt_number))
        if mt_number.isdigit():
            if len(mt_number) != 3:
                mt_number = mt_number.zfill(3)
            return "MT" + mt_number
    elif mt_for.upper() == "EXFOR":
        mt_number = str(int(mt_number))
        # if mt_number.isdigit():
        #     if len(mt_number) != 3:
        #         mt_number = mt_number.zfill(3)
        if one_hot:
            return "MT_" + mt_number
        else:
            return int(mt_number)
    
def parse_elaaa(ELAAA, parse_for="endf"):
    element, mass = re.findall(r'[A-Za-z]+|\d+', ELAAA)
    if element.isdigit():
        mass, element = re.findall(r'[A-Za-z]+|\d+', ELAAA)
    element = element.capitalize()

    if parse_for.upper() == "ENDF":
        if len(mass) != 3:
            mass = mass.zfill(3)
        return element + mass
    elif parse_for.upper() == "ENSDF":
        return mass + element
    else:
        raise SyntaxError('ELAAA value provided is not numeric.')