import pickle
import os

dirname = os.path.dirname(__file__)

def load_zan(type="EXFOR"):
    """Loads a python dictionary containing neutron, mass number, and neutron number mapping 
    to isotopes in either EXFOR or AME format.

    Args:
        type (str, optional): values formated in EXFOR or AME specifications. Defaults to "EXFOR".

    Returns:
        dict
    """    
    if type.upper() == "EXFOR":
        filename = os.path.join(dirname, 'key_ZAN_EXFOR_value_el_dict.pkl')
    elif type.upper() == "AME":
        filename = os.path.join(dirname, 'key_ZAN_AME_value_el_dict.pkl')
    zan_dict = load_obj(filename)
    return zan_dict

def load_obj(file_path):
    """Loads a saved pikcle python object. 

    Args:
        file_path (str): path-like string to the object to be loaded.

    Returns:
        object: loaded object.
    """    
    with open(file_path, 'rb') as f:
        return pickle.load(f)

def get_element(zan_dict, Z, A, N):
    """Gets the element identifier given the number of protons, neutrons, and mass number.

    Args:
        zan_dict (dict): load python dictionary from the load_zan() function.
        Z (int): number of protons.
        A (int): mass number.
        N (int): number of neutrons.

    Returns:
        str: retrieved element.
    """    
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Element"]

def get_isotope(zan_dict, Z, A, N):
    """Gets the isotope identifier given the number of protons, neutrons, and mass number.

    Args:
        zan_dict (dict): load python dictionary from the load_zan() function.
        Z (int): number of protons.
        A (int): mass number.
        N (int): number of neutrons.

    Returns:
        str: retrieved isotope string.
    """    
    ZAN = str(Z) + str(A) + str(N)
    if ZAN == "12019":
        return "Water"
    else:
        return zan_dict[ZAN]["Isotope"]
