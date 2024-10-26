function fish_title
    if set -q argv[1]
        echo $hostname: $argv[1]
    else
        echo $hostname: (prompt_pwd)
    end
end
