#!/usr/bin/env bash
# Executes after the creating Codespace and cloning source code

update_pip() {
    python -m pip install --upgrade pip
}

install_venv() {
    python -m venv .venv
    .venv/bin/pip install -r requirements.txt
}

main() {
    update_pip &
    install_venv &
}

# output to log
main > .devcontainer/postcreate.log 2>&1
