" ~/.vim/filetype.vim

if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    autocmd BufNewFile,BufRead *.md set filetype=markdown
augroup END
