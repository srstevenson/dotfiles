# ~/.config/fish/functions/path_prepend.fish

function path_prepend -d 'If a directory exists prepend it to $PATH'
    if test -d $argv[1]
        set -x PATH $argv[1] $PATH
    end
end
