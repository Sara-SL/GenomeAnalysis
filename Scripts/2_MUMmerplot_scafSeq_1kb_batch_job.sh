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
nucmer -p Nucmer_scafSeq /home/sarasl/git/GenomeAnalysis/Data/scaffold/sel4_NW_015503979.fna /home/sarasl/git/GenomeAnalysis/2_genome_assembly/SOAPdenovo_output_K49.scafSeq    
delta-filter -l 1000 /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/2_MUMmerplot_scafSeq_1kb/Nucmer_scaffSeq.delta > /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/2_MUMmerplot_scafSeq_1kb/2_delta-filter_scafSeq_1kb.delta
mummerplot -p 2_MUMmerplot_scafSeq_1kb --png /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Evaluation/2_MUMmerplot_scafSeq_1kb/2_delta-filter_scafSeq_1kb.delta


