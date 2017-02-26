# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Print the command prompt'
    set -l __fish_prompt_char_colour
    if test $status -ne 0
        set __fish_prompt_char_colour red
    else
        set __fish_prompt_char_colour normal
    end

    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname -s)
    end

    echo -ns (set_color green) $__fish_prompt_hostname (set_color normal) ':' \
        (set_color blue) (prompt_pwd) (set_color normal)
    __fish_git_prompt '(%s)'
    echo -ns (set_color $__fish_prompt_char_colour) '$ ' (set_color normal)
end
