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

## pre-commit hooks

[pre-commit] is used to run formatters and linters before committing changes.
Install pre-commit and dependencies (with `pacman -Syu pre-commit shfmt yamlfmt`
on Arch Linux and `brew install pre-commit shfmt yamlfmt` on macOS) and install
the pre-commit hooks into your local repository with `pre-commit install`.

[pre-commit]: https://pre-commit.com/
