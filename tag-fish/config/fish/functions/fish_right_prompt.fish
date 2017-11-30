# ~/.config/fish/functions/fish_right_prompt.fish

function fish_right_prompt -d 'Write out the right prompt'
    if set -q CONDA_DEFAULT_ENV
        echo -n "($CONDA_DEFAULT_ENV)"
    end

    if test -e ~/.kube/config
        set_color brblack
        echo -ns " " (kubectl config current-context | cut -d . -f 1)
        set_color normal
    end
end
