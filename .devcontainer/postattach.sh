#!/usr/bin/env bash
# Executes when connecting to Codespace (through browser or VSCode client)

install_pip_packages() {
    /workspaces/ai-develop/.venv/bin/pip install -r /workspaces/ai-develop/requirements.txt
}

install_conda_packages() {
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
    install_pip_packages &
    install_conda_packages &
}

# output to log
main > /tmp/postattach.log 2>&1
