" ~/.config/nvim/init.vim

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('airblade/vim-gitgutter')
call minpac#add('chriskempson/base16-vim')
call minpac#add('christoomey/vim-sort-motion')
call minpac#add('ensime/ensime-vim')
call minpac#add('ervandew/supertab')
call minpac#add('roxma/nvim-completion-manager')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('srstevenson/vim-picker')
call minpac#add('srstevenson/vim-play')
call minpac#add('srstevenson/vim-topiary')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rsi')
call minpac#add('tpope/vim-vinegar')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('w0rp/ale')

set background=dark
set colorcolumn=80
set cursorline
set diffopt+=vertical
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --no-heading\ --vimgrep
set hidden
set ignorecase
set inccommand=nosplit
set listchars=tab:→\ ,trail:·,nbsp:+
set nojoinspaces
set nomodeline
set noshowmode
set number
set path=**
set relativenumber
set scrolloff=5
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=-1
set spelllang=en_gb
set wildignore+=*.class

colorscheme base16-tomorrow-night

let mapleader = ' '

let g:airline#extensions#hunks#hunk_symbols = ['+', '±', '-']
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline_detect_spell = 0
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

let g:ale_sign_error = '×'
let g:ale_sign_warning = '‽'

let g:gitgutter_sign_modified = '±'
let g:gitgutter_sign_modified_removed = '±_'

let g:is_posix = 1

let g:netrw_winsize = -30

let g:tex_flavor = 'latex'

let g:sort_motion_flags = 'ui'

augroup vimrc
    autocmd!
    autocmd BufWritePost *.scala EnTypeCheck
    autocmd InsertEnter * setl nolist
    autocmd InsertLeave * setl list
    autocmd QuickFixCmdPost grep cwindow
augroup END

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

nnoremap <unique> <leader>gc :Gcommit -v<cr>
nnoremap <unique> <leader>gd :Gdiff<cr>
nnoremap <unique> <leader>gs :Gstatus<cr>
nnoremap <unique> <leader>gw :Gwrite<cr>

nmap <unique> <leader>pe <Plug>PickerEdit
nmap <unique> <leader>ps <Plug>PickerSplit
nmap <unique> <leader>pt <Plug>PickerTabedit
nmap <unique> <leader>pv <Plug>PickerVsplit
nmap <unique> <leader>pb <Plug>PickerBuffer
nmap <unique> <leader>p] <Plug>PickerTag
nmap <unique> <leader>po <Plug>PickerBufferTag
nmap <unique> <leader>ph <Plug>PickerHelp
