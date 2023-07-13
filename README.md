# dotfiles

This repository holds my configuration files, managed with
[Nix](https://nixos.org/manual/nix/) and
[home-manager](https://nix-community.github.io/home-manager/). On a machine
which has not yet been configured, install Nix:

    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

Clone this repository to the directory expected by home-manager:

    git clone https://github.com/srstevenson/dotfiles.git ~/.config/home-manager

Build and activate the home-manager configuration:

    nix run home-manager/master switch
