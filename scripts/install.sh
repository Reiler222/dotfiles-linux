#!/bin/bash

./symlinks.sh

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
install git
install curl
install gpg
install wget
install tree
install python3-venv
install python3-pip
install openvpn
install vim
install lsd
install starship
install coreutils
install fluxgui

# Not that basic stuff

install telegram-desktop

# Snap stuff

snap install postman
snap install obsidian --classic --dangerous
snap install spotify
snap install bitwarden

for file in apps/*.sh
do
bash "$file" -H
done

sudo apt upgrade -y
sudo apt autoremove -y