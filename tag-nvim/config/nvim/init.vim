" ~/.config/nvim/init.vim

call plug#begin('~/.local/share/nvim/plugins')

Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-sort-motion'
Plug 'ervandew/supertab'
Plug 'junegunn/gv.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'srstevenson/vim-picker'
Plug 'srstevenson/vim-topiary'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

call plug#end()

set background=dark
set colorcolumn=80
set cursorline
set diffopt+=vertical
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set hidden
set ignorecase
set listchars=tab:→\ ,trail:·,nbsp:+
set nojoinspaces
set nomodeline
set noshowmode
set number
set path+=**
set relativenumber
set scrolloff=3
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=-1
set spelllang=en_gb
set splitbelow
set splitright

colorscheme base16-default-dark

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:airline#extensions#branch#format = 2
let g:airline#extensions#hunks#hunk_symbols = ['+', '±', '-']
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline_detect_spell = 0
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_grayscale'

let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_lint_on_save = 1

let g:is_posix = 1

let g:netrw_winsize = -30

let g:rainbow#blacklist = [11]
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

let g:signify_sign_change = '±'
let g:signify_sign_changedelete = '±'
let g:signify_sign_show_text = 1
let g:signify_vcs_list = ['git']

let g:sort_motion_flags = 'ui'

let g:tex_flavor = 'latex'

augroup vimrc
    autocmd!
    autocmd FileType * RainbowParentheses
    autocmd InsertEnter * setlocal nolist
    autocmd InsertLeave * setlocal list
    autocmd QuickFixCmdPost grep cwindow
augroup END

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

nnoremap <unique> <space>gc :Gcommit -v<cr>
nnoremap <unique> <space>gd :Gdiff<cr>
nnoremap <unique> <space>gl :GV<cr>
nnoremap <unique> <space>gs :Gstatus<cr>
nnoremap <unique> <space>gw :Gwrite<cr>

nmap <unique> <space>pe <Plug>PickerEdit
nmap <unique> <space>ps <Plug>PickerSplit
nmap <unique> <space>pt <Plug>PickerTabedit
nmap <unique> <space>pv <Plug>PickerVsplit
nmap <unique> <space>pb <Plug>PickerBuffer
nmap <unique> <space>p] <Plug>PickerTag
nmap <unique> <space>ph <Plug>PickerHelp
