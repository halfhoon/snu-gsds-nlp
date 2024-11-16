#!/bin/bash

#SBATCH --job-name=example                    # Submit a job named "example"
#SBATCH --nodes=1                             # Using 1 node
#SBATCH --gres=gpu:1                          # Using 1 gpu
#SBATCH --time=0-3:00:00                      # 3 hours timelimit
#SBATCH --mem=10000MB                         # Using 10GB CPU Memory
#SBATCH --cpus-per-task=4                     # Using 4 maximum processor


source ${HOME}/.bashrc
source ${HOME}/anaconda3/bin/activate
conda activate a4q2

srun python3 classifier.py --option finetune --epochs 3 --lr YOUR_LEARNING_RATE --train data/sst-train.txt --dev data/sst-dev.txt --test data/sst-test.txt --use_gpu