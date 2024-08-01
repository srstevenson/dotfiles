function cdd
    if set -q argv[1]
        set query $argv[1]
    else
        set query ""
    end
    cd (find ~/Dropbox -type d -mindepth 1 | fzy -q $query)
end
