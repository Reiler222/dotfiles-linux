#!/bin/bash

echo "Instalando vsc..."

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt update
sudo apt install -y code

function install {
  name="${1}"
  code --install-extension "${name}" --force
}

install redhat.ansible
install rogalmic.bash-debug
install jeff-hykin.better-dockerfile-syntax
install jeff-hykin.better-shellscript-syntax
install ms-azuretools.vscode-docker
install usernamehw.errorlens
install tamasfe.even-better-toml
install mhutchie.git-graph
install eamodio.gitlens
install hashicorp.terraform
install yzhang.markdown-all-in-one
install ms-vscode.makefile-tools
install zainchen.json
install christian-kohler.path-intellisense
install ms-python.python
install donjayamanne.python-extension-pack
install chrmarti.regex
install redhat.vscode-yaml
install alefragnani.project-manager

FILES="../../vscsettings/*"

# Check if Code dir exists 
if [ -d "$HOME/.config/Code" ]; then
    echo "Code already exist"
else
    mkdir "$HOME/.config/Code"
    echo "Code dir created"
fi
 
for file in $FILES
do 
  ln -s "$file" "$HOME/.config/Code"
done