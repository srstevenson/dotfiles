#!/bin/sh

set -eu

curl --create-dirs -fLo "$HOME"/.vim/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugClean! -c PlugUpdate -c qa
