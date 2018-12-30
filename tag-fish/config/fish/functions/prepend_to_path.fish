# ~/.config/fish/functions/prepend_to_path.fish

function prepend_to_path -a dir -d 'Prepend a directory to the path'
    if not contains $dir $PATH
        set -gpx PATH $dir
    end
end
