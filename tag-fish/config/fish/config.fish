# ~/.config/fish/config.fish

set fish_greeting

set -g fish_user_paths ~/bin ~/.local/bin $fish_user_paths

set -gx VISUAL nvim
set -gx GPG_TTY (tty)

abbr -a cea conda activate
abbr -a cec conda create -n
abbr -a ced conda deactivate
abbr -a cee conda env export
abbr -a cel conda env list
abbr -a cer conda env remove -n

abbr -a gad git add
abbr -a gap git add --patch
abbr -a gbd git branch -d
abbr -a gbr git branch
abbr -a gca git commit --amend
abbr -a gcb git checkout -b
abbr -a gci git commit --verbose
abbr -a gco git checkout
abbr -a gdc git diff --cached
abbr -a gdi git diff
abbr -a glg git log --graph
abbr -a glo git log --format=glo --graph
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a gri git rebase --interactive
abbr -a grs git rebase --skip
abbr -a gsd git stash drop
abbr -a gso git show
abbr -a gsp git stash pop
abbr -a gst git status
abbr -a gsu git stash push

if test -r ~/anaconda3/etc/fish/conf.d/conda.fish
    . ~/anaconda3/etc/fish/conf.d/conda.fish
    conda deactivate
    conda activate
end
