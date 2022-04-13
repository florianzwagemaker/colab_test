#!/bin/bash
wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.11.0-Linux-x86_64.sh
chmod +x Miniconda3-py37_4.11.0-Linux-x86_64.sh
./Miniconda3-py37_4.11.0-Linux-x86_64.sh -b -f -p /usr/local > /dev/null
conda install -c conda-forge mamba -y > /dev/null
mamba install -c conda-forge -c bioconda -c intel -c anaconda minimap2 samtools seqkit fastp -y > /dev/null

echo "Setup is done, you can now continue with the course material"