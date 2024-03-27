function fish_title
    if set -q argv[1]
        echo $argv[1]
    else
        prompt_pwd
    end

    if set -q ZELLIJ
        if set -q argv[1]
            zellij action rename-tab (string split " " $argv[1])[1]
        else
            zellij action rename-tab fish
        end
    end
end
