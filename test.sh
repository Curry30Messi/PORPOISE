#!/bin/bash
cd /scratch/project_2003204/zrx/PORPOISE/ || exit
export PATH="/scratch/project_2003204/zrx/anaconda3/bin:$PATH"
source activate base
srun -N 1 -n 1 -c 6 -t 31:55:00 --mem-per-cpu=16G --gres=gpu:a100:1 -p gpusmall --account=project_2003204 python main.py --which_splits 5foldcv --split_dir tcga_luad --mode pathomic --reg_type pathomic --model_type porpoise_mmf --data_root_dir /scratch/project_2003204/zrx/results/LUAD/feature/