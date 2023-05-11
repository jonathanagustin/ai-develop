#!/usr/bin/env bash

# Executes after the creating Codespace and cloning source code

install_mamba() {
    curl -sSL "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh" -o /tmp/mamba.sh
    sudo chmod +x /tmp/mamba.sh
    bash /tmp/mamba.sh -b -u
}

install_default_env() {
    /home/vscode/.local/bin/micromamba install -y \
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