#!/usr/bin/bash
#SABTCH --nodes 1 --time=0-01:00:00


###This script is for converting ab1 files to fasta files
###It requires "emboss" which can be loaded as a module at UCR HPCC
###Updated by Nat Pombubpa on November 22, 2018

###Load "emboss" module
module load emboss

###Loop through all ".ab1" files
for file in *.ab1
do
 base=$(basename "$file" .ab1)
 seqret -sformat abi -osformat fasta -auto -stdout -sequence $file > $base.fasta
done
