#!/usr/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --mem 128G
#SBATCH --job-name="archive"
#SBATCH --time=0-02:00:00


###This script is for compressing large directory for archive.
###For using at UCR HPCC

cd $SLURM_SUBMIT_DIR

###Directory name for compressing
DIR=BacQ2FWMojaveLE

###If the archive file doesn't exist, then it will start "tar"
if [ ! -f $DIR.archive.tar.gz ]; then
 tar -zcvf $DIR.archive.tar.gz $DIR/
else 
 echo Archive file is already generated.
fi
