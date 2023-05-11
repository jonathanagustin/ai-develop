#!/usr/bin/env bash
# Executes after the creating Codespace and cloning repo

upgrade_pip() {
    /usr/local/bin/python -m pip install --upgrade pip
}

install_venv() {
    /usr/local/bin/python -m venv /workspaces/ai-develop/.venv
    /workspaces/ai-develop/.venv/bin/pip install ipykernel
    /workspaces/ai-develop/.venv/bin/python -m ipykernel install --user
}

install_conda() {
    # download and install miniconda
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
    chmod +x ~/miniconda.sh
    ~/miniconda.sh -b -u -p ~/.miniconda
    rm -rf ~/miniconda.sh

    # add conda to PATH for this session
    export PATH="\$PATH:$HOME/.miniconda/bin"

    # configure conda
    conda config --set auto_activate_base false
    conda config --add channels conda-forge

    # fix: conda init must be before source venv
    conda init bash

    # append lines to .bashrc
    lines=(
        "export PATH=\$PATH:$HOME/.miniconda/bin"
        "source /workspaces/ai-develop/.venv/bin/activate"
    )

    for line in "${lines[@]}"; do
        if ! /bin/grep -qxF "$line" /home/vscode/.bashrc; then
            echo "$line" >> /home/vscode/.bashrc
        fi
    done
}

main() {
    upgrade_pip
    install_venv
    install_conda
}

# output to log
main > /tmp/postcreate.log 2>&1
