# Dotfiles

Install [rcm](https://thoughtbot.github.io/rcm), and then checkout the
repository and link the files into place with:

```sh
git clone git@github.com:srstevenson/dotfiles.git "$HOME"/.dotfiles
env RCRC="$HOME"/.dotfiles/tag-rcm/rcrc rcup -v
```
