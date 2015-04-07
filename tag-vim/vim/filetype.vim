" ~/.vim/filetype.vim

if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    autocmd BufNewFile,BufRead .latexmkrc setfiletype perl
    autocmd BufNewFile,BufRead gitconfig setfiletype gitconfig
augroup END
