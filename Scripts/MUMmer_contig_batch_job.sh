#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH --reservation=g2020008_17
#SBATCH -J Assembly_evaluation_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
mummerplot -p MUMmerplot_contig --png /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/Nucmer_contig.delta
