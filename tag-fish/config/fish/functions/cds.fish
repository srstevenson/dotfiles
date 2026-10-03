function cds -d 'Change to a session beneath ~/Sessions'
    set -l dir (path basename ~/Sessions/*/ | fzy); or return
    cd "$HOME/Sessions/$dir"
end
