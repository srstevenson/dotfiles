function cdr -d 'Change to a repository beneath ~/Projects'
    set -l repo (git-find-repos | zf); or return
    cd ~/Projects/$repo
end
