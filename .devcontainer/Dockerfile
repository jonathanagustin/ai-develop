FROM mcr.microsoft.com/devcontainers/anaconda:0-3

USER root

RUN apt-get update --quiet && \
    apt-get install --yes --quiet \
        texlive-xetex \
        pandoc && \
    rm -rf /var/lib/apt/lists/* && \
    conda config --add channels conda-forge && \
    conda config --add channels nvidia && \
    conda config --add channels pytorch && \
    conda install --yes \
        cudatoolkit \
        keras \
        pytorch \
        spacy \
        tensorflow \
        torchaudio \
        torchvision \
        transformers && \
    conda clean --all --force --yes
