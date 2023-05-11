#!/usr/bin/env bash
# Executes every time Codespace is started (through browser or VSCode client)

activate_venv() {
    source /workspaces/ai-develop/.venv/bin/activate
}

main() {
    activate_venv &
}

main
