function opf -d 'Open a file beneath the current directory'
    set -l item (rg --files | fzy); or return
    open $item
end
