# ~/.config/fish/config.fish

status is-interactive; or exit

set fish_greeting

set -g fish_user_paths ~/bin ~/.local/bin

set -gx GPG_TTY (tty)
set -gx PIP_REQUIRE_VIRTUALENV true
set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
set -gx VISUAL nvim

abbr -ag la ls -Ahl
abbr -ag ll ls -hl
abbr -ag ls ls -h
abbr -ag lt ls -Ahlrt

abbr -ag gad git add
abbr -ag gap git add -p
abbr -ag gbD git branch -D
abbr -ag gbd git branch -d
abbr -ag gbm git branch -m
abbr -ag gbr git branch
abbr -ag gca git commit --amend -v
abbr -ag gcf git clean -dfx
abbr -ag gcb git checkout -b
abbr -ag gci git commit -v
abbr -ag gcn git clean -dnx
abbr -ag gco git checkout
abbr -ag gdi git diff
abbr -ag gds git diff --staged
abbr -ag glg git log --graph
abbr -ag glo git log --format=dense --graph
abbr -ag gra git rebase --abort
abbr -ag grc git rebase --continue
abbr -ag gri git rebase --interactive
abbr -ag grs git rebase --skip
abbr -ag gsd git stash drop
abbr -ag gso git show
abbr -ag gsp git stash pop
abbr -ag gst git status
abbr -ag gsu git stash push

type -q direnv; and direnv hook fish | source
type -q jump; and jump shell fish | source
type -q starship; and starship init fish | source

if test -e /var/run/reboot-required
    cat /var/run/reboot-required
end

if set -q SSH_TTY; and not set -q TMUX
    tmux attach-session; or tmux new-session
end
