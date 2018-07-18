# ~/.config/fish/config.fish

if not set -q TMPDIR
    set -gx TMPDIR /tmp/$LOGNAME
    mkdir -pm 700 $TMPDIR
end

if not status is-interactive
    exit
end

fish_hybrid_key_bindings

set fish_greeting

prepend_to_path ~/.cargo/bin
prepend_to_path ~/.local/bin
prepend_to_path ~/bin

set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx LESS FimRX
set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx GOPATH $HOME
set -gx GOBIN $HOME/bin

abbr -a la ls -Ahl
abbr -a ll ls -hl
abbr -a ls ls -h

abbr -a cdd cd ~/dotfiles

abbr -a gad git add
abbr -a gap git add -p
abbr -a gbr git branch
abbr -a gca git commit --amend
abbr -a gci git commit
abbr -a gco git checkout
abbr -a gdc git diff --cached
abbr -a gdi git diff
abbr -a glg git log --graph
abbr -a glo git log --format=glo --graph
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a gri git rebase -i
abbr -a grs git rebase --skip
abbr -a gsp git stash pop
abbr -a gss git stash save
abbr -a gst git status

if type -q jump
    source (jump shell fish | psub)
end

if set -q SSH_TTY
    and not set -q TMUX
    and status is-login
    and type -q tmux
    tmux attach-session
    or tmux new-session
end
