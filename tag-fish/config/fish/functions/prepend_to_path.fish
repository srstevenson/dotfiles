# ~/.config/fish/functions/prepend_to_path.fish

function prepend_to_path -d 'Prepend a directory to the path if it exists'
    test -d $argv[1]
    and not contains $argv[1] $PATH
    and set -gx PATH $argv[1] $PATH
end
