" ~/.vim/filetype.vim

if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    autocmd BufNewFile,BufRead Vagrantfile setfiletype ruby
augroup END
