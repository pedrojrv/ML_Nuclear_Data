#!/bin/bash
# Job name:
#SBATCH --job-name=KNN
#
#SBATCH --output=KNN_output
#
#SBATCH --error=KNN_errors
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
#SBATCH --cpus-per-task=20
#
# Processors per task:
#SBATCH --ntasks-per-node=1
#
# Wall clock limit:
#SBATCH --time=900:00:00
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
sleep 60 # wait until all engines have successfully started
ipython KNN_EXFOR.py > KNN_EXFOR.pyout
ipcluster stop