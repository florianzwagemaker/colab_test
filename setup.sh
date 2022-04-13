MINICONDA_INSTALLER_SCRIPT=Miniconda3-py37_4.11.0-Linux-x86_64.sh
MINICONDA_PREFIX=/usr/local
wget https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER_SCRIPT
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX > /dev/null
conda install -c conda-forge mamba -y > /dev/null
mamba install -c conda-forge -c bioconda -c intel -c anaconda minimap2 samtools seqkit fastp -y > /dev/null

echo "Setup is done, you can now continue with the course material"
