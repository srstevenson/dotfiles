# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d "Print the left prompt"
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    echo -n (prompt_pwd)
    __fish_git_prompt "(%s)"

    echo -n "> "
end
