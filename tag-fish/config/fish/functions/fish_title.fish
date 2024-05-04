function fish_title
    if set -q argv[1]
        echo $hostname: $argv[1]
        set -q ZELLIJ; and zellij ac rename-tab (string split -f 1 " " $argv[1])
    else
        echo $hostname: (prompt_pwd)
        set -q ZELLIJ; and zellij ac rename-tab fish
    end
end
