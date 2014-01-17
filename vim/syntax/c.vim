" Highlight Class and Function names
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
syn match    cCustomType     "\w\+<\w\+>&\=" contains=cCustomWord

hi def link cCustomFunc  Function
hi def link cCustomClass Function
hi def link cCustomType  Type
