" rem
syn region hedonRem start=+rem+ end=+$+
hi def link hedonRem Comment

" annot
" syn match hedonAnnot /;\|\[\|\]\|--/
" hi def link hedonAnnot Comment

" string
syn region hedonString start=+"+ skip=+\\\\\|\\"+ end=+"+
hi def link hedonString String

syn match hedonDefIdent /[a-zA-Z0-9\+\-\@\!\.\:\;\[\]\"]\+/ contained
hi def link hedonDefIdent Function

" keywords
syn match hedonDef /:/ nextgroup=hedonDefIdent skipwhite
syn match hedonVar /\<var\>/ nextgroup=hedonDefIdent skipwhite
syn match hedonConst /\<const\>/ nextgroup=hedonDefIdent skipwhite
syn match hedonModule /\<module\>/ nextgroup=hedonDefIdent skipwhite
syn match hedonImport /\<import\>/ nextgroup=hedonDefIdent skipwhite
syn match hedonImpl /\<impl\>/ nextgroup=hedonDefIdent skipwhite
hi def link hedonDef Comment
hi def link hedonLabel Comment
hi def link hedonVar Comment
hi def link hedonConst Comment
hi def link hedonModule Comment
hi def link hedonImport Comment
hi def link hedonImpl Keyword

" type
syn match hedonType /[A-Z][a-zA-Z0-9]*/
hi def link hedonType Type

" builtins
syn keyword hedonTWords newtype uniontype paramtype wraptype is module in out
hi def link hedonTWords Comment
syn keyword hedonSpecials bi bi@ dip 2dip 3dip keep 2keep 3keep dup 2dup 3dup swap lent
hi def link hedonSpecials Special
syn keyword hedonBuiltins le gr leq grq eq mul div mod bor band shl shr
hi def link hedonBuiltins Special
syn keyword hedonConditionals if when
hi def link hedonConditionals Conditional
syn keyword hedonRepeats for while
hi def link hedonRepeats Repeat

let b:current_syntax = "hedon"
