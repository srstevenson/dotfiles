# ~/.config/fish/functions/fish_right_prompt.fish

function fish_right_prompt -d 'Write out the right prompt'
    if test -e ~/.kube/config
        set_color brblack
        echo -ns " " (kubectl config current-context | cut -d . -f 1)
        set_color normal
    end
end
