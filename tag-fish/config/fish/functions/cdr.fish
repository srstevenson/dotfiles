function cdr -d 'Change to a repository beneath ~/Projects'
    set -l repo (git-find-repos | fzy); or return
    cd ~/Projects/$repo
end
