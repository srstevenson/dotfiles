# ~/.config/fish/functions/git-get.fish

function git-get -d "Clone a Git repository to the canonical path"
    switch "$argv[1]"
        case -b
            set host bitbucket.org
            set repo $argv[2]
            set repo_prefix ""
            set repo_suffix .git
        case -l
            set host gitlab.com
            set repo $argv[2]
            set repo_prefix ""
            set repo_suffix .git
        case -s
            set host git.sr.ht
            set repo $argv[2]
            set repo_prefix "~"
            set repo_suffix ""
        case "*"
            set host github.com
            set repo $argv[2]
            set repo_prefix ""
            set repo_suffix .git
    end

    if string match -eq / $repo
        set src git@$host:$repo_prefix$repo$repo_suffix
        set dest ~/src/$host/$repo_prefix$repo
    else
        set src git@$host:{$repo_prefix}srstevenson/$repo$repo_suffix
        set dest ~/src/$host/{$repo_prefix}srstevenson/$repo
    end

    if test -d $dest
        git -C $dest sync
    else
        git clone --recurse-submodules $src $dest
    end

    cd $dest
end
