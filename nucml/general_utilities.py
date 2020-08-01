from IPython.display import Audio
import IPython.display as ipd
import time
import os
import logging
import glob
import shutil

sound_file = 'beep.wav'

def make_sound():
    for i in [1, 2, 3]:
        ipd.display(ipd.Audio(sound_file, autoplay=True))
        time.sleep(2)
        
# def check_if_exist(files_list):
#     if all([os.path.isfile(f) for f in files_list]):
#         return True
#     else:
#         return False

def get_files_w_extension(directory, extension):
    files = glob.glob(os.path.join(directory, extension))
    if len(files) != 0:
        return files
    else:
        return files

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

def check_if_files_exist(files_list):
    if all([os.path.isfile(f) for f in files_list]):
        return True
    else:
        return False

def func(x, c, d):
    return c * x + d