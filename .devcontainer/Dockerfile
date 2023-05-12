FROM mcr.microsoft.com/devcontainers/python:0-3.8

# Install system dependencies
RUN apt-get update && \
    apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic

# Install Miniconda
RUN curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh && \
    chmod +x miniconda.sh && \
    ./miniconda.sh -b -u -p /root/.miniconda && \
    rm -rf miniconda.sh && \
    echo "export PATH=\$PATH:/root/.miniconda/bin" >> /root/.bashrc

# Configure Conda and install Python packages
RUN /root/.miniconda/bin/conda config --add channels conda-forge && \
    /root/.miniconda/bin/conda init bash && \
    /root/.miniconda/bin/conda create -y -n default python=3.8 && \
    /root/.miniconda/bin/conda install -n default -y \
        jupyter \
        ipykernel \
        notebook \
        pandoc \
        nbconvert \
        pandas \
        matplotlib \
        seaborn \
        numpy \
        scipy \
        scikit-learn \
        fastai \
        gensim \
        huggingface_hub \
        keras \
        nltk \
        opencv \
        pytorch \
        spacy \
        tensorflow \
        torchvision \
        transformers
