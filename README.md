# AI-Develop

AI-Develop is a pre-configured AI dev environment.

The goal of this project is to minimize dev setup.

- This devcontainer allows for a fully-featured GitHub VSCode IDE
- Works anywhere where there is access to a browser
- Automatically format documents and save to GitHub

## Install

1. Go to <https://github.com/jonathanagustin/ai-develop/generate>
1. Click on the `Private` radio button
1. Enter a `Repository name`
1. Click `Code`
1. Click `Create Codespace on main`
1. Wait 2 minutes to build
1. Import or create an `.ipynb` file and begin working

## Features

- Miniconda with Python 3.10.8
- AI Python libraries like TensorFlow, PyTorch, pandas, matplotlib
- VSCode extensions for Python and Jupyter
- PEP8 autoformat on save
- Jupyter-notebook-to-PDF functionality
- PDF viewer

## Use Cases

### Export Jupyter Notebook to PDF

1. Open the Jupyter notebook in VS Code
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS) to open the command palette
1. Type `Jupyter: Export to PDF` and press `Enter`
1. Type a filename and press `Enter`
