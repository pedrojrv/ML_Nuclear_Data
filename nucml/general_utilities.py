from IPython.display import Audio
import IPython.display as ipd
import time
import os

sound_file = 'beep.wav'

def make_sound():
    for i in [1, 2, 3]:
        ipd.display(ipd.Audio(sound_file, autoplay=True))
        time.sleep(2)
        
def check_if_exist(files_list):
    if all([os.path.isfile(f) for f in files_list]):
        return True
    else:
        return False