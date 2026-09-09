#!/bin/bash

#SBATCH --job-name=qe-scf
#SBATCH --partition=day
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --mem-per-cpu=5G
#SBATCH --output=Si.scf.out

module reset
module load QuantumESPRESSO

srun --ntasks=4 --cpus-per-task=1 pw.x -in Si.scf.in