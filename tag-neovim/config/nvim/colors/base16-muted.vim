" ~/.config/nvim/colors/base16-muted.vim

highlight clear
syntax reset
let g:colors_name = 'base16-muted'

let s:cterm00 = '00'
let s:cterm01 = '10'
let s:cterm02 = '11'
let s:cterm03 = '08'
let s:cterm04 = '12'
let s:cterm05 = '07'
let s:cterm06 = '13'
let s:cterm07 = '15'
let s:cterm08 = '01'
let s:cterm09 = '09'
let s:cterm0A = '03'
let s:cterm0B = '02'
let s:cterm0C = '06'
let s:cterm0D = '04'
let s:cterm0E = '05'
let s:cterm0F = '14'

function! <sid>highlight(group, ctermfg, ctermbg, attr) abort
  if a:attr != ''
    execute 'highlight ' . a:group . ' cterm=' . a:attr
  endif
  if a:ctermbg != ''
    execute 'highlight ' . a:group . ' ctermbg=' . a:ctermbg
  endif
  if a:ctermfg != ''
    execute 'highlight ' . a:group . ' ctermfg=' . a:ctermfg
  endif
endfunction

call <sid>highlight('Bold', '', '', 'bold')
call <sid>highlight('ColorColumn', '', s:cterm01, 'none')
call <sid>highlight('Conceal', s:cterm0D, s:cterm00, '')
call <sid>highlight('Cursor', s:cterm00, s:cterm05, '')
call <sid>highlight('CursorColumn', '', s:cterm01, 'none')
call <sid>highlight('CursorLine', '', s:cterm01, 'none')
call <sid>highlight('CursorLineNr', s:cterm04, s:cterm01, '')
call <sid>highlight('Debug', s:cterm08, '', '')
call <sid>highlight('Directory', s:cterm0D, '', '')
call <sid>highlight('Error', s:cterm00, s:cterm08, '')
call <sid>highlight('ErrorMsg', s:cterm08, s:cterm00, '')
call <sid>highlight('Exception', s:cterm05, '', '')
call <sid>highlight('FoldColumn', s:cterm0C, s:cterm01, '')
call <sid>highlight('Folded', s:cterm03, s:cterm01, '')
call <sid>highlight('IncSearch', s:cterm01, s:cterm09, 'none')
call <sid>highlight('Italic', '', '', 'none')
call <sid>highlight('LineNr', s:cterm03, s:cterm01, '')
call <sid>highlight('Macro', s:cterm05, '', '')
call <sid>highlight('MatchParen', '', s:cterm03, '')
call <sid>highlight('ModeMsg', s:cterm0B, '', '')
call <sid>highlight('MoreMsg', s:cterm0B, '', '')
call <sid>highlight('NonText', s:cterm03, '', '')
call <sid>highlight('Normal', s:cterm05, s:cterm00, '')
call <sid>highlight('PMenu', s:cterm05, s:cterm01, 'none')
call <sid>highlight('PMenuSel', s:cterm01, s:cterm05, '')
call <sid>highlight('Question', s:cterm0D, '', '')
call <sid>highlight('QuickFixLine', '', s:cterm01, 'none')
call <sid>highlight('Search', s:cterm01, s:cterm0A, '')
call <sid>highlight('SignColumn', s:cterm03, s:cterm01, '')
call <sid>highlight('SpecialKey', s:cterm03, '', '')
call <sid>highlight('StatusLine', s:cterm05, s:cterm02, 'none')
call <sid>highlight('StatusLineNC', s:cterm03, s:cterm01, 'none')
call <sid>highlight('Substitute', s:cterm01, s:cterm0A, 'none')
call <sid>highlight('TabLine', s:cterm03, s:cterm01, 'none')
call <sid>highlight('TabLineFill', s:cterm03, s:cterm01, 'none')
call <sid>highlight('TabLineSel', s:cterm0B, s:cterm01, 'none')
call <sid>highlight('Title', s:cterm0D, '', 'none')
call <sid>highlight('TooLong', s:cterm08, '', '')
call <sid>highlight('Underlined', s:cterm08, '', '')
call <sid>highlight('VertSplit', s:cterm02, s:cterm02, 'none')
call <sid>highlight('Visual', '', s:cterm02, '')
call <sid>highlight('VisualNOS', s:cterm08, '', '')
call <sid>highlight('WarningMsg', s:cterm08, '', '')
call <sid>highlight('WildMenu', s:cterm08, '', '')

call <sid>highlight('Boolean', s:cterm05, '', '')
call <sid>highlight('Character', s:cterm05, '', '')
call <sid>highlight('Comment', s:cterm03, '', '')
call <sid>highlight('Conditional', s:cterm05, '', '')
call <sid>highlight('Constant', s:cterm05, '', '')
call <sid>highlight('Define', s:cterm05, '', 'none')
call <sid>highlight('Delimiter', s:cterm05, '', '')
call <sid>highlight('Float', s:cterm05, '', '')
call <sid>highlight('Function', s:cterm05, '', '')
call <sid>highlight('Identifier', s:cterm05, '', 'none')
call <sid>highlight('Include', s:cterm05, '', '')
call <sid>highlight('Keyword', s:cterm05, '', '')
call <sid>highlight('Label', s:cterm05, '', '')
call <sid>highlight('Number', s:cterm05, '', '')
call <sid>highlight('Operator', s:cterm05, '', 'none')
call <sid>highlight('PreProc', s:cterm05, '', '')
call <sid>highlight('Repeat', s:cterm05, '', '')
call <sid>highlight('Special', s:cterm05, '', '')
call <sid>highlight('SpecialChar', s:cterm05, '', '')
call <sid>highlight('Statement', s:cterm05, '', '')
call <sid>highlight('StorageClass', s:cterm05, '', '')
call <sid>highlight('String', s:cterm04, '', '')
call <sid>highlight('Structure', s:cterm05, '', '')
call <sid>highlight('Tag', s:cterm05, '', '')
call <sid>highlight('Todo', s:cterm0A, '', '')
call <sid>highlight('Type', s:cterm05, '', 'none')
call <sid>highlight('Typedef', s:cterm05, '', '')

call <sid>highlight('DiffAdd', s:cterm0B, s:cterm01, '')
call <sid>highlight('DiffAdded', s:cterm0B, s:cterm00, '')
call <sid>highlight('DiffChange', s:cterm03, s:cterm01, '')
call <sid>highlight('DiffDelete', s:cterm08, s:cterm01, '')
call <sid>highlight('DiffFile', s:cterm08, s:cterm00, '')
call <sid>highlight('DiffLine', s:cterm0D, s:cterm00, '')
call <sid>highlight('DiffNewFile', s:cterm0B, s:cterm00, '')
call <sid>highlight('DiffRemoved', s:cterm08, s:cterm00, '')
call <sid>highlight('DiffText', s:cterm0D, s:cterm01, '')

delfunction <sid>highlight

unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06
      \ s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D
      \ s:cterm0E s:cterm0F
