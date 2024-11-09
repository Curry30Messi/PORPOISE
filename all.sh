srun -N 1 -n 1 -c 6 -t 31:55:00 --mem-per-cpu=16G --gres=gpu:a100:1 -p gpusmall --account=project_2003204 bash s3.sh && \
srun -N 1 -n 1 -c 6 -t 31:55:00 --mem-per-cpu=16G --gres=gpu:a100:1 -p gpusmall --account=project_2003204 bash s4.sh
