# ~/.config/fish/functions/prepend_to_path.fish

function prepend_to_path -a dir -d 'Prepend a directory to the path if it exists'
    test -d $dir
    and not contains $dir $PATH
    and set -gx PATH $dir $PATH
end
