#!/bin/bash

# https://www.nerdfonts.com/

echo "Instalando fuentes..."

# JetBrainsMono Nerd Font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C ./JetBrainsMono
mv -f JetBrainsMono ~/.local/share/fonts/
rm -f JetBrainsMono.tar.xz

# Hack Nerd Font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz
mkdir Hack
tar -xf Hack.tar.xz -C ./Hack
mv -f Hack ~/.local/share/fonts/
rm -f Hack.tar.xz

