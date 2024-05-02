function fish_title
    echo (set -q argv[1]; and echo $argv[1]; or prompt_pwd)

    set -q ZELLIJ; and zellij action rename-tab \
        (set -q argv[1]; and echo $argv[1]; or basename $SHELL)
end
