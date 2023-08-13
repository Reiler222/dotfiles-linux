#!/bin/bash

cd ..

if [ -d "$HOME/.bashrc" ]; then
    rm -f "$HOME/.bashrc"
fi

ln -s ".bashrc" "$HOME/.bashrc"  
ln -s ".zshrc" "$HOME/.zshrc"  
ln -s ".gitconfig" "$HOME/.gitconfig"  
ln -s "starship.toml" "$HOME/.config/starship.toml"