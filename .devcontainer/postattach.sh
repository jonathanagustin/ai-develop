#!/usr/bin/env bash
# Executes when connecting to Codespace (through browser or VSCode client)

install_extensions() {
    # install extension here or else must reload
    code --force --install-extension ms-python.vscode-pylance
}

install_conda_packages() {
    # install base packages
    /home/vscode/.miniconda/bin/conda install -y \
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
}

main() {
    install_extensions &
    install_conda_packages &
}

# output to log
main > /tmp/postattach.log 2>&1
