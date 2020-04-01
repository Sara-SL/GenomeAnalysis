#!/bin/bash

	for i in ../Data/wgs_data/*.fastq.gz
        do
          	echo "Running $i ..."
                fastqc -t 1 -o ../1_quality_check/fastqc_wgs "$i"
        done
