" ~/.config/nvim/init.vim

syntax off

set background=light
set expandtab
set nojoinspaces
set scrolloff=3
set shiftwidth=2
set softtabstop=-1
set spelllang=en_gb
set statusline=%<%f\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P

function! <sid>cleanup_whitespace() abort
  let l:view = winsaveview()
  %s/\s\+$//e
  %s/\%^\n\+//e
  %s/\n\+\%$//e
  if &filetype ==# 'python'
    %s/\n\{4,}/\r\r\r/e
  else
    %s/\n\{3,}/\r\r/e
  endif
  call winrestview(l:view)
endfunction

augroup cleanup_whitespace
  autocmd!
  autocmd BufWritePre * call <sid>cleanup_whitespace()
augroup END

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>
