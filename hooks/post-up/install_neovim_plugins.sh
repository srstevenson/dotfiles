#!/bin/sh

set -eu

curl --create-dirs -fLSso "$HOME"/.local/share/nvim/site/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c PlugClean! -c PlugUpdate -c qall
