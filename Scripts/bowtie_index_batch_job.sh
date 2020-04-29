#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Index_builder
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load tophat

bowtie2-build -f /home/sarasl/git/GenomeAnalysis/Data/scaffold/sel4_NW_015503979.fna bowtie2_index
