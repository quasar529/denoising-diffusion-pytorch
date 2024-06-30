#! /bin/bash
#SBATCH --qos=base_qos
#SBATCH --output=a6000_pal_val_2.out
#SBATCH --time 0-23:00:00
#SBATCH --gres=gpu:4
eval "$(conda shell.bash hook)"
conda activate tutorial
accelerate launch main.py
