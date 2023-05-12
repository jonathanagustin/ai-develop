[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/jonathanagustin/ai-develop?quickstart=1)

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
1. Wait a couple minutes to build
1. Import or create an `.ipynb` file and begin working

## Features

- Miniconda with Python 3.10.8
- VSCode extensions for Python and Jupyter
- PEP8 autoformat on save
- Jupyter-notebook-to-PDF functionality
- PDF viewer

## Use Cases

### Export Jupyter Notebook to PDF

```console
jupyter nbconvert --to pdf <YOUR_JUPYTER_NOTEBOOK>.ipynb
```
