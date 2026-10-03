function cdd -d 'Change to a directory beneath ~/D*'
    set -l dir (bfs ~/D*/ -type d | zf); or return
    cd $dir
end
