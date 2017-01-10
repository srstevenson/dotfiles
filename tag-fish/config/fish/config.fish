# ~/.config/fish/config.fish

set -e fish_greeting

prepend_to_path ~/.local/texlive/bin/x86_64-darwin
prepend_to_path ~/.local/homebrew/bin
prepend_to_path ~/.local/miniconda/bin
prepend_to_path ~/.local/bin

set -gx VISUAL nvim
set -gx LESS FimRX
set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_GITHUB_API 1

abbr -a la ls -Ahl
abbr -a ll ls -hl
abbr -a ls ls -h

abbr -a dim docker images
abbr -a dpa docker ps -a
abbr -a dps docker ps
abbr -a dri docker rmi
abbr -a drm docker rm
abbr -a dst docker stop

abbr -a gad git add
abbr -a gap git add -p
abbr -a gbd git branch -d
abbr -a gbr git branch
abbr -a gca git commit --amend -v
abbr -a gcb git checkout -b
abbr -a gcf git clean -dfx
abbr -a gci git commit -v
abbr -a gcn git clean -dnx
abbr -a gco git checkout
abbr -a gdc git diff --cached
abbr -a gdi git diff
abbr -a gfp git fetch
abbr -a glg git log --graph
abbr -a glo git log --format=glo --graph
abbr -a gpo git push origin
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a gri git rebase -i
abbr -a grs git rebase --skip
abbr -a gst git status -bs

abbr -a kcf kubectl create -f
abbr -a kgc kubectl config current-context
abbr -a ksc kubectl config set current-context

abbr -a cdd cd ~/.dotfiles
abbr -a scala amm

source_if_readable ~/.local/miniconda/etc/fish/conf.d/conda.fish

if set -q SSH_TTY; and not set -q TMUX; and type -q tmux
    tmux new -As default
end
