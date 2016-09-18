# ~/.config/fish/functions/try_source.fish

function try_source -d 'Source a file if readable'
    if test -r $argv[1]
        source $argv[1]
    end
end
