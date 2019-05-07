" ~/.config/nvim/init.vim

packadd minpac

call minpac#init()
call minpac#add("k-takata/minpac", {"type": "opt"})
call minpac#add("srstevenson/vim-topiary")
call minpac#add("tpope/vim-commentary")
call minpac#add("tpope/vim-fugitive")

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

colorscheme base16-muted

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

function! <sid>replace_typographic_characters() abort
  let l:map = {}
  let l:map["–"] = "--"
  let l:map["—"] = "---"
  let l:map["‘"] = "'"
  let l:map["’"] = "'"
  let l:map["“"] = '"'
  let l:map["”"] = '"'
  let l:map["•"] = "*"
  let l:map["…"] = "..."
  execute ":%substitute/".join(keys(l:map), '\|').'/\=l:map[submatch(0)]/ge'
endfunction

command! -bar -bang Delete
      \ let s:filename = fnamemodify(bufname(<q-args>), ':p') |
      \ execute 'bdelete<bang>' |
      \ call delete(s:filename)
command! -bar MinpacUpdateAndQuit call minpac#update("", {"do": "quit"})
command! -bar ReplaceTypographicCharacters call <sid>replace_typographic_characters()
