function ofd
    if set -q argv[1]
        set query $argv[1]
    else
        set query ""
    end
    open (find ~/Dropbox -mindepth 1 | fzy -q $query)
end
