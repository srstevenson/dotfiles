# ~/.config/fish/functions/rg.fish

function rg -d 'Run ripgrep with output pagination'
    command rg -pS $argv | less
end
