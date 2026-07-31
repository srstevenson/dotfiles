function fish_title -d 'Write out the terminal title'
    set -l command $argv[1]
    if not set -q argv[1]
        set command (status current-command)
    end

    test "$command" = fish; and set -e command

    if test -n "$command"
        echo -- $command
    else
        prompt_pwd
    end
end
