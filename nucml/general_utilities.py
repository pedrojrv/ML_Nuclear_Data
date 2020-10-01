from IPython.display import Audio
import IPython.display as ipd
import time
import os
import logging
import glob
import shutil
import pickle
import sys

        
# def check_if_exist(files_list):
#     if all([os.path.isfile(f) for f in files_list]):
#         return True
#     else:
#         return False

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
    if len(files) != 0:
        return files
    else:
        return sys.exit("GENERAL UTILITIES: No {} files found. Make sure you specified the path correctly.".format(extension))

def initialize_directories(directory):
    """Creates or resets the given directories.

    Args:
        directory (str): path to directory to reset or create.

    Returns:
        None

    """
    if os.path.isdir(directory):
        logging.info("GEN UTILS: Directory already exists. Re-initializing...")
        shutil.rmtree(directory)
        os.makedirs(directory)
        logging.info("GEN UTILS: Directory restarted.")
    else:
        logging.info("GEN UTILS: Directory does not exists. Creating...")
        os.makedirs(directory)
        logging.info("GEN UTILS: Directory created.")

def create_directories(directory):
    """Creates or resets the given directories.

    Args:
        directory (str): path to directory to reset or create.

    Returns:
        None

    """
    if os.path.isdir(directory):
        logging.info("GEN UTILS: Directory already exists.")
    else:
        logging.info("GEN UTILS: Directory does not exists. Creating...")
        os.makedirs(directory)
        logging.info("GEN UTILS: Directory created.")

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