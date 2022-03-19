" ~/.config/nvim/init.vim

packadd minpac

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('sbdchd/neoformat')
call minpac#add('srstevenson/vim-topiary')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')

let g:neoformat_enabled_python = ['isort', 'black']
let g:neoformat_run_all_formatters = 1

set autoread
set background=light
set expandtab
set ignorecase
set nojoinspaces
set path=**
set scrolloff=4
set shiftwidth=4
set smartcase
set softtabstop=-1
set spelllang=en_gb

if executable('rg')
    set grepprg=rg\ --vimgrep
    set grepformat^=%f:%l:%c:%m
endif

colorscheme base16

augroup init
    autocmd!
    autocmd BufWritePre * Neoformat
    autocmd FileType gitcommit,markdown syntax enable | setlocal spell
augroup END

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
