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
# Processors per task:
#SBATCH --ntasks=40
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
ipcontroller --ip='*' &
sleep 60
# next line will start as many ipengines as we have SLURM tasks because srun is a SLURM command
srun ipengine &  
sleep 60  # wait until all engines have successfully started
ipython XGB_EXFOR.py > XGB_EXFOR.pyout
ipcluster stop