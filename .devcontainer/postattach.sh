#!/usr/bin/env bash
# Executes when connecting to Codespace (through browser or VSCode client)

install_extensions() {
    # fix: install here to ensure installed after ms-python.python
    code --force --install-extension ms-python.vscode-pylance
}

install_conda() {
    # download and install miniconda
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
    chmod +x ~/miniconda.sh
    ~/miniconda.sh -b -u -p ~/.miniconda
    rm -rf ~/miniconda.sh

    # add conda to PATH if not already in path
    if ! grep -qxF "export PATH=\$PATH:${HOME}/.miniconda/bin" ~/.bashrc; then
        echo "export PATH=\$PATH:${HOME}/.miniconda/bin" >> ~/.bashrc
    fi
    source ~/.bashrc

    # add conda to PATH for this session
    export PATH="\$PATH:${HOME}/.miniconda/bin"

    # configure conda
    conda config --set auto_activate_base false
    conda config --add channels conda-forge
    conda init bash
}

install_env() {
    conda create -n default -y
    conda install -y \
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
    install_conda
    install_env
}

# output to log
main > .devcontainer/postattach.log 2>&1
