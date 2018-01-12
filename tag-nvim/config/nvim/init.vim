" ~/.config/nvim/init.vim

if empty(glob('~/.config/nvim/pack/minpac'))
    silent !git clone https://github.com/k-takata/minpac.git
                \ ~/.config/nvim/pack/minpac/opt/minpac
    autocmd VimEnter * call minpac#update()
endif

silent! packadd minpac

if exists('*minpac#init')
    call minpac#init()

    call minpac#add('k-takata/minpac', {'type': 'opt'})

    call minpac#add('airblade/vim-gitgutter')
        let g:gitgutter_map_keys = 0
        nmap <unique> <space>hs <Plug>GitGutterStageHunk
        nmap <unique> <space>hu <Plug>GitGutterUndoHunk

    call minpac#add('chriskempson/base16-vim')

    call minpac#add('christoomey/vim-sort-motion')
        let g:sort_motion_flags = 'iu'

    call minpac#add('cmhamill/vim-jrnl')

    call minpac#add('jamessan/vim-gnupg')

    call minpac#add('machakann/vim-highlightedyank')
        let g:highlightedyank_highlight_duration = 250

    call minpac#add('sheerun/vim-polyglot')

    call minpac#add('srstevenson/vim-picker')
        nmap <unique> <space>pb <Plug>PickerBuffer
        nmap <unique> <space>pe <Plug>PickerEdit
        nmap <unique> <space>ph <Plug>PickerHelp
        nmap <unique> <space>ps <Plug>PickerSplit
        nmap <unique> <space>pt <Plug>PickerTabedit
        nmap <unique> <space>pv <Plug>PickerVsplit

    call minpac#add('srstevenson/vim-topiary')

    call minpac#add('takac/vim-hardtime')
        let g:hardtime_allow_different_key = 1
        let g:hardtime_default_on = 1

    call minpac#add('tpope/vim-commentary')

    call minpac#add('tpope/vim-eunuch')

    call minpac#add('tpope/vim-fugitive')
        nnoremap <unique> <space>gb :Gblame<cr>
        nnoremap <unique> <space>gc :Gcommit -v<cr>
        nnoremap <unique> <space>gd :Gdiff<cr>
        nnoremap <unique> <space>gs :Gstatus<cr>
        nnoremap <unique> <space>gw :Gwrite<cr>

    call minpac#add('tpope/vim-rsi')

    call minpac#add('w0rp/ale')
        let g:ale_echo_msg_format = '%linter%: %s'
        let g:ale_open_list = 1
        let g:ale_python_mypy_options = '--ignore-missing-imports'
        let g:ale_python_pylint_options = '--disable missing-docstring'
endif

let g:is_posix = 1

colorscheme base16-default-dark

set colorcolumn=80
set expandtab
set hidden
set ignorecase
set inccommand=nosplit
set nojoinspaces
set nomodeline
set number
set relativenumber
set scrolloff=2
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=-1
set spelllang=en_gb
set statusline=%<%f\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P

if executable('rg')
    set grepformat^=%f:%l:%c:%m
    set grepprg=rg\ --vimgrep
endif

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

augroup init
    autocmd!
    autocmd QuickFixCmdPost grep cwindow
augroup END
