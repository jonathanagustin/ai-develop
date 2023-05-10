#!/usr/bin/env bash

# priority install VSCode extensions
code --force --install-extension ms-python.vscode-pylance

# install and configure Python kernel
code --force --install-extension ms-toolsai.jupyter
mkdir -p /opt/conda/share/jupyter/kernels/python3/
cp .devcontainer/kernel.json /opt/conda/share/jupyter/kernels/python3/kernel.json

# initialize and configure conda
conda config --set report_errors false
conda init bash
conda config --add channels conda-forge

# priority install Python AI/ML libraries
conda install -y \
    ipykernel \
    notebook \
    pandoc \
    autopep8 \
    pandas \
    matplotlib \
    seaborn \
    numpy \
    scipy \
    scikit-learn

# other VSCode extensions
code --force --install-extension ms-python.autopep8
code --force --install-extension ms-python.isort
code --force --install-extension DavidAnson.vscode-markdownlint
code --force --install-extension analytic-signal.preview-pdf
code --force --install-extension mutantdino.resourcemonitor
code --force --install-extension mechatroner.rainbow-csv
code --force --install-extension janisdd.vscode-edit-csv

# libraries for converting notebook to PDF
sudo apt-get update
sudo apt-get install -y \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic

# install other Python AI/ML libraries
conda install -y \
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
