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
delta-filter -l 1000 /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/Nucmer_contig.delta > /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/MUMmerplot_contig_1kb/delta-filter_contig_1kb.delta
mummerplot -p MUMmerplot_contig_1kb --png /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/MUMmerplot_contig_1kb/delta-filter_contig_1kb.delta


