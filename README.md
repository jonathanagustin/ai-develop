# AI-Develop

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/jonathanagustin/ai-develop?quickstart=1)

AI-Develop is a GitHub Codespace preloaded with basic AI technologies.

- Code with your browser on the cloud
- Automatically format documents and save to GitHub
- Auto-generates PDFs to branch: `output-[BRANCH]`

## Features

- Miniconda with Python 3.10.8
- VSCode Extensions: Python and Jupyter
- autoformat on save
- PDF viewer
- Jupyter-notebook-to-PDF conversion

## Install

1. Go to <https://github.com/jonathanagustin/ai-develop/generate>
1. Click on the `Private` radio button
1. Enter a `Repository name`
1. Click `Code`
1. Click `Create Codespace on main`
1. Wait a couple minutes to build
1. Import or create an `.ipynb` file and begin working

## Use Cases

### Export Jupyter Notebook to PDF

```bash
jupyter nbconvert --to pdf <YOUR_JUPYTER_NOTEBOOK>.ipynb
```
