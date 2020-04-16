#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J Genome_assembly_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Your commands
SOAPdenovo-63mer all -p 2 -s /home/sarasl/git/GenomeAnalysis/2_genome_assembly/SOAPdenovo.config -K 49 -R -o /home/sarasl/git/GenomeAnalysis/2_genome_assembly/SOAPdenovo_output_K49 1>ass.log 2>ass.err
