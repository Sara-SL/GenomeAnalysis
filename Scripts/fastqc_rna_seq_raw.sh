#!/bin/bash

	for i in ../Data/sel4/rna_seq_data/raw/*.fastq.gz
        do
          	echo "Running $i ..."
                fastqc -t 1 -o ../1_quality_check/fastqc_rna_seq_raw "$i"
        done
