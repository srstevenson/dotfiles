# ~/.config/fish/functions/cds.fish

function cds -d 'Change directory to a source code repository'
    find ~/src -type d -name .git -execdir pwd \; | sed "s,$HOME/src/,," | \
    fzy | read -l result
    and cd ~/src/$result
end
