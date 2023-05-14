FROM mcr.microsoft.com/devcontainers/python:0-3.8

# Install system dependencies, Miniconda, and Python packages
RUN apt-get update && \
    apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic && \
    sudo -u vscode /opt/conda/bin/conda config --add channels conda-forge && \
    sudo -u vscode /opt/conda/bin/conda init bash && \
    sudo -u vscode /opt/conda/bin/conda create -y -n default python=3.8 && \
    sudo -u vscode /opt/conda/bin/conda install -n default -y \
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
