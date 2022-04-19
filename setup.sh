#!/bin/bash

## fetch an example fastq file from ENA
rm -rf /content/sample_data
mkdir example_data
bash -c "$(wget -q ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR118/078/SRR11844878/SRR11844878_1.fastq.gz -O example_data/sars-cov-2_hong_kong_example.fastq.gz && echo 'Done with downloading the example data')" & 

## fetch the reference genome from NCBI
bash -c "$(wget -q 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?tool=portal&save=file&log$=seqview&db=nuccore&report=fasta&id=1798172431&extrafeat=null&conwithfeat=on&hide-cdd=on' -O example_data/sars-cov-2_referebce.fasta && echo 'Done with downloading the reference genome')" &


## install miniconda and get some basic tools
wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.11.0-Linux-x86_64.sh
chmod +x Miniconda3-py37_4.11.0-Linux-x86_64.sh
./Miniconda3-py37_4.11.0-Linux-x86_64.sh -b -f -p /usr/local > /dev/null 2>&1
conda install -q -c conda-forge mamba -y > /dev/null 2>&1
mamba install -q -c conda-forge -c bioconda -c intel -c anaconda minimap2 samtools seqkit fastp -y > /dev/null 2>&1

echo "Installation of Miniconda and some basic tools is done"