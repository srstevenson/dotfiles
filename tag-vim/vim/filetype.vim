" ~/.vim/filetype.vim

if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    " `set filetype=` rather than `setfiletype` to override default
    autocmd BufNewFile,BufRead *.md set filetype=markdown
augroup END
