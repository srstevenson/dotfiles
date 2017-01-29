# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Print the command prompt'
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    echo -ns (set_color cyan) $__fish_prompt_hostname (set_color normal) ':' (prompt_pwd)
    __fish_git_prompt '(%s)'
    echo -n '❯ '
end
