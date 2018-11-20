#!/usr/bin/bash
#SBATCH --nodes 1 --time=0-01:00:00

###This script is for making blast database.
###It requires "ncbi-blast" which can be loaded as a module on UCR HPCC
###Updated by Nat Pombubpa on November 20, 2018

###Load "ncbi-blast" module
module load ncbi-blast

###Check the blast database, if it does not exist, then makeblastdb will be run 
if [ ! -f  sh_general_release_dynamic_s_01.12.2017.fasta.nhr ]; then
 makeblastdb -in sh_general_release_dynamic_s_01.12.2017.fasta -dbtype nucl
fi 
