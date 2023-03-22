#!/bin/bash
#SBATCH --job-name=openmpi_full
#SBATCH --account=project_2001659
#SBATCH --partition=small
#SBATCH --time=01:00:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=8000
module load julia/1.8.5
export JULIA_MPI_TEST_NPROCS=2
srun julia --project=. test.jl