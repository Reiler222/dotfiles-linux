#!/bin/bash

# https://www.nerdfonts.com/

# JetBrainsMono Nerd Font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C ./JetBrainsMono
mv -f JetBrainsMono /usr/local/share/fonts/
rm -f JetBrainsMono.tar.xz

# Hack Nerd Font
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz
mkdir Hack
tar -xf Hack.tar.xz -C ./Hack
mv -f Hack /usr/local/share/fonts/
rm -f Hack.tar.xz

