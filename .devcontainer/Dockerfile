FROM mcr.microsoft.com/devcontainers/python:0-3.8

# Install system dependencies, Miniconda, and Python packages
RUN apt-get update && \
    apt-get install -y texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic && \
    curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh && \
    chmod +x miniconda.sh && \
    ./miniconda.sh -b -u -p /home/vscode/miniconda && \
    rm -rf miniconda.sh && \
    echo "export PATH=\$PATH:/home/vscode/miniconda/bin" >> /home/vscode/.bashrc && \
    chown -R vscode:vscode /home/vscode/miniconda && \
    sudo -u vscode /home/vscode/miniconda/bin/conda config --add channels conda-forge && \
    sudo -u vscode /home/vscode/miniconda/bin/conda init bash && \
    sudo -u vscode /home/vscode/miniconda/bin/conda create -y -n default python=3.8 && \
    sudo -u vscode /home/vscode/miniconda/bin/conda install -n default -y \
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
