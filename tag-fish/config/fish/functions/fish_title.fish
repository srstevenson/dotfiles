# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Set the terminal title'
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    echo -ns $__fish_prompt_hostname ': '
    if test $_ = fish
        prompt_pwd
    else
        echo -n $command
    end
end
