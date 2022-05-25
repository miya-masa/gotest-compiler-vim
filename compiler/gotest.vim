" Vim compiler file
" Compiler:	GoTest
" Maintainer:	miya-masa
" Last Change:	2020-06-20

if exists('current_compiler')
  finish
endif
let current_compiler = 'gotest'

if exists(':CompilerSet') != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:save_cpo = &cpo
set cpo-=C

CompilerSet makeprg=go\ test
CompilerSet errorformat=
      \%.%#---\ FAIL:%\\s%#%m\ (%.%#),
      \%-G?%.%#,
      \%-G{%.%#,
      \%-Gok%.%#,
      \%-GPASS%.%#,
      \%-GFAIL%.%#,
      \%A%.%#Error\ Trace:%.%#,
      \%Z%\\s%#Error:%\\s%#%m,
      \%C%.%#,
      \%-G%\\s%#,
      \%+G%\\s%#expected%\\s%#:%.%#,
      \%+G%\\s%#actual%\\s%#:%.%#,
      \DEBUG:%\\s%#%m,
      \%+G%.%#%.%.%.%.-%.%.-%.%.%.%#,
      \%+G%.%#%.%.:%.%.:%.%#,
      \%\\s%#%f:%l:%\\s%#%m,
      \%\\s%#%f:%l%\\s%#%m,
      \%\\s%#%m

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: sw=2 sts=2 et

