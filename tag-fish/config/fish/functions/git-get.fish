# ~/.config/fish/functions/git-get.fish

function git-get -d 'Clone a Git repository into ~/src'
    switch "$argv[1]"
        case -b
            set host bitbucket.org
            set repo $argv[2]
        case -l
            set host gitlab.com
            set repo $argv[2]
        case "-h"
            set host github.com
            set repo $argv[2]
        case "*"
            set host git.stevenson.io
            set repo $argv[1]
    end

    if string match -q git.stevenson.io $host; or string match -eq / $repo
        set src git@$host:$repo.git
        set dest ~/src/$host/$repo
    else
        set src git@$host:srstevenson/$repo.git
        set dest ~/src/$host/srstevenson/$repo
    end

    if test -d $dest
        echo "$dest already exists" >&2
    else
        git clone --recursive $src $dest
    end

    cd $dest
end
