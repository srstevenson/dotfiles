# ~/.config/fish/functions/cds.fish

function cds -d 'Change directory to a source code repository'
    git ls-repos | fzy | read -l result
    and cd ~/src/$result
end
