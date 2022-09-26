# Install OS
FROM ubuntu:latest

# Update OS
RUN apt-get update && apt-get upgrade -y

# Install packages
RUN apt install -y curl unzip build-essential ncurses-dev
RUN apt install -y byacc zlib1g-dev git cmake python-is-python3
RUN apt install -y default-jdk ant

# Set working directory
WORKDIR /root

# Copy profile
COPY bashrc.txt .bashrc
COPY bash_profile.txt .bash_profile

# Download miniconda
RUN curl -s -L https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > miniconda3.sh

# Install miniconda
RUN bash miniconda3.sh -b

# Initialize bash
RUN miniconda3/condabin/conda init bash

# Update conda
RUN miniconda3/condabin/conda update -q -y -n base conda

# Install bioconda
RUN miniconda3/condabin/conda config --add channels defaults
RUN miniconda3/condabin/conda config --add channels bioconda
RUN miniconda3/condabin/conda config --add channels conda-forge
RUN miniconda3/condabin/conda config --set channel_priority strict

# Install mamba
RUN miniconda3/condabin/conda install mamba -q -n base -c conda-forge -y

# Set default shell
ENTRYPOINT /bin/bash
