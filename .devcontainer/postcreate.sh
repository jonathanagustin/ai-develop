#!/usr/bin/env bash

# Executes after the creating Codespace and cloning source code

install_python_libs() {
conda install mamba -n base -c conda-forge

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
    transformers
}

install_python_libs > /dev/null 2>&1 &
