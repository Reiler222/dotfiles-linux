#!/bin/bash

cd ..

workingDir=$(pwd) 

if [ -f "$HOME/.bashrc" ]; then
    rm -f "$HOME/.bashrc"
elif [ -d "$HOME/.config" ]; then
    mkdir "$HOME/.config"
fi

ln -s $workingDir/.bashrc $HOME/.bashrc 
ln -s $workingDir/.zshrc $HOME/.zshrc  
ln -s $workingDir/.gitconfig $HOME/.gitconfig  
ln -s $workingDir/starship.toml $HOME/.config/starship.toml