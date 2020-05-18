#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 06:00:00
#SBATCH -J Annotation_genemark
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load maker/3.01.1-beta
module load GeneMark 

cp -vf /sw/bioinfo/GeneMark/keyfile/gm_key $HOME/.gm_key
gmes_petap.pl -ES -cores 4 -sequence /home/sarasl/git/GenomeAnalysis/2_genome_assembly/Cleaned_files/clear_SOAPdenovo_output_K49.contig


