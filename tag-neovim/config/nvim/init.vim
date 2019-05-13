" ~/.config/nvim/init.vim

scriptencoding utf-8

packadd minpac

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('w0rp/ale')

set colorcolumn=80
set expandtab
set isfname-==
set nojoinspaces
set path=**
set scrolloff=3
set shiftwidth=2
set softtabstop=-1
set spelllang=en_gb
set statusline=%<%f\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P

let g:ale_c_clangformat_options = '-style=file'
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'cpp': ['clang-format'],
      \ 'markdown': ['prettier'],
      \ 'python': ['isort', 'black'],
      \ }
let g:ale_javascript_prettier_options = '--prose-wrap=always'
let g:ale_linters = {
      \ 'python': ['mypy', 'pyls', 'pylint'],
      \ }
let g:ale_python_black_options = '--line-length 79'
let g:ale_python_mypy_options = '--strict'
let g:ale_python_pylint_options = '--disable bad-continuation'
let g:ale_set_highlights = 0
let g:ale_sign_error = '➡'
let g:ale_sign_warning = '➡'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = ' ← '

let g:is_posix = 1

colorscheme base16-muted

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

function! <sid>replace_typographic_characters() abort
  let l:map = {}
  let l:map['–'] = '--'
  let l:map['—'] = '---'
  let l:map['‘'] = "'"
  let l:map['’'] = "'"
  let l:map['“'] = '"'
  let l:map['”'] = '"'
  let l:map['•'] = '*'
  let l:map['…'] = '...'
  execute ':%substitute/'.join(keys(l:map), '\|').'/\=l:map[submatch(0)]/ge'
endfunction

command! -bar -bang Delete
      \ let s:filename = fnamemodify(bufname(<q-args>), ':p') |
      \ execute 'bdelete<bang>' |
      \ call delete(s:filename)
command! -bar HighlightGroup
      \ echo 'hi<' . synIDattr(synID(line('.'), col('.'), 1), 'name') . '> trans<'
      \ . synIDattr(synID(line('.'), col('.'), 0), 'name') . '> lo<'
      \ . synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') . '>'
command! -bar MinpacUpdateAndQuit call minpac#update('', {'do': 'quit'})
command! -bar ReplaceTypographicCharacters call <sid>replace_typographic_characters()
