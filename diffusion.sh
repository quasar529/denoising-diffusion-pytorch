#! /bin/bash
#SBATCH --qos=base_qos
#SBATCH --output=a6000_pretrain.out
#SBATCH --time 0-23:00:00
#SBATCH --gres=gpu:4
eval "$(conda shell.bash hook)"
conda activate tutorial
accelerate launch main.py --train_batch_size 4096 --save_and_sample_every 20000 
