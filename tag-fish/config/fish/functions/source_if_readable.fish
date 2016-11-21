# ~/.config/fish/functions/source_if_readable.fish

function source_if_readable -d 'Source a file if it is readable'
    test -r $argv[1]
    and source $argv[1]
end
