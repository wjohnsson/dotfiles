#!/bin/bash

# backup.sh
# A simple script that copies my dotfiles into folders in this repo.

cp ~/.bashrc .
cp ~/.profile .
cp ~/.Xresources .
cp ~/.config/polybar/config ./polybar/
cp ~/.config/termite/config ./termite/

# qutebrowser
cp -r ~/.config/qutebrowser .

# Editors
cp ~/.config/nvim/init.vim .
cp ~/.spacemacs .spacemacs
