function cds
    set -q argv[1]; and set query $argv[1]; or set query ""
    cd ~/src/(git-repos | fzy -q $query)
end
