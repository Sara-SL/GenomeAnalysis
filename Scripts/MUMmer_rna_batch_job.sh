#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J rna_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load MUMmer

nucmer -p Nucmer_rna_out /home/sarasl/git/GenomeAnalysis/Data/scaffold/sel4_NW_015503979.fna /home/sarasl/git/GenomeAnalysis/3_rna_assembly/trinity_out_dir/Trinity-GG.fasta
mummerplot -p MUMmerplot_out --png --layout --filter /home/sarasl/git/GenomeAnalysis/3_rna_assembly/Evaluation/Nucmer_rna_out.delta



