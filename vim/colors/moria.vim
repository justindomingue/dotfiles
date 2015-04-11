" Vim color file - moria
" Generated by http://bytefluent.com/vivify 2014-01-14
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "moria"

hi IncSearch guifg=#ffffff guibg=#bfe078 guisp=#bfe078 gui=NONE ctermfg=15 ctermbg=149 cterm=NONE
hi WildMenu guifg=#ffffff guibg=#70e000 guisp=#70e000 gui=bold ctermfg=15 ctermbg=76 cterm=bold
hi SignColumn guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi SpecialComment guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi Typedef guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi Title guifg=#ffffff guibg=#000000 guisp=#000000 gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Folded guifg=#ffffff guibg=#4e4e4e guisp=#4e4e4e gui=bold ctermfg=15 ctermbg=239 cterm=bold
hi PreCondit guifg=#ffbee1 guibg=#202020 guisp=#202020 gui=NONE ctermfg=218 ctermbg=234 cterm=NONE
hi Include guifg=#ffbee1 guibg=#202020 guisp=#202020 gui=NONE ctermfg=218 ctermbg=234 cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold ctermfg=15 ctermbg=234 cterm=bold
hi StatusLineNC guifg=#ffffff guibg=#404040 guisp=#404040 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold ctermfg=15 ctermbg=234 cterm=bold
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#ffffff guibg=#6700cd guisp=#6700cd gui=bold ctermfg=15 ctermbg=56 cterm=bold
hi ErrorMsg guifg=#ffffff guibg=#ee8d2c guisp=#ee8d2c gui=bold ctermfg=15 ctermbg=215 cterm=bold
hi Ignore guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi Debug guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi PMenuSbar guifg=#ffffff guibg=#707070 guisp=#707070 gui=NONE ctermfg=15 ctermbg=242 cterm=NONE
hi Identifier guifg=#8edbff guibg=#202020 guisp=#202020 gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi SpecialChar guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi Conditional guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi StorageClass guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi Todo guifg=#ffffff guibg=#70e000 guisp=#70e000 gui=NONE ctermfg=15 ctermbg=76 cterm=NONE
hi Special guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi LineNr guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#4c4c4c guisp=#4c4c4c gui=bold ctermfg=15 ctermbg=239 cterm=bold
hi Normal guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi Label guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#ffffff guibg=#70e000 guisp=#70e000 gui=NONE ctermfg=15 ctermbg=76 cterm=NONE
hi Search guifg=#ffffff guibg=#90e0b8 guisp=#90e0b8 gui=NONE ctermfg=15 ctermbg=115 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi Statement guifg=#8791ff guibg=#202020 guisp=#202020 gui=bold ctermfg=105 ctermbg=234 cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#e2ffc4 guibg=#202020 guisp=#202020 gui=NONE ctermfg=193 ctermbg=234 cterm=NONE
hi Character guifg=#81ffa7 guibg=#202020 guisp=#202020 gui=NONE ctermfg=121 ctermbg=234 cterm=NONE
"hi Float -- no settings --
hi Number guifg=#81ffa7 guibg=#202020 guisp=#202020 gui=NONE ctermfg=121 ctermbg=234 cterm=NONE
hi Boolean guifg=#8791ff guibg=#202020 guisp=#202020 gui=bold ctermfg=105 ctermbg=234 cterm=bold
hi Operator guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi CursorLine guifg=#ffffff guibg=#404040 guisp=#404040 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#ffffff guibg=#6e6e6e guisp=#6e6e6e gui=underline ctermfg=15 ctermbg=242 cterm=underline
hi Question guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=bold ctermfg=228 ctermbg=234 cterm=bold
hi WarningMsg guifg=#ff972f guibg=#202020 guisp=#202020 gui=bold ctermfg=208 ctermbg=234 cterm=bold
hi VisualNOS guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold,underline ctermfg=15 ctermbg=234 cterm=bold,underline
hi DiffDelete guifg=#ffffff guibg=#8b4600 guisp=#8b4600 gui=NONE ctermfg=15 ctermbg=94 cterm=NONE
hi ModeMsg guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold ctermfg=15 ctermbg=234 cterm=bold
hi CursorColumn guifg=#ffffff guibg=#404040 guisp=#404040 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi Define guifg=#ffbee1 guibg=#202020 guisp=#202020 gui=NONE ctermfg=218 ctermbg=234 cterm=NONE
hi Function guifg=#8edbff guibg=#202020 guisp=#202020 gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi FoldColumn guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi PreProc guifg=#ffbee1 guibg=#202020 guisp=#202020 gui=NONE ctermfg=218 ctermbg=234 cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#ffffff guibg=#606060 guisp=#606060 gui=NONE ctermfg=15 ctermbg=59 cterm=NONE
hi MoreMsg guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold ctermfg=15 ctermbg=234 cterm=bold
"hi SpellCap -- no settings --
hi VertSplit guifg=#ffffff guibg=#404040 guisp=#404040 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi Exception guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi Keyword guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi Type guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi DiffChange guifg=#ffffff guibg=#46008b guisp=#46008b gui=NONE ctermfg=15 ctermbg=54 cterm=NONE
hi Cursor guifg=#ffffff guibg=#d9ff00 guisp=#d9ff00 gui=NONE ctermfg=15 ctermbg=190 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#ff972f guibg=#202020 guisp=#202020 gui=NONE ctermfg=208 ctermbg=234 cterm=NONE
hi PMenu guifg=#ffffff guibg=#909090 guisp=#909090 gui=NONE ctermfg=15 ctermbg=246 cterm=NONE
hi SpecialKey guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi Constant guifg=#81ffa7 guibg=#202020 guisp=#202020 gui=NONE ctermfg=121 ctermbg=234 cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#f9ff89 guibg=#202020 guisp=#202020 gui=NONE ctermfg=228 ctermbg=234 cterm=NONE
hi String guifg=#81ffa7 guibg=#202020 guisp=#202020 gui=NONE ctermfg=121 ctermbg=234 cterm=NONE
hi PMenuThumb guifg=#ffffff guibg=#d0d0d0 guisp=#d0d0d0 gui=NONE ctermfg=15 ctermbg=252 cterm=NONE
hi MatchParen guifg=NONE guibg=#00468b guisp=#00468b gui=NONE ctermfg=NONE ctermbg=24 cterm=NONE
"hi LocalVariable -- no settings --
hi Repeat guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#1e1eff guibg=#202020 guisp=#202020 gui=NONE ctermfg=21 ctermbg=234 cterm=NONE
hi Structure guifg=#ffdd81 guibg=#202020 guisp=#202020 gui=bold ctermfg=222 ctermbg=234 cterm=bold
hi Macro guifg=#ffbee1 guibg=#202020 guisp=#202020 gui=NONE ctermfg=218 ctermbg=234 cterm=NONE
hi Underlined guifg=#0022ff guibg=#202020 guisp=#202020 gui=underline ctermfg=21 ctermbg=234 cterm=underline
hi DiffAdd guifg=#ffffff guibg=#008b46 guisp=#008b46 gui=NONE ctermfg=15 ctermbg=29 cterm=NONE
hi TabLine guifg=#ffffff guibg=#6e6e6e guisp=#6e6e6e gui=underline ctermfg=15 ctermbg=242 cterm=underline
hi cursorim guifg=#ffffff guibg=#c58bff guisp=#c58bff gui=NONE ctermfg=15 ctermbg=141 cterm=NONE
"hi clear -- no settings --
hi mbenormal guifg=#feffd4 guibg=#372e3f guisp=#372e3f gui=NONE ctermfg=230 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#ff9de2 guibg=#404040 guisp=#404040 gui=NONE ctermfg=212 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#f6ff91 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#ffffff guibg=#372e3f guisp=#372e3f gui=NONE ctermfg=15 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#ffffff guibg=#6e4e8f guisp=#6e4e8f gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#f6ff91 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#f6ff91 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#f6ff91 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#ff9de2 guibg=#404040 guisp=#404040 gui=NONE ctermfg=212 ctermbg=238 cterm=NONE
hi cformat guifg=#ff9de2 guibg=#404040 guisp=#404040 gui=NONE ctermfg=212 ctermbg=238 cterm=NONE
hi lcursor guifg=#ffffff guibg=#00e774 guisp=#00e774 gui=NONE ctermfg=15 ctermbg=41 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#fbff10 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#b889ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fffc60 guibg=NONE guisp=NONE gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#fffffc guibg=#6e4e8f guisp=#6e4e8f gui=NONE ctermfg=230 ctermbg=60 cterm=NONE
hi user2 guifg=#d8b1ff guibg=#4d3e5e guisp=#4d3e5e gui=NONE ctermfg=183 ctermbg=59 cterm=NONE
hi user1 guifg=#00f2ff guibg=#4d3e5e guisp=#4d3e5e gui=NONE ctermfg=14 ctermbg=59 cterm=NONE
hi doxygenspecialonelinedesc guifg=#fbff10 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#e0ff2f guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#ff9de2 guibg=#404040 guisp=#404040 gui=NONE ctermfg=212 ctermbg=238 cterm=NONE
hi stringdelimiter guifg=#8eff7f guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#ff002b guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi string guifg=#aeff9c guibg=NONE guisp=NONE gui=NONE ctermfg=157 ctermbg=NONE cterm=NONE
hi constant guifg=#ffd45e guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi normal guifg=#f4ffe8 guibg=#151515 guisp=#151515 gui=NONE ctermfg=230 ctermbg=233 cterm=NONE
hi rubyinstancevariable guifg=#eab6ff guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#707eff guibg=NONE guisp=NONE gui=NONE ctermfg=12 ctermbg=NONE cterm=NONE
hi identifier guifg=#f3c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=225 ctermbg=NONE cterm=NONE
hi comment guifg=#ffffff guibg=NONE guisp=NONE gui=italic ctermfg=15 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#ff00a6 guibg=NONE guisp=NONE gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#ff0033 guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#ff8860 guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi function guifg=#e9ff7c guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi directory guifg=#d9ff9c guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#9e8dff guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#a097ff guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#eab6ff guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi condtional guifg=#8ec7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#ffffff guibg=#202020 guisp=#202020 gui=italic ctermfg=15 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold,italic,underline ctermfg=15 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold,italic ctermfg=15 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#ffffff guibg=#202020 guisp=#202020 gui=italic,underline ctermfg=15 ctermbg=234 cterm=underline
hi htmlbold guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold ctermfg=15 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#ffffff guibg=#202020 guisp=#202020 gui=bold,underline ctermfg=15 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#ffffff guibg=#202020 guisp=#202020 gui=underline ctermfg=15 ctermbg=234 cterm=underline
"hi default -- no settings --
hi pythonimport guifg=#00ff80 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#ff8000 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#00ff80 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#d1c6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#00ff80 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE