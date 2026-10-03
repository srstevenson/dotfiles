function cds -d 'Change to a session beneath ~/Sessions'
    set -l dir (path basename ~/Sessions/*/ | zf -p); or return
    cd "$HOME/Sessions/$dir"
end
