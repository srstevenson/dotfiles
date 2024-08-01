# dotfiles

This repository contains my configuration files, managed using the `dfm` script
contained within. After cloning this repository and entering the directory,
symlink the files into place with:

```bash
./tag-bin/local/bin/dfm symlink
```

This initial run will symlink `dfm` to `~/.local/bin/dfm`, so it can be run
without using the full path.

To import a file into the repository and replace the original with a symlink,
run:

```bash
dfm import -t <tag> <path>
```

## pre-commit hooks

[pre-commit] is used to run formatters and linters before committing changes.
Install pre-commit and dependencies (with `pacman -Syu pre-commit shfmt` on Arch
Linux and `brew install pre-commit shfmt` on macOS) and install the pre-commit
hooks into your local repository with `pre-commit install`.

[pre-commit]: https://pre-commit.com/
