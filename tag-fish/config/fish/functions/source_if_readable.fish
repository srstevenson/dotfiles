# ~/.config/fish/functions/source_if_readable.fish

function source_if_readable -a file -d 'Source a file if it is readable'
    test -r $file
    and source $file
end
