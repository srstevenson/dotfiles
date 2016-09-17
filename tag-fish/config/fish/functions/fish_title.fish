# ~/.config/fish/functions/fish_title.fish

function fish_title -d 'Set the terminal title'
    hostname -s
    echo ': '
    if test $_ = fish
        prompt_pwd
    else
        echo $argv[1]
    end
end
