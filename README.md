# dotfiles

This repository holds my configuration files, managed with [Nix] and
[home-manager]. On a machine which has not yet been configured, install Nix:

[Nix]: https://nixos.org/manual/nix/
[home-manager]: https://nix-community.github.io/home-manager/

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Clone this repository to the directory expected by home-manager:

```sh
git clone https://github.com/srstevenson/dotfiles.git ~/.config/home-manager
```

Build and activate the home-manager configuration:

```sh
nix run home-manager/master switch
```
