#!/bin/bash

cd ..

workingDir=$(pwd) 

if [ -f "$HOME/.bashrc" ]; then
    rm -f "$HOME/.bashrc"
fi

ln -s ${dotfilesDir}/.bashrc $HOME/.bashrc 
ln -s ${dotfilesDir}/.zshrc $HOME/.zshrc  
ln -s ${dotfilesDir}/.gitconfig $HOME/.gitconfig  
ln -s ${dotfilesDir}/starship.toml $HOME/.config/starship.toml