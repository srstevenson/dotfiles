function mks -d 'Create a session and change to it'
    set -l dir (make-session $argv); or return
    cd "$dir"
end
