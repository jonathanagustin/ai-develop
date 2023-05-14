FROM mcr.microsoft.com/devcontainers/miniconda:0-3

# Install system dependencies, Miniconda, and Python packages
RUN apt-get update && \
    apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic && \
    conda config --add channels conda-forge && \
    conda init bash && \
    conda create -y -n default python=3.8 && \
    conda install -n default -y \
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
