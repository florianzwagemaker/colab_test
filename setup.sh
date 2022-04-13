#!/bin/bash
wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.11.0-Linux-x86_64.sh
chmod +x Miniconda3-py37_4.11.0-Linux-x86_64.sh
./Miniconda3-py37_4.11.0-Linux-x86_64.sh -b -f -p /usr/local > /dev/null 2>&1
conda install -q -c conda-forge mamba -y > /dev/null 2>&1
mamba install -q -c conda-forge -c bioconda -c intel -c anaconda minimap2 samtools seqkit fastp -y > /dev/null 2>&1

echo "Setup is done, you can now continue with the course material"