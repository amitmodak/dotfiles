#!/bin/bash

sudo apt-get update
sudo apt-get install -y \
    curl \
    git \
    lynx \
    most \
    pandoc \
    screen \
    tree \
    vim \
    wget \
    zip

curl -L https://github.com/amitmodak/dotfiles/raw/master/screen/.screenrc > ~/.screenrc
curl -L https://github.com/amitmodak/dotfiles/raw/master/vim/.vimrc > ~/.vimrc

curl -L https://raw.githubusercontent.com/git/git/v2.14.3/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

cp ~/.bashrc ~/.bashrc.$(date +%s)
curl -L https://github.com/amitmodak/dotfiles/raw/master/bash/.bashrc >> ~/.bashrc

source ~/.bashrc
