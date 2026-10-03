function opf -d 'Open a file beneath the current directory'
    set -l item (rg --files | zf); or return
    open $item
end
