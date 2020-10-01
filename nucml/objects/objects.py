import pickle
import os

dirname = os.path.dirname(__file__)

def load_zan(type="EXFOR"):
    if type == "EXFOR":
        filename = os.path.join(dirname, 'key_ZAN_EXFOR_value_el_dict.pkl')
    elif type == "AME":
        filename = os.path.join(dirname, 'key_ZAN_AME_value_el_dict.pkl')
    zan_dict = load_obj(filename)
    return zan_dict

def load_obj(file_path):
    with open(file_path, 'rb') as f:
        return pickle.load(f)

def get_element(zan_dict, Z, A, N):
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Element"]

def get_isotope(zan_dict, Z, A, N):
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Isotope"]