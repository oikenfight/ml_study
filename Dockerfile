FROM jupyter/tensorflow-notebook

MAINTAINER Yuta Oikawa <oikenfight@gmail.com>

USER root

WORKDIR /home/jovyan/work

RUN apt-get update \
    && apt-get install -y zsh \
    curl \
    wget \
    git \
    vim \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && apt-get install -y mecab \
    libmecab-dev \
    mecab-ipadic \
    mecab-ipadic-utf8 \
    libc6-dev \
    build-essential \
    && pip install mecab-python3 \
    janome \
    gensim \
    opencv-python