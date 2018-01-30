#!/bin/bash
# vim:filetype=sh:expandtab:tabstop=4:shiftwidth=4:

sudo apt-get update
sudo apt-get install -y \
    curl \
    docker.io \
    git \
    lynx \
    most \
    pandoc \
    screen \
    tree \
    vim \
    wget \
    zip

sudo usermod -aG docker ${USER}

curl -L https://github.com/amitmodak/dotfiles/raw/master/screen/.screenrc > ~/.screenrc
curl -L https://github.com/amitmodak/dotfiles/raw/master/vim/.vimrc > ~/.vimrc

curl -L https://raw.githubusercontent.com/git/git/v2.14.3/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

cp ~/.bashrc ~/.bashrc.$(date +%s)
curl -L https://github.com/amitmodak/dotfiles/raw/master/bash/.bashrc >> ~/.bashrc

source ~/.bashrc

echo "Please source ~/.bashrc to activate customizations"
