#!/usr/bin/env bash
# Executes after the creating Codespace and cloning repo

upgrade_pip() {
    python -m pip install --upgrade pip
}

install_venv() {
    # create virtual environment
    python -m venv .venv

    # install packages
    /workspaces/ai-develop/.venv/bin/pip install -r /workspaces/ai-develop/requirements.txt
}

install_conda() {
    # download and install miniconda
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
    chmod +x ~/miniconda.sh
    ~/miniconda.sh -b -u -p ~/.miniconda
    rm -rf ~/miniconda.sh

    # add conda to PATH if not already in path
    LINE="export PATH=\$PATH:$HOME/.miniconda/bin"
    if ! /bin/grep -qxF $LINE /home/vscode/.bashrc; then
        echo "$LINE" >> /home/vscode/.bashrc
    fi

    # add conda to PATH for this session
    export PATH="\$PATH:$HOME/.miniconda/bin"

    # configure conda
    conda config --set auto_activate_base false
    conda config --add channels conda-forge

    # fix: activate venv on shell start must be after conda init
    conda init bash
    LINE="source /workspaces/ai-develop/.venv/bin/activate"
    if ! /bin/grep -qxF "$LINE" /home/vscode/.bashrc; then
        echo "$LINE" >> /home/vscode/.bashrc
    fi
}

main() {
    upgrade_pip
    install_venv
    install_conda
}

# output to log
main > /tmp/postcreate.log 2>&1
