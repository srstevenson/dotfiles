" ~/.config/nvim/init.vim

scriptencoding utf-8

if empty(glob('~/.config/nvim/pack/minpac'))
    silent !git clone https://github.com/k-takata/minpac.git
                \ ~/.config/nvim/pack/minpac/opt/minpac
    " vint: -ProhibitAutocmdWithNoGroup
    autocmd VimEnter * call minpac#update()
    " vint: +ProhibitAutocmdWithNoGroup
endif

silent! packadd minpac

if exists('*minpac#init')
    call minpac#init()

    call minpac#add('k-takata/minpac', {'type': 'opt'})
        command! MinpacUpgrade call minpac#clean() | call minpac#update()
        nnoremap <unique> <silent> <space>mu :MinpacUpgrade<cr>

    call minpac#add('airblade/vim-gitgutter')
        nmap <unique> <space>hp <Plug>GitGutterPreviewHunk
        nmap <unique> <space>hs <Plug>GitGutterStageHunk
        nmap <unique> <space>hu <Plug>GitGutterUndoHunk

    call minpac#add('christoomey/vim-sort-motion')
        let g:sort_motion_flags = 'iu'

    call minpac#add('jamessan/vim-gnupg')
        let g:GPGDefaultRecipients = ['55DB46D0539AC4EF36E3D50E5CF675520A637578']

    call minpac#add('machakann/vim-highlightedyank')
        let g:highlightedyank_highlight_duration = 250

    call minpac#add('roxma/nvim-completion-manager')

    call minpac#add('sbdchd/neoformat')
        nnoremap <unique> <space>nf :Neoformat<cr>

    call minpac#add('sheerun/vim-polyglot')

    call minpac#add('srstevenson/vim-picker')
        nmap <unique> <space>pb <Plug>PickerBuffer
        nmap <unique> <space>pe <Plug>PickerEdit
        nmap <unique> <space>ph <Plug>PickerHelp
        nmap <unique> <space>ps <Plug>PickerSplit
        nmap <unique> <space>pt <Plug>PickerTabedit
        nmap <unique> <space>pv <Plug>PickerVsplit
        nmap <unique> <space>pl <Plug>PickerLocationList
        nmap <unique> <space>pq <Plug>PickerQuickfix

    call minpac#add('srstevenson/vim-topiary')

    call minpac#add('tpope/vim-abolish')

    call minpac#add('tpope/vim-commentary')

    call minpac#add('tpope/vim-eunuch')

    call minpac#add('tpope/vim-fugitive')
        nnoremap <unique> <silent> <space>gb :Gblame<cr>
        nnoremap <unique> <silent> <space>gc :Gcommit<cr>
        nnoremap <unique> <silent> <space>gd :Gdiff<cr>
        nnoremap <unique> <silent> <space>gs :Gstatus<cr>
        nnoremap <unique> <silent> <space>gw :Gwrite<cr>

    call minpac#add('tpope/vim-rsi')

    call minpac#add('w0rp/ale')
        let g:ale_echo_msg_format = '%linter%: %s'
        let g:ale_open_list = 1
        let g:ale_python_mypy_options = '--ignore-missing-imports'
        let g:ale_python_pylint_options = '--disable missing-docstring'
        nmap <unique> <space>at <Plug>(ale_toggle_buffer)
endif

let g:is_posix = 1

colorscheme mod8-srs

set colorcolumn=80
set expandtab
set hidden
set ignorecase
set inccommand=nosplit
set list
set listchars=tab:→\ ,trail:·,nbsp:␣
set nojoinspaces
set number
set relativenumber
set scrolloff=3
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
