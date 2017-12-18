# ~/.config/fish/functions/fish_title.fish

function fish_title -a command -d 'Set the terminal title'
    if not set -q __fish_title_hostname
        set -g __fish_title_hostname (hostname -s)
    end

    echo -ns $__fish_title_hostname ': '

    if test $_ = fish
        prompt_pwd
    else
        echo -n $command
    end
end
