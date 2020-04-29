#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J Assembly_evaluation_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer -p Nucmer_cleaned_scafSeq /home/sarasl/git/GenomeAnalysis/Data/scaffold/sel4_NW_015503979.fna /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Cleaned_files/clear_SOAPdenovo_output_K49.scafSeq
mummerplot -p MUMmerplot_cleaned_scafSeq --png --layout --filter /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/MUMmerplot_cleaned_scafSeq/Nucmer_cleaned_scafSeq.delta

