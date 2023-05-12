#!/usr/bin/env bash
# Executes after the creating Codespace and cloning repo

get_info() {
    echo "-----------------------------"
    echo "Date: $(date)"
    echo "User: $(whoami)"
    echo "Home: $HOME"
    echo "Shell: $SHELL"
    echo "Working Directory: $(pwd)"
    echo "PATH: $PATH"
    echo "-----------------------------"
}

add_custom_welcome() {
    sudo cp .devcontainer/first-run-notice.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
}

install_apt_libs() {
    sudo apt-get update
    sudo apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-generic-recommended
}

install_conda() {
    # download and install miniconda
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /opt/miniconda.sh
    chmod +x /opt/miniconda.sh
    bash -c /opt/miniconda.sh -b -u -p /opt/.miniconda
    rm -rf /opt/miniconda.sh

    # configure conda
    /opt/.miniconda/bin/conda config --set auto_activate_base false
    /opt/.miniconda/bin/conda config --add channels conda-forge
    /opt/.miniconda/bin/conda init bash
}

main() {
    get_info &
    add_custom_welcome &
    install_apt_libs
    wait
}

# output to log
main > /tmp/postcreate.log 2>&1
