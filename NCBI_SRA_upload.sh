#!/bin/sh
## bash script for uploading SRA to NCBI using ASPERA 
## -d *.gz to upload all .gz files
## subasp@upload.ncbi.nlm.nih.gov:uploads/npomb001@ucr.edu_ga4D3u6P/SUB5651272/ this is for destination (follow NCBI instruction)
## SUB5651272 is a unique folder that will be created for all the files.

module load aspera

ascp -i $ASPERAKEY -QT -l300m -k1 -d * subasp@upload.ncbi.nlm.nih.gov:uploads/npomb001@ucr.edu_ga4D3u6P/SUB5651272/
