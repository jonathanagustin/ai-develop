FROM mcr.microsoft.com/devcontainers/miniconda:0-3

USER root

RUN apt-get update && \
    apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic && \
    conda init bash && \
    conda config --add channels conda-forge && \
    conda create -y -n default python=3.8 && \
    conda install -n default -y \
        fastai \
        gensim \
        huggingface_hub \
        ipykernel \
        jupyter \
        keras \
        matplotlib \
        nbconvert \
        nltk \
        notebook \
        numpy \
        opencv \
        pandas \
        pandoc \
        plotly \
        pytorch \
        scikit-learn \
        scipy \
        seaborn \
        spacy \
        tensorflow \
        torchvision \
        transformers
