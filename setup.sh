#!/bin/bash

## fetch an example fastq file from ENA
rm -rf /content/sample_data
mkdir example_data
wget -q ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR118/078/SRR11844878/SRR11844878_1.fastq.gz -O example_data/sars-cov-2_hong_kong_example.fastq.gz & 

## fetch the reference genome from NCBI
wget -q https://raw.githubusercontent.com/RIVM-bioinformatics/SARS2seq/main/SARS2seq/workflow/files/MN908947.fasta -O example_data/sars-cov-2_reference.fasta &


## install miniconda and get some basic tools
wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.11.0-Linux-x86_64.sh
chmod +x Miniconda3-py37_4.11.0-Linux-x86_64.sh
./Miniconda3-py37_4.11.0-Linux-x86_64.sh -b -f -p /usr/local > /dev/null 2>&1
rm Miniconda3-py37_4.11.0-Linux-x86_64.sh
conda install -q -c conda-forge mamba -y > /dev/null 2>&1
mamba install -q -c conda-forge -c bioconda -c intel -c anaconda minimap2 samtools seqkit fastp -y > /dev/null 2>&1

echo "Installation of Miniconda and some basic tools is done"