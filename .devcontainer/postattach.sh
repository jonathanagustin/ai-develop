#!/usr/bin/env bash

# priority install for VSCode extensions
code --install-extension ms-python.vscode-pylance --force
code --install-extension ms-toolsai.jupyter --force

# initialize conda
conda config --set report_errors false
conda init bash
conda config --add channels conda-forge

# priority install for Python libraries
conda install -y --quiet \
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

# install other Python libraries
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

# for converting Python notebook to PDF
sudo apt-get update
sudo apt-get install -y \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic
