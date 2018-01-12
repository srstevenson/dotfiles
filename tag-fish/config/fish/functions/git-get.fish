# ~/.config/fish/functions/git-get.fish

function git-get -d 'Clone a Git repository into ~/src'
    switch "$argv[1]"
        case -b
            if string match -eq / $argv[2]
                set src git@bitbucket.org:$argv[2].git
                set dest ~/src/bitbucket.org/$argv[2]
            else
                set src git@bitbucket.org:srstevenson/$argv[2].git
                set dest ~/src/bitbucket.org/srstevenson/$argv[2]
            end
        case -l
            if string match -eq / $argv[2]
                set src git@gitlab.com:$argv[2].git
                set dest ~/src/gitlab.com/$argv[2]
            else
                set src git@gitlab.com:srstevenson/$argv[2].git
                set dest ~/src/gitlab.com/srstevenson/$argv[2]
            end
        case '*'
            if string match -eq / $argv[1]
                set src git@github.com:$argv[1].git
                set dest ~/src/github.com/$argv[1]
            else
                set src git@github.com:srstevenson/$argv[1].git
                set dest ~/src/github.com/srstevenson/$argv[1]
            end
    end

    if test -d $dest
        echo "$dest already exists" >&2
    else
        git clone --recursive $src $dest
    end

    cd $dest
end
