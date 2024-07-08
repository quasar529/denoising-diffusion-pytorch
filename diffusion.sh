#! /bin/bash
#SBATCH --qos=big_qos
#SBATCH --output=../6000pretrain_1536.out
#SBATCH --time 0-23:00:00
#SBATCH --gres=gpu:8
eval "$(conda shell.bash hook)"
conda activate tutorial
accelerate launch main.py --train_batch_size 4096 --save_and_sample_every 50000 
