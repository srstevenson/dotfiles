# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Write out the terminal title'
    echo -ns $LOGNAME @
    prompt_hostname
    echo -n ": "

    if test (status current-command) = fish
        prompt_pwd
    else
        echo -n $command
    end
end
