# dotfiles

This repository contains my configuration files, managed using the `dotfiles`
script contained within. After cloning this repository and entering the
directory, symlink the files into place with:

```bash
./tag-bin/local/bin/dotfiles link
```

This initial run will symlink `dotfiles` to `~/.local/bin/dotfiles`, so it can
be run without using the full path. The following subcommands are available:

- `import`: import dotfiles into the source directory.
- `unlink`: unlink dotfiles and move them back to home directory.
- `link`: symlink dotfiles to home directory.
- `status`: list all dotfiles and their status.

To view usage instructions and the available arguments for each subcommand, run:

```bash
dotfiles <subcommand> --help
```
