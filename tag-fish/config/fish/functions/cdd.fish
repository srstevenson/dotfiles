function cdd -d 'Change to a directory beneath ~/D*'
    set -l dir (bfs ~/D*/ -type d | fzy); or return
    cd $dir
end
