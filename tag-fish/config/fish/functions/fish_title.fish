# ~/.config/fish/functions/fish_title.fish

function fish_title -a command
    echo -ns (prompt_hostname) ": "

    if test (status current-command) = fish
        prompt_pwd
    else
        echo -n $command
    end
end
