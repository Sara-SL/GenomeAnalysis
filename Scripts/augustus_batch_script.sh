#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 06:00:00
#SBATCH -J Annotation_augustus
#SBATCH --mail-type=ALL
#SBATCH --mail-user Sara.Styfberglundqvist.8518@student.uu.se

module load bioinfo-tools
module load maker/3.01.1-beta
module load perl 
module load augustus

perl randomSplit.pl augustus.gbk 100
new_species.pl --species=my_species
etraining --species=my_species augustus.gbk.train
augustus --species=my_species augustus.gbk.test | tee first_training.out
etraining --species=my_species augustus.gbk.train
augustus --species=my_species augustus.gbk.test | tee second_training.out
