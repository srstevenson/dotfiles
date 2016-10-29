# ~/.config/fish/functions/cds.fish

function cds -d 'Change directory to a source code repository'
    set -l file (mktemp)
    git ls-repos | fzy > $file
    cd ~/src/(cat $file)
    rm $file
end
