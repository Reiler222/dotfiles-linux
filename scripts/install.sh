#!/bin/bash

./symlinks.sh

sudo apt update && sudo apt upgrade -y

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
install coreutils

# Not that basic stuff

install telegram-desktop

curl -sS https://starship.rs/install.sh | sh

# Install lsd
curl -s https://api.github.com/repos/lsd-rs/lsd/releases/latest | grep "browser_download_url.*amd64.deb" | grep "lsd_" | cut -d '"' -f 4 | wget -qi -
ls | grep "amd64.deb" | sudo dkpg -i -

# Snap stuff

sudo snap install postman
sudo snap install obsidian --classic --dangerous
sudo snap install spotify
sudo snap install bitwarden

# Execute every .sh in apps dir
for file in apps/*.sh
do
bash "$file" -H
done

sudo add-apt-repository -r -y ppa:nathan-renniewaldock/flux

sudo apt upgrade -y
sudo apt autoremove -y