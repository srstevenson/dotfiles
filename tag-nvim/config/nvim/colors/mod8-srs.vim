" ~/.config/nvim/colors/mod8-srs.vim

highlight clear

syntax reset

let g:colors_name = 'mod8-srs'

function <sid>highlight(group, ctermfg, ctermbg, attr)
    if a:ctermfg !=? ''
        exec 'hi ' . a:group . ' ctermfg=' . a:ctermfg
    endif
    if a:ctermbg !=? ''
        exec 'hi ' . a:group . ' ctermbg=' . a:ctermbg
    endif
    if a:attr !=? ''
        exec 'hi ' . a:group . ' cterm=' . a:attr
    endif
endfunction

let s:cterm00 = '00'
let s:cterm03 = '07'
" let s:cterm05 = '07'
" let s:cterm07 = '15'
let s:cterm08 = '01'
let s:cterm0A = '03'
let s:cterm0B = '02'
let s:cterm0C = '06'
let s:cterm0D = '04'
let s:cterm0E = '05'
let s:cterm01 = '00'
let s:cterm02 = '08'
let s:cterm04 = '15'
" let s:cterm06 = '13'
let s:cterm09 = '09'
let s:cterm0F = '14'

set background=dark

call <sid>highlight('Bold', '', '', 'bold')
call <sid>highlight('Debug', s:cterm08, '', '')
call <sid>highlight('Directory', s:cterm0D, '', '')
call <sid>highlight('Error', s:cterm08, 'NONE', 'REVERSE')
call <sid>highlight('ErrorMsg', s:cterm08, 'NONE', '')
call <sid>highlight('Exception', s:cterm08, '', '')
call <sid>highlight('FoldColumn', '', s:cterm01, '')
call <sid>highlight('Folded', s:cterm03, s:cterm01, '')
call <sid>highlight('IncSearch', s:cterm01, s:cterm09, 'none')
call <sid>highlight('Italic', '', '', 'none')
call <sid>highlight('Macro', s:cterm08, '', '')
call <sid>highlight('MatchParen', s:cterm00, s:cterm03, '')
call <sid>highlight('ModeMsg', s:cterm0B, '', '')
call <sid>highlight('MoreMsg', s:cterm0B, '', '')
call <sid>highlight('Question', s:cterm0D, '', '')
call <sid>highlight('Search', s:cterm03, s:cterm0A, '')
call <sid>highlight('SpecialKey', s:cterm03, '', '')
call <sid>highlight('TooLong', s:cterm08, '', '')
call <sid>highlight('Underlined', s:cterm08, '', '')
call <sid>highlight('Visual', '', s:cterm02, '')
call <sid>highlight('VisualNOS', s:cterm08, '', '')
call <sid>highlight('WarningMsg', s:cterm08, '', '')
call <sid>highlight('WildMenu', s:cterm08, '', '')
call <sid>highlight('Title', s:cterm0D, '', 'none')
call <sid>highlight('Conceal', s:cterm0D, '', '')
call <sid>highlight('Cursor', '', '', '')
call <sid>highlight('NonText', s:cterm03, '', '')
call <sid>highlight('Normal', '', '', '')
call <sid>highlight('LineNr', s:cterm03, s:cterm01, '')
call <sid>highlight('SignColumn', s:cterm03, s:cterm01, '')
call <sid>highlight('SpecialKey', s:cterm03, '', '')
call <sid>highlight('StatusLine', s:cterm04, s:cterm02, 'none')
call <sid>highlight('StatusLineNC', s:cterm03, s:cterm01, 'none')
call <sid>highlight('VertSplit', s:cterm02, s:cterm02, 'none')
call <sid>highlight('ColorColumn', '', s:cterm01, 'none')
call <sid>highlight('CursorColumn', '', s:cterm01, 'none')
call <sid>highlight('CursorLine', '', s:cterm01, 'none')
call <sid>highlight('CursorLineNr', s:cterm03, s:cterm01, '')
call <sid>highlight('PMenu', s:cterm04, s:cterm01, 'none')
call <sid>highlight('PMenuSel', s:cterm01, s:cterm04, '')
call <sid>highlight('TabLine', s:cterm03, s:cterm01, 'none')
call <sid>highlight('TabLineFill', s:cterm03, s:cterm01, 'none')
call <sid>highlight('TabLineSel', s:cterm0B, s:cterm01, 'none')

call <sid>highlight('Boolean', s:cterm09, '', '')
call <sid>highlight('Character', s:cterm08, '', '')
call <sid>highlight('Comment', s:cterm03, '', '')
call <sid>highlight('Conditional', s:cterm0E, '', '')
call <sid>highlight('Constant', s:cterm09, '', '')
call <sid>highlight('Define', s:cterm0E, '', 'none')
call <sid>highlight('Delimiter', s:cterm0F, '', '')
call <sid>highlight('Float', s:cterm09, '', '')
call <sid>highlight('Function', s:cterm0D, '', '')
call <sid>highlight('Identifier', s:cterm08, '', 'none')
call <sid>highlight('Include', s:cterm0D, '', '')
call <sid>highlight('Keyword', s:cterm0E, '', '')
call <sid>highlight('Label', s:cterm0A, '', '')
call <sid>highlight('Number', s:cterm09, '', '')
call <sid>highlight('Operator', '', '', 'none')
call <sid>highlight('PreProc', s:cterm0A, '', '')
call <sid>highlight('Repeat', s:cterm0A, '', '')
call <sid>highlight('Special', s:cterm0C, '', '')
call <sid>highlight('SpecialChar', s:cterm0F, '', '')
call <sid>highlight('Statement', s:cterm08, '', '')
call <sid>highlight('StorageClass', s:cterm0A, '', '')
call <sid>highlight('String', s:cterm0B, '', '')
call <sid>highlight('Structure', s:cterm0E, '', '')
call <sid>highlight('Tag', s:cterm0A, '', '')
call <sid>highlight('Todo', s:cterm0A, s:cterm01, '')
call <sid>highlight('Type', s:cterm0A, '', 'none')
call <sid>highlight('Typedef', s:cterm0A, '', '')

call <sid>highlight('cOperator', s:cterm0C, '', '')
call <sid>highlight('cPreCondit', s:cterm0E, '', '')

call <sid>highlight('cssBraces', '', '', '')
call <sid>highlight('cssClassName', s:cterm0E, '', '')
call <sid>highlight('cssColor', s:cterm0C, '', '')

call <sid>highlight('DiffAdd', s:cterm0B, s:cterm01, '')
call <sid>highlight('DiffChange', s:cterm03, s:cterm01, '')
call <sid>highlight('DiffDelete', s:cterm08, s:cterm01, '')
call <sid>highlight('DiffText', s:cterm0D, s:cterm01, '')
call <sid>highlight('DiffAdded', s:cterm0B, '', '')
call <sid>highlight('DiffFile', s:cterm08, '', '')
call <sid>highlight('DiffNewFile', s:cterm0B, '', '')
call <sid>highlight('DiffLine', s:cterm0D, '', '')
call <sid>highlight('DiffRemoved', s:cterm08, '', '')

call <sid>highlight('gitCommitOverflow', s:cterm08, '', '')
call <sid>highlight('gitCommitSummary', s:cterm0B, '', '')

call <sid>highlight('GitGutterAdd', s:cterm0B, s:cterm01, '')
call <sid>highlight('GitGutterChange', s:cterm0D, s:cterm01, '')
call <sid>highlight('GitGutterDelete', s:cterm08, s:cterm01, '')
call <sid>highlight('GitGutterChangeDelete', s:cterm0E, s:cterm01, '')

call <sid>highlight('htmlBold', s:cterm0A, '', '')
call <sid>highlight('htmlItalic', s:cterm0E, '', '')
call <sid>highlight('htmlEndTag', '', '', '')
call <sid>highlight('htmlTag', '', '', '')

call <sid>highlight('javaScript', '', '', '')
call <sid>highlight('javaScriptBraces', '', '', '')
call <sid>highlight('javaScriptNumber', s:cterm09, '', '')

call <sid>highlight('markdownCode', s:cterm0B, '', '')
call <sid>highlight('markdownError', '', '', '')
call <sid>highlight('markdownCodeBlock', s:cterm0B, '', '')
call <sid>highlight('markdownHeadingDelimiter', s:cterm0D, '', '')

call <sid>highlight('pythonOperator', s:cterm0E, '', '')
call <sid>highlight('pythonRepeat', s:cterm0E, '', '')

call <sid>highlight('rubyAttribute', s:cterm0D, '', '')
call <sid>highlight('rubyConstant', s:cterm0A, '', '')
call <sid>highlight('rubyInterpolation', s:cterm0B, '', '')
call <sid>highlight('rubyInterpolationDelimiter', s:cterm0F, '', '')
call <sid>highlight('rubyRegexp', s:cterm0C, '', '')
call <sid>highlight('rubySymbol', s:cterm0B, '', '')
call <sid>highlight('rubyStringDelimiter', s:cterm0B, '', '')

call <sid>highlight('SignifySignAdd', s:cterm0B, s:cterm01, '')
call <sid>highlight('SignifySignChange', s:cterm0D, s:cterm01, '')
call <sid>highlight('SignifySignDelete', s:cterm08, s:cterm01, '')

call <sid>highlight('SpellBad', s:cterm09, 'NONE', 'undercurl')
call <sid>highlight('SpellLocal', s:cterm0A, 'NONE', 'undercurl')
call <sid>highlight('SpellCap', s:cterm0A, 'NONE', 'undercurl')
call <sid>highlight('SpellRare', s:cterm0B, 'NONE', 'undercurl')

delfunction <sid>highlight

unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm08 s:cterm09
            \ s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
" unlet s:cterm05 s:cterm06 s:cterm07
