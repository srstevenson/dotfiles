function odd
    set -q argv[1]; and set query $argv[1]; or set query ""
    open (find ~/Dropbox -type d -mindepth 1 | fzy -q $query)
end
