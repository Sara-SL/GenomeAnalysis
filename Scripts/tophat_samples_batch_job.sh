#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J Tophat_samples
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load tophat

tophat -o FL_CS15_16_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_16.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_16.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_16.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_16.trim_2P.fastq.gz

tophat -o FL_CS15_13_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_13.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_13.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_13.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_13.trim_2P.fastq.gz

tophat -o FL_CS15_58_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_58.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_58.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_58.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS15_58.trim_2P.fastq.gz

tophat -o FL_CS16_21_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_21.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_21.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_21.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_21.trim_2P.fastq.gz

tophat -o FL_CS16_43_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_43.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_43.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_43.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_43.trim_2P.fastq.gz

tophat -o FL_CS16_49_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_49.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_49.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_49.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS16_49.trim_2P.fastq.gz

tophat -o FL_CS17_33_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_33.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_33.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_33.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_33.trim_2P.fastq.gz

tophat -o FL_CS17_42_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_42.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_42.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_42.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_42.trim_2P.fastq.gz

tophat -o FL_CS17_45_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_45.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_45.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_45.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/FL_CS17_45.trim_2P.fastq.gz

tophat -o HL_CS15_13_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_13.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_13.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_13.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_13.trim_2P.fastq.gz

tophat -o HL_CS15_16_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_16.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_16.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_16.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_16.trim_2P.fastq.gz

tophat -o HL_CS15_58_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_58.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_58.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_58.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS15_58.trim_2P.fastq.gz

tophat -o HL_CS16_21_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_21.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_21.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_21.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_21.trim_2P.fastq.gz

tophat -o HL_CS16_43_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_43.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_43.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_43.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_43.trim_2P.fastq.gz

tophat -o HL_CS16_49_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_49.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_49.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_49.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS16_49.trim_2P.fastq.gz

tophat -o HL_CS17_33_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_33.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_33.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_33.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_33.trim_2P.fastq.gz

tophat -o HL_CS17_42_out /home/sarasl/git/GenomeAnalysis/3_rna_assembly/bowtie_index_files/bowtie2_index /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_42.trim_1P.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_42.trim_1U.fastq.gz,/home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_42.trim_2U.fastq.gz /home/sarasl/git/GenomeAnalysis/Data/rna_seq_data/trimmed/HL_CS17_42.trim_2P.fastq.gz

