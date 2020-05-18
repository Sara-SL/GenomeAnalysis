#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Differential_expression
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load htseq

htseq-count -f bam -r pos -i ID -s yes --samout=htseq_SE_out /home/sarasl/git/GenomeAnalysis/5_differential_expression/accepted_hits.single-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff
