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
#SBATCH --nodes=2
#
# Request cores (20, for example)
#SBATCH --ntasks-per-node=40
#
# Processors per task:
#SBATCH --cpus-per-node=1
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
ipcluster start -n $SLURM_NTASKS &
sleep 45 # wait until all engines have successfully started
ipython xgb_exfor.py > xgb_exfor.pyout
ipcluster stop

