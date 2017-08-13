# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Print the left prompt'
    if set -q SSH_TTY; and set -q TMUX
        set -gx SSH_AUTH_SOCK (tmux showenv SSH_AUTH_SOCK | cut -d = -f 2)
    end

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    echo -ns (set_color green) $__fish_prompt_hostname \
        (set_color normal) ':' (set_color blue) (prompt_pwd) \
        (set_color normal) (__fish_git_prompt '(%s)') '$ '
end
