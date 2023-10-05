#!/bin/bash
#SBATCH --mail-user=SJSU_EMAIL@sjsu.edu
#SBATCH --mail-user=/dev/null
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --job-name=gpuTest_012218128
#SBATCH --output=gpuTest_%j.out
#SBATCH --error=gpuTest_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00     
## SBATCH --mem-per-cpu=2000
## SBATCH --gres=gpu:p100:1
#SBATCH --partition=gpu   

# on coe-hpc1 cluster load
# module load python3/3.8.8
#
# on coe-hpc2 cluster load:
# module load python-3.10.8-gcc-11.2.0-c5b5yhp slurm

source ~/anaconda3/etc/profile.d/conda.sh
conda activate cmpe249
conda info
export http_proxy=http://172.16.1.2:3128 
export https_proxy=http://172.16.1.2:3128
cd /home/012218128/cmpe249/hw1


# submit your code to Slurm
python train.py
