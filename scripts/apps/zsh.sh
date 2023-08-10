#!/bin/bash

echo "Install zsh and plugins..."

sudo apt install zsh
sudo apt install vivid

# Installing plugins for zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/z-shell/F-Sy-H ~/.zsh/fast-syntax-highlight

# Autocompletion plugin

wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh
mv completion.zsh ~/.zsh/
