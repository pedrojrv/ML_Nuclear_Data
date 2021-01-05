import os
import nucml.ame.parsing_utilities as ame
import nucml.general_utilities as gen_utils
import requests


# uncomment
# # MODIFY TO REPRESENT CURRENT PATH OF YOUR PROJECT:
# user_path = "C:\\Users\\Pedro\\Desktop\\ML_Nuclear_Data\\"

def configure(user_path):
    abs_user_path = os.path.abspath(user_path)
    # # DO NOT MODIFY!
    ame_csv_path = os.path.join(abs_user_path, "AME/CSV_Files").replace("\\","/")
    evaluations_path = os.path.join(abs_user_path, "Evaluated_Data").replace("\\","/")
    ensdf_path = os.path.join(abs_user_path, "ENSDF").replace("\\","/")
    exfor_csv_path = os.path.join(abs_user_path, "EXFOR/CSV_Files").replace("\\","/")

    

    with open(os.path.join(user_path, "nucml/config.py"), 'a') as f:
        f.write("ame_dir_path = r'{}' \n".format(ame_csv_path))
        f.write("evaluations_path = r'{}' \n".format(evaluations_path))
        f.write("ensdf_path = r'{}' \n".format(ensdf_path))
        f.write("exfor_path = r'{}' \n".format(exfor_csv_path))

