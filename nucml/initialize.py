import os
import nucml.ame.parsing_utilities as ame
import nucml.general_utilities as gen_utils
import requests

# MODIFY TO REPRESENT CURRENT PATH OF YOUR PROJECT:
user_path = "C:\\Users\\Pedro\\Desktop\\ML_Nuclear_Data\\"




# # DO NOT MODIFY!
ame_csv_path = os.path.join(os.path.abspath(user_path), "AME/CSV_Files").replace("\\","/")
evaluations_path = os.path.join(os.path.abspath(user_path), "Evaluated_Data").replace("\\","/")



# ame_originals_path = os.path.join(os.path.abspath(user_path), "AME/Originals").replace("\\","/")

# # INITIALIZE DIRECTORIES
# gen_utils.initialize_directories_v2(ame_csv_path)
# gen_utils.initialize_directories_v2(ame_originals_path)

# # CREATING DATASETS
# ame.get_all(ame_originals_path, ame_csv_path)

with open(os.path.join(user_path, "nucml/config.py"), 'a') as f:
    f.write("ame_dir_path = r'{}' \n".format(ame_csv_path))
    f.write("evaluations_path = r'{}' \n".format(evaluations_path))