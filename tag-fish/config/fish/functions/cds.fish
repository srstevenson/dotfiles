# ~/.config/fish/functions/cds.fish

function cds -a query -d 'Change directory to a source code repository'
    find ~/src -type d -name .git | \
    string replace -r "^$HOME/src/(.*)/\.git\$" '$1' | fzy -q "$query" | \
    read -l result
    and cd ~/src/$result
end
