#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J rna_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load trinity/2.4.0

Trinity --genome_guided_bam /home/sarasl/git/GenomeAnalysis/3_rna_assembly/tophat_out/accepted_hits.bam --max_memory 12G --genome_guided_max_intron 10000 --CPU 2
