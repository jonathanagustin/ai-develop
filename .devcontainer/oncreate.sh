#!/usr/bin/env bash
# Executes after the creating Codespace and cloning repo

get_info() {
    echo -e "-----------------------------"
    echo -e "Date: $(date)"
    echo -e "User: $(whoami)"
    echo -e "Home: $HOME"
    echo -e "Shell: $SHELL"
    echo -e "Working Directory: $(pwd)"
    echo -e "PATH: $PATH"
    # test whether code is installed at this point
    echo -e "code: $(which code)"
    # test what directories are available at $HOME
    echo -e "Directories: $(cd ~ && ls -la)"
    echo -e "-----------------------------"
}

add_custom_welcome() {
    sudo cp .devcontainer/first-run-notice.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
}

install_apt_libs() {
    sudo apt-get update
    sudo apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic
}

install_conda() {

    # download and install miniconda
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o "${HOME}/miniconda.sh"
    chmod +x "${HOME}/miniconda.sh"

    # -b = batch mode (no prompts)
    # -u = unattended mode
    # -p = prefix for install location
    bash -c "${HOME}/miniconda.sh" -b -u -p "${HOME}/.miniconda"

    # clean up
    rm -rf "${HOME}/miniconda.sh"

    # add conda to PATH
    if ! /bin/grep -qxF "export PATH=\$PATH:${HOME}/.miniconda/bin" /home/vscode/.bashrc; then
        echo "export PATH=\$PATH:${HOME}/.miniconda/bin" >> /home/vscode/.bashrc
    fi

    # configure conda
    "${HOME}/.miniconda/bin/conda" config --add channels conda-forge

    # initialize conda
    "${HOME}/.miniconda/bin/conda" init bash

    # create default environment
    "${HOME}/.miniconda/bin/conda" create -y -n default python=3.8

    # install packages into default environment
    "${HOME}/.miniconda/bin/conda" install -n default -y \
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
    get_info
    add_custom_welcome &
    install_apt_libs &
    install_conda
    wait
}

main
