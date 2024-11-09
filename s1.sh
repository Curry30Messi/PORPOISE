#!/bin/bash
cd /scratch/project_2003204/zrx/PORPOISE/ || exit
export PATH="/scratch/project_2003204/zrx/anaconda3/bin:$PATH"
source activate base
python main.py --which_splits 5foldcv --split_dir tcga_blca --mode pathomic --reg_type pathomic --model_type porpoise_mmf --data_root_dir /scratch/project_2004030/zrx/BLCA/feature/ --modality P
python main.py --which_splits 5foldcv --split_dir tcga_blca --mode pathomic --reg_type pathomic --model_type porpoise_mmf --data_root_dir /scratch/project_2004030/zrx/BLCA/feature/ --modality G