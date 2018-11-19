#!/usr/bin/bash

#SBATCH --nodes 1 --time=0-01:00:00

module load ncbi-blast

if [ ! -f  sh_general_release_dynamic_s_01.12.2017.fasta.nhr ]; then
 makeblastdb -in sh_general_release_dynamic_s_01.12.2017.fasta -dbtype nucl
fi 
