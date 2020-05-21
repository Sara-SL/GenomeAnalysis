#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J Htseq_per_sample
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load htseq
module load samtools

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_13_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_13_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS15_13 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_13_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS15_13_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_16_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_16_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS15_16 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_16_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS15_16_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_58_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_58_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS15_58 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS15_58_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS15_58_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_21_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_21_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS16_21 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_21_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS16_21_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_43_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_43_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS16_43 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_43_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS16_43_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_49_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_49_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS16_49 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS16_49_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS16_49_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_33_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_33_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS17_33 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_33_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS17_33_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_42_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_42_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS17_42 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_42_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS17_42_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_45_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_45_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_FL_CS17_45 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/FL_CS17_45_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_FL_CS17_45_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_13_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_13_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS15_13 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_13_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS15_13_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_16_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_16_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS15_16 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_16_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS15_16_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_58_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_58_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS15_58 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS15_58_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS15_58_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_21_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_21_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS16_21 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_21_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS16_21_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_43_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_43_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS16_43 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_43_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS16_43_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_49_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_49_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS16_49 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS16_49_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS16_49_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_33_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_33_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS17_33 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_33_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS17_33_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_42_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_42_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS17_42 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_42_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS17_42_out

samtools view -bf 1 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_45_out/accepted_hits.bam > /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_45_out/accepted_hits.paired-end.bam
htseq-count -f bam -r pos -i ID -s yes --samout=htseq_HL_CS17_45 /home/sarasl/git/GenomeAnalysis/5_differential_expression/tophat_samples/HL_CS17_45_out/accepted_hits.paired-end.bam /home/sarasl/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff > htseq_sample_out/htseq_HL_CS17_45_out

