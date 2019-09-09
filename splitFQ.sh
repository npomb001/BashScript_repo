#!/usr/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 16G -J SplitFQ --time 02:00:00

#This script can be used to grep sequences from a file using matching pattern.
#@M00384:206:000000000-AH7J7:1:1101:16677:1406 1:N:0:1_S 
#In this case, we'll use "1_S" pattern at the end.


for i in {63..92}
do 
   grep -A 3 -w "$i""_S" read2_rimfire_seriesB_2.fastq > Rimfire_R2/"$i"_S_R2.fastq 
done
