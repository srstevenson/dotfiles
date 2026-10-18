if exists('b:current_syntax')
  finish
endif

let s:save_cpo = &cpoptions
set cpoptions&vim

syntax case match
syntax sync fromstart

syntax match xitTitle /^[^\[ \t].*$/

syntax cluster xitItemContents contains=xitCheckboxOpen,xitCheckboxChecked,xitCheckboxOngoing,xitCheckboxObsolete,xitCheckboxInQuestion,xitPriority,xitTag,xitAfterDueDate

" Continuations need a description on the first line, not just a priority.
syntax match xitItem /^\[[ x@~?]\]\%( \%( *\%(!\+\.*\|\.\+!*\) *$\)\@!.*\S.*\%(\n    .*\S.*\)*\| .*\)\?$/ contains=@xitItemContents
syntax match xitCheckedItem /^\[x\]\%( \%( *\%(!\+\.*\|\.\+!*\) *$\)\@!.*\S.*\%(\n    .*\S.*\)*\| .*\)\?$/ contains=@xitItemContents
syntax match xitObsoleteItem /^\[\~\]\%( \%( *\%(!\+\.*\|\.\+!*\) *$\)\@!.*\S.*\%(\n    .*\S.*\)*\| .*\)\?$/ contains=@xitItemContents

syntax match xitCheckboxOpen /^\[ \]/ contained
syntax match xitCheckboxChecked /^\[x\]/ contained
syntax match xitCheckboxObsolete /^\[\~\]/ contained
syntax match xitCheckboxOngoing /^\[@\]/ contained
syntax match xitCheckboxInQuestion /^\[?\]/ contained

syntax match xitPriority /\%(^\[[ x@~?]\] \+\)\@<=\%(!\+\.*\|\.\+!*\)\ze\%( \|$\)/ contained

syntax match xitTag /\%(#\)\@<!#[A-Za-z0-9_-]\+\%(=\%("[^"]*"\|'[^']*'\|[A-Za-z0-9_-]*\)\)\?/ contained contains=xitTagValue
syntax match xitTagValue /\%(=\)\@<=\%("[^"]*"\|'[^']*'\|[A-Za-z0-9_-]\+\)/ contained

" Match date formats without validating the calendar.
" Only the first due date in an item is highlighted.
syntax region xitAfterDueDate transparent matchgroup=xitDueDate
      \ start=+-> \d\{4}\%(\([-/]\)\%(\d\{2}\%(\1\d\{2}\)\?\|W\d\{2}\|Q\d\)\)\?\%([0-9/-]\)\@!+
      \ end=+\%(\n    .*\S.*\)\@!$+ contained keepend contains=xitTag

highlight default link xitCheckboxChecked String
highlight default link xitCheckboxObsolete Comment
highlight default link xitCheckboxOngoing Conditional
highlight default link xitCheckboxOpen Special
highlight default link xitCheckboxInQuestion DiagnosticWarn
highlight default link xitCheckedItem Comment
highlight default link xitObsoleteItem Comment
highlight default link xitPriority DiagnosticError
highlight default link xitTag Label
highlight default link xitTagValue String
highlight default link xitDueDate Special
highlight default link xitTitle Title

let b:current_syntax = 'xit'

let &cpoptions = s:save_cpo
unlet s:save_cpo
