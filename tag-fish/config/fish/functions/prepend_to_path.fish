# ~/.config/fish/functions/prepend_to_path.fish

function prepend_to_path -a dir -d 'Prepend a directory to the path if it exists'
    if not contains $dir $PATH
        if test -d $dir
            set -gx PATH $dir $PATH
        end
    end
end
