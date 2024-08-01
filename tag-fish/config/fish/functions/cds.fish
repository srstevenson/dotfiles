function cds
    if set -q argv[1]
        set query $argv[1]
    else
        set query ""
    end
    cd ~/src/(git-repos | fzy -q $query)
end
