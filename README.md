# Dotfiles

Configuration files for Unix-like systems, managed with [rcm][rcm]. To clone the
repository and symlink the files into your home directory, run:

```sh
git clone https://gitlab.com/srstevenson/dotfiles.git "$HOME/.dotfiles"
env RCRC="$HOME/.dotfiles/tag-rcm/rcrc" rcup
```

[rcm]: https://thoughtbot.github.io/rcm/
