# ~/.config/fish/functions/cds.fish

function cds -a query -d 'Change directory to a source code repository'
    find ~/src -type d -name .git -execdir pwd \; | \
    string replace "$HOME/src/" "" | fzy -q "$query" | read -l result
    and cd ~/src/$result
end
