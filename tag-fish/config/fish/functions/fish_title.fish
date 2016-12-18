# ~/.config/fish/functions/fish_title.fish

function fish_title -d 'Set the terminal title'
    echo -ns (hostname -s) ': '
    if test $_ = fish
        prompt_pwd
    else
        echo -n $argv[1]
    end
end
