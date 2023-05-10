#!/usr/bin/env bash

# priority list of extensions to install
extensions=(
    "ms-python.vscode-pylance"
    "ms-toolsai.jupyter"
)

# install loop for VSCode extensions
for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force
done

# initialize conda
conda config --set report_errors false
conda init bash
conda config --add channels conda-forge

# priority install common AI/ML libraries
conda install -y --quiet \
    ipykernel \
    notebook \
    autopep8 \
    pandas \
    matplotlib \
    seaborn \
    numpy \
    scipy \
    scikit-learn

# list of other extensions to install
extensions=(
    "ms-python.autopep8"
    "ms-python.isort"
    "mutantdino.resourcemonitor"
    "DavidAnson.vscode-markdownlint"
    "mechatroner.rainbow-csv"
    "janisdd.vscode-edit-csv"
    "analytic-signal.preview-pdf"
)

# install loop for VSCode extensions
for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force 
done

# install other AI/ML libraries
conda install -y --quiet \
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

# needed for Jupyter: Export to PDF
sudo apt-get update -qq
sudo apt-get install -yqqq \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic
