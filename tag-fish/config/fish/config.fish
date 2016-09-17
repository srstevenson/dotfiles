# ~/.config/fish/config.fish

set -e fish_greeting

path_prepend /opt/texlive/bin/x86_64-darwin
path_prepend /opt/homebrew/bin
path_prepend /opt/miniconda/bin
path_prepend ~/.local/bin

set -gx EDITOR vim
set -gx VISUAL vim
set -gx LESS FimRX
set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_GITHUB_API 1

abbr la ls -Ahl
abbr ll ls -hl
abbr ls ls -h

abbr gad git add
abbr gap git add -p
abbr gbd git branch -d
abbr gbm git branch -m
abbr gbr git branch
abbr gca git commit --amend -v
abbr gcb git checkout -b
abbr gci git commit -v
abbr gco git checkout
abbr gdc git diff --cached
abbr gdi git diff
abbr gfp git fetch
abbr glg git log --graph
abbr glo git log --format=glo --graph
abbr gls git ls-files
abbr gra git rebase --abort
abbr grc git rebase --continue
abbr gri git rebase -i
abbr grs git rebase --skip
abbr gst git status -bs

abbr ag ag --pager less
abbr cdd cd ~/.dotfiles
abbr tree tree -C

try_source /opt/miniconda/etc/fish/conf.d/conda.fish
try_source ~/.config/fish/local.fish
