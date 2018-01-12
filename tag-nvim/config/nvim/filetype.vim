" ~/.config/nvim/filetype.vim

if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    autocmd! BufNewFile,BufRead *.fish setfiletype fish
    autocmd! BufNewFile,BufRead *.m setfiletype octave
    autocmd! BufNewFile,BufRead rcrc setfiletype sh
augroup END
