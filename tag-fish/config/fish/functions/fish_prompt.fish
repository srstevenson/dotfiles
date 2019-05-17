# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    set_color blue
    echo -n (prompt_pwd)
    set_color normal
    __fish_git_prompt "(%s)"
    echo -n "> "
end
