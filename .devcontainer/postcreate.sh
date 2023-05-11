#!/usr/bin/env bash

# Executes after the creating Codespace and cloning source code

install_mamba() {
    conda install mamba -y -n base -c conda-forge
}

install_env() {
    mamba install -y \
        ipykernel \
        jupyter \
        notebook \
        pandoc \
        nbconvert \
        autopep8 \
        pandas \
        matplotlib \
        seaborn \
        numpy \
        scipy \
        scikit-learn \
        fastai \
        gensim \
        huggingface \
        keras \
        nltk \
        opencv \
        pytorch \
        spacy \
        tensorflow \
        torchvision \
        transformers \
        -c conda-forge
}

main() {
    install_mamba
    install_default_env
}

main
