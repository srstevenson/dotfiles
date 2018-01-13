# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Write out the terminal title'
    prompt_hostname
    echo -n ': '

    if test $_ = fish
        prompt_pwd
    else
        echo -n $command
    end
end
