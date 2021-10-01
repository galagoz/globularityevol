#!/bin/bash
# Gokberk Alagoz - 01/10/2021
# This script runs Ensembl VEP on lead SNPs

# Define variables

./vep --af --appris --biotype --buffer_size 500 --check_existing --distance 5000 --mane --polyphen b --pubmed --regulatory --sift b --species homo_sapiens --symbol --transcript_version --tsl --cache --input_file ${input_data} --output_file ${output_file}
