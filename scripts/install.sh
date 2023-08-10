#!/bin/bash


#Adding PPAs
sudo add-apt-repository ppa:nathan-renniewaldock/flux

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

# Basic stuff
install zsh
install git
install curl
install gpg
install wget
install tree
install openvpn
install vim
install lsd
install starship
install coreutils
install vivid
install fluxgui

# Snap stuff

snap install postman
snap install obsidian --classic --dangerous
snap install spotify

sudo apt upgrade -y
sudo apt autoremove -y