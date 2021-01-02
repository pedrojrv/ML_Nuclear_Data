import glob, os, shutil

evaluated_data_path = "../../Evaluated_Data/"

plots = glob.glob(os.path.join(evaluated_data_path, "*/*/*/plots"))
exfor = glob.glob(os.path.join(evaluated_data_path, "*/*/*/exfor"))
files = glob.glob(os.path.join(evaluated_data_path, "*/*/*/files"))
resonance = glob.glob(os.path.join(evaluated_data_path, "*/*/*/*/resonance"))
info = glob.glob(os.path.join(evaluated_data_path, "*/*/*/*/info"))
residual = glob.glob(os.path.join(evaluated_data_path, "*/*/*/*/residual"))
exfor = glob.glob(os.path.join(evaluated_data_path, "*/*/exfor"))
plots2 = glob.glob(os.path.join(evaluated_data_path, "*/*/plots"))

for dirs in [plots, exfor, files, resonance, info, residual, exfor, plots2]:
    for dir_to_remove in dirs:
        shutil.rmtree(dir_to_remove)