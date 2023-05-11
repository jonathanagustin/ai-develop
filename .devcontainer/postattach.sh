#!/usr/bin/env bash

# Executes when connecting to Codespace (through browser or VSCode client)
install_code_extensions() {
    code --force --install-extension ms-python.vscode-pylance
    code --force --install-extension ms-toolsai.jupyter
}

install_code_extensions > /dev/null 2>&1 &