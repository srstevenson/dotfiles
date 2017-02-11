# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Print the command prompt'
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    echo -ns (set_color purple) $__fish_prompt_hostname (set_color normal) \
        ':' (set_color cyan) (prompt_pwd) (set_color normal)
    __fish_git_prompt '(%s)'
    echo -n '❯ '
end
