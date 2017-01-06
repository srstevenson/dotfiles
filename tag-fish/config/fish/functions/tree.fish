# ~/.config/fish/functions/tree.fish

function tree -d 'Run tree with output pagination'
    command tree -C --noreport $argv | less
end
