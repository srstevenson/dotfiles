#!/bin/sh

set -u

plug_dst="$HOME"/.vim/autoload/plug.vim
plug_src=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p "$(dirname "$plug_dst")"

if command -v curl > /dev/null; then
    curl -sfLo "$plug_dst" $plug_src
else
    wget -qO "$plug_dst" $plug_src
fi

vim -c PlugClean! -c PlugUpdate -c quitall
