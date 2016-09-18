# ~/.config/fish/functions/path_prepend.fish

function path_prepend -d 'Prepend directory to path if it exists'
    if test -d $argv[1]
        if not contains $argv[1] $PATH
            set -gx PATH $argv[1] $PATH
        end
    end
end
