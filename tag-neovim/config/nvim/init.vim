" ~/.config/nvim/init.vim

syntax off

set background=light
set expandtab
set isfname-==
set nojoinspaces
set path=**
set scrolloff=3
set shiftwidth=2
set softtabstop=-1
set spelllang=en_gb
set statusline=%<%f\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P

let g:is_posix = 1

function! <sid>cleanup_whitespace() abort
  let l:view = winsaveview()
  if &filetype !=# 'mail'
    %substitute/\s\+$//e
  endif
  %substitute/\%^\n\+//e
  %substitute/\n\+\%$//e
  if &filetype ==# 'python'
    %substitute/\n\{4,}/\r\r\r/e
  else
    %substitute/\n\{3,}/\r\r/e
  endif
  call winrestview(l:view)
endfunction

augroup cleanup_whitespace
  autocmd!
  autocmd BufWritePre * call <sid>cleanup_whitespace()
augroup END

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

function! <sid>replace_typographic_characters() abort
  let l:map = {}
  let l:map["–"] = "--"
  let l:map["—"] = "---"
  let l:map["‘"] = "'"
  let l:map["’"] = "'"
  let l:map["“"] = '"'
  let l:map["”"] = '"'
  let l:map["…"] = "..."
  execute ":%substitute/".join(keys(l:map), '\|').'/\=l:map[submatch(0)]/ge'
endfunction

command! -bar ReplaceTypographicCharacters call <sid>replace_typographic_characters()
command! -bar -bang Delete
      \ let s:filename = fnamemodify(bufname(<q-args>), ':p') |
      \ execute 'bdelete<bang>' |
      \ call delete(s:filename)
