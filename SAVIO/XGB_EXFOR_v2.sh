#!/bin/bash
# Job name:
#SBATCH --job-name=XGB
#
#SBATCH --output=XGB_output
#
#SBATCH --error=XGB_errors
#
# Account:
#
#SBATCH --qos=nuclear_savio_normal
#
#SBATCH --account=co_nuclear
#
# Partition:
#SBATCH --partition=savio
#
# Request one node:
#SBATCH --nodes=1
#
# Request cores (20, for example)
#SBATCH --ntasks-per-node=20
#
# Processors per task:
#SBATCH --cpus-per-task=40
#
# Wall clock limit:
#SBATCH --time=100:00:00
#
#this will send me an email
#SBATCH --mail-user=pedro.vicentevz@berkeley.edu
#SBATCH --mail-type=all
#
#
## Command(s) to run (example):
module load python
source activate data_mining
python XGB_EXFOR.py
