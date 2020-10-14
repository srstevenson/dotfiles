" ~/.config/nvim/init.vim

syntax off

set background=light
set colorcolumn=80
set expandtab
set ignorecase
set isfname-==
set list
set nojoinspaces
set path=**
set scrolloff=4
set shiftwidth=2
set smartcase
set softtabstop=-1
set spelllang=en_gb

if executable('rg')
  set grepprg=rg\ --vimgrep
  set grepformat^=%f:%l:%c:%m
endif

function! s:trim_whitespace() abort
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

augroup init
  autocmd!
  autocmd BufWritePre * call s:trim_whitespace()
  autocmd FileType gitcommit,markdown setlocal spell
augroup END

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
