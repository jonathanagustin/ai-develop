#!/usr/bin/env bash

# Executes after the creating Codespace and cloning source code
install_env() {
    conda install -y \
        jupyter \
        ipykernel \
        notebook \
        pandoc \
        nbconvert \
        autopep8 \
        pandas \
        matplotlib \
        seaborn \
        numpy \
        scipy \
        # scikit-learn \
        # fastai \
        # gensim \
        # huggingface_hub \
        # keras \
        # nltk \
        # opencv \
        # pytorch \
        # spacy \
        # tensorflow \
        # torchvision \
        # transformers \
        -c conda-forge
}

# main() {
#     install_base
# }

# main
