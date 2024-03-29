function fish_title
    set -l title (set -q argv[1]; and echo $argv[1]; or prompt_pwd)
    set -q ZELLIJ; and zellij action rename-tab "$title"
    echo "$title"
end
