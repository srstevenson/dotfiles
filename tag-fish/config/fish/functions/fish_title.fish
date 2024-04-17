function fish_title
    set -l title (set -q argv[1]; and echo $argv[1]; or prompt_pwd)
    # Broken in Zellij v0.40.0: https://github.com/zellij-org/zellij/issues/3269
    # set -q ZELLIJ; and zellij action rename-tab "$title"
    echo "$title"
end
