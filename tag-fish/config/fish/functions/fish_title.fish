# ~/.config/fish/functions/fish_title.fish

function fish_title -d 'Set the terminal title'
    hostname -s
    echo -n ': '
    if test $_ = fish
        prompt_pwd
    else
        echo -n $argv[1]
    end
end
