# ~/.config/fish/functions/git-get.fish

function git-get -d 'Clone a Git repository into ~/src'
    switch "$argv[1]"
        case -b
            set src git@bitbucket.org:$argv[2].git
            set dest ~/src/bitbucket.org/$argv[2]
        case -l
            set src git@gitlab.com:$argv[2].git
            set dest ~/src/gitlab.com/$argv[2]
        case '*'
            set src git@github.com:$argv[1].git
            set dest ~/src/github.com/$argv[1]
    end

    if test -d $dest
        echo "$dest already exists" >&2
    else
        git clone --recursive $src $dest
    end

    cd $dest
end
