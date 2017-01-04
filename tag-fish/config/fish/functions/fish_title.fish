# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Set the terminal title'
    echo -ns (hostname -s) ': '
    if test $_ = fish
        prompt_pwd
    else
        echo -n $command
    end
end
