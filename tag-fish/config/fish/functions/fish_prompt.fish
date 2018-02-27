# ~/.config/fish/functions/fish_prompt.fish

function fish_prompt -d 'Write out the prompt'
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showcolorhints 1

    set_color cyan
    echo -n (prompt_pwd)
    set_color normal
    __fish_git_prompt '(%s)'

    if jobs >/dev/null
        set_color purple
        echo -n '!'
        set_color normal
    end

    echo -n '$ '
end
