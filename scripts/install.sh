#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function install {
    which "$1" &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing $1"
        sudo apt install -y "$1"
    else
        echo "Already installed: $1"
    fi
}

# Basicos por consola
install zsh
install git
install curl
install tree
install openvpn
install vim
install lsd
install starship
install coreutils
install vivid