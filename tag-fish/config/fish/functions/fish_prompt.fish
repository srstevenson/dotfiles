# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Write out the prompt'
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    set_color blue
    echo -n (prompt_pwd)
    set_color normal
    __fish_git_prompt '(%s)'

    if jobs > /dev/null
        echo -ns (set_color purple) '!' (set_color normal)
    end

    echo -n '$ '
end
