import os
import logging
import glob
import shutil
import pickle
import re
from natsort import natsorted
import tarfile


def get_files_w_extension(directory, extension):
    """Gets a list of relative paths to files that match the given extension in the given directory.

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
        directory (str): path-like string to directory to reset or create.
        reset (bool, optional): if True, the directory will be deleted and created again.

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
    """Checks if a list of files exists given their paths.

    Args:
        files_list (list): list of relative or absolute path-like strings to check for existence.

    Returns:
        bool: True if all exists, False if more than one does not exist.
    """    
    if all([os.path.isfile(f) for f in files_list]):
        return True
    else:
        return False

def func(x, c, d):
    """Line equation function. Used to interpolate AME features.

    Args:
        x (int or float): parameter.
        c (int or float): parameter.
        d (int or float): parameter

    Returns:
        int or float: linear equation result.
    """    
    return c * x + d

def save_obj(obj, saving_dir, name):
    """Saves a python object like lists or numpy arrays into a pickle file.

    Args:
        obj (object): object to save. Can be a list, numpy array, dataframe, etc.
        saving_dir (str): path-like string where the object will be saved.
        name (str): name of the object.

    Returns:
        None
    """    
    with open(os.path.join(saving_dir, name + '.pkl'), 'wb') as f:
        pickle.dump(obj, f, pickle.HIGHEST_PROTOCOL)
    return None

def load_obj(file_path):
    """Loads a saved pikcle python object. 

    Args:
        file_path (str): path-like string to the object to be loaded.

    Returns:
        object: loaded object.
    """    
    with open(file_path, 'rb') as f:
        return pickle.load(f)


def parse_mt(mt_number, mt_for="ENDF", one_hot=False):
    """Universal ENDF reaction code parser. Used to parse an integer code to any format necessary 
        including for EXFOR and ENDF.

    Args:
        mt_number (int): reaction channel code
        mt_for (str, optional): what loader object is the MT for. Options include "EXFOR" and "ENDF". Defaults to "endf".
        one_hot (bool, optional): If mt_for="EXFOR", then this argument specifies if the needed format 
            is for a one-hot encoded dataframe. Defaults to False.

    Returns:
        str or int: the formatted reaction channel. Type depends on the arguments.
    """    
    if mt_for.upper() == "ENDF":
        mt_number = str(int(mt_number))
        if mt_number.isdigit():
            if len(mt_number) != 3:
                mt_number = mt_number.zfill(3)
            return "MT" + mt_number
    elif mt_for.upper() == "EXFOR":
        mt_number = str(int(mt_number))
        if one_hot:
            return "MT_" + mt_number
        else:
            return int(mt_number)
    elif mt_for.upper() == "ACE":
        return mt_number
    
def parse_elaaa(ELAAA, parse_for="ENDF"):
    """Universal isotope identifier formatter for the EXFOR and ENDF loaders.

    Args:
        ELAAA (str): ELAAA formatted string. 
        parse_for (str, optional): loader requesting formatting. Options include "EXFOR" and "ENDF". Defaults to "endf".

    Returns:
        str: formatted isotope identifier.
    """    
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


def compress(tar_file, directory):
    """
    Adds files (`members`) to a tar_file and compress it
    """
    
    files = os.listdir(directory)
    tar = tarfile.open(tar_file, mode="w:gz")
    for i in files:
        # add file/folder/link to the tar file (compress)
        tar.add(i)
    tar.close()

def decompress(tar_file, path):
    """
    Extracts `tar_file` and puts the `members` to `path`.
    If members is None, all members on `tar_file` will be extracted.
    """
    tar = tarfile.open(tar_file, mode="r:gz")
    members = tar.getmembers()
    tar.extractall(members=members, path=path)
    tar.close()