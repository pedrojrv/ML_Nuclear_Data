import os

def configure(user_path, ace_path):
    """Configures an internal file necessary to activate all NucML functionalities. 

    Args:
        user_path (str): path-like string pointing to the project directory.
        ace_path (str): path-like string pointint to the .ace files. This can be an already
            existing directory from a serpent distribution. Note: MCNP has not been tested. 
            If the .ace files have different structure, the ace utilities may not work. 

    Returns:
        None
    """    
    abs_user_path = os.path.abspath(user_path)
    ame_csv_path = os.path.join(abs_user_path, "AME/CSV_Files").replace("\\","/")
    evaluations_path = os.path.join(abs_user_path, "Evaluated_Data").replace("\\","/")
    ensdf_path = os.path.join(abs_user_path, "ENSDF").replace("\\","/")
    exfor_csv_path = os.path.join(abs_user_path, "EXFOR/CSV_Files").replace("\\","/")
    bench_templ_path = os.path.join(abs_user_path, "Benchmarks/templates").replace("\\","/")

    with open(os.path.join(os.path.dirname(__file__), 'config.py'), 'w') as f:
        f.write("ame_dir_path = r'{}' \n".format(ame_csv_path))
        f.write("evaluations_path = r'{}' \n".format(evaluations_path))
        f.write("ensdf_path = r'{}' \n".format(ensdf_path))
        f.write("exfor_path = r'{}' \n".format(exfor_csv_path))
        f.write("bench_template_path = r'{}' \n".format(bench_templ_path))
        f.write("ace_path = r'{}' \n".format(os.path.abspath(ace_path)))


    return None

