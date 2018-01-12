# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Write out the terminal title'
    echo -ns (prompt_hostname) ': '

    if test $_ = fish
        prompt_pwd
    else
        echo -n $command
    end
end
