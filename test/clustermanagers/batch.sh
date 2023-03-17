#!/bin/bash
#SBATCH --job-name=clustermanagers
#SBATCH --account=project_2001659
#SBATCH --partition=test
#SBATCH --time=00:15:00
#SBATCH --ntasks=2
#SBATCH --mem=1000
module load use.own julia-test/1.8.5
julia --project=. test.jl