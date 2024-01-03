#!/bin/bash

echo "Instalando zsh y plugins..."

mkdir $HOME/.zsh

sudo apt install -y zsh

wget "https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb"
sudo dpkg -i vivid_0.8.0_amd64.deb

# Installing plugins for zsh

git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions

git clone https://github.com/z-shell/F-Sy-H $HOME/.zsh/fast-syntax-highlight

# Autocompletion plugin

wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh
mv completion.zsh $HOME/.zsh/

rm -f vivid_0.8.0_amd64.deb
