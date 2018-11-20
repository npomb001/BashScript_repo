#!/usr/bin/bash

#SBATCH --nodes 1 --ntasks 16 --time=0-02:00:00 

module load ncbi-blast

cd $SLURM_SUBMIT_DIR

FILES=DATA/*.fasta

for file in $FILES
do
 blastn -query $file -db /rhome/npomb001/shared/projects/Lichen/genetic_reference_library/nat_test/sh_general_release_dynamic_s_01.12.2017.fasta\
  -evalue 1e-100 -max_target_seqs 8  -num_threads 16 -outfmt 6 -out $file.tab  
done


if [ ! -f All.blast.results.nat8.tab ]; then
 echo $'qseqid\tsseqid\tpident\tlength\tmismatch\tgapopen\tqstart\tqend\tsstart\tsend\tevalue\tbitscore' | cat - DATA/*.tab > All.blast.results.nat8.tab
fi
