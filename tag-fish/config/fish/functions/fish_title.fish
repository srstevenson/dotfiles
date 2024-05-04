function fish_title
    if set -q argv[1]
        echo $argv[1]
        set -q ZELLIJ; and zellij action rename-tab (string split -f 1 " " $argv[1])
    else
        prompt_pwd
        set -q ZELLIJ; and zellij action rename-tab fish
    end
end
