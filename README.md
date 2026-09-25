# dotfiles

This repository contains configuration files, managed using the included
`dotfiles` script. Git and Python 3.9 or later are required.

Clone the repository, enter the directory, and symlink the files into place
with:

```bash
git clone https://github.com/srstevenson/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./tag-bin/local/bin/dotfiles link
```

To preview the changes before applying them, run:

```bash
./tag-bin/local/bin/dotfiles link --dry-run
```

The `link` subcommand processes every tag. It creates symlinks for missing files
and replaces identical copies with symlinks. Files with differing contents are
reported as divergent and left unchanged.

This also symlinks the `dotfiles` script to `~/.local/bin/dotfiles`, unless a
conflicting file already exists. To run it without a full path, ensure
`~/.local/bin` is on your `PATH`. The included fish and zsh configurations add
this directory; restart your shell after linking to load the configuration.

The following subcommands are available:

- `dotfiles import`: move dotfiles into the repository and replace the originals
  with symlinks.
- `dotfiles link`: symlink dotfiles from every tag to the home directory.
- `dotfiles status`: list all managed dotfiles and their status.

To view usage instructions and the available arguments for each subcommand, run:

```bash
dotfiles <subcommand> --help
```

Tags are stored as directories named `tag-<name>`. The `import` subcommand
requires `--tag`, which accepts either the bare tag name (e.g., `zsh`) or the
full directory name (e.g., `tag-zsh`). Both `import` and `link` support
`--dry-run` to preview changes without modifying files.
