" vim: set foldmethod=marker foldlevel=0:
" Name: badwolf_flattened
" Author: Austin Smith <AssailantLF@gmail.com>
" Bad Wolf Original: http://stevelosh.com/projects/badwolf/
" Flattened Idea Inspiration: https://github.com/romainl/flattened/

" Explanation: {{{
" This colorscheme was made by Steve Losh.  I 'flattened' the original into
" what you see here, because it was over 800 lines, and it used some neat
" functions to make the colorscheme easier to create and modify.  I simply
" echo'd the output of those functions into a register, and pasted that into
" this file.  So there should be no visible differences at all between this
" and the original.
"                      ...unless he updates it...
"
" I'm really happy with Bad Wolf, and don't plan on modifying it, so I'd rather
" just have this minimal, flattened version to keep in my dotfiles. }}}

" LICENSE: {{{
" Copyright (C) 2012 Steve Losh and Contributors
"
" Permission is hereby granted, free of charge, to any person obtaining a copy of
" this software and associated documentation files (the "Software"), to deal in
" the Software without restriction, including without limitation the rights to
" use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
" the Software, and to permit persons to whom the Software is furnished to do so,
" subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
" FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
" COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
" IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
" CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. }}}

" Preamble {{{
" needs at least 256 colors (hopefully...)
if !&t_Co >= 256 && !has("gui_running")
  finish
endif

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "badwolf_flattened"
" }}}

" General/UI {{{
hi Normal guifg=#f8f6f2 ctermfg=15 guibg=#1c1b1a ctermbg=233
hi Folded guifg=#666462 ctermfg=241 guibg=bg ctermbg=bg gui=none cterm=none
hi VertSplit guifg=#998f84 ctermfg=245 guibg=bg ctermbg=bg gui=none cterm=none
hi CursorLine guibg=#242321 ctermbg=235 gui=none cterm=none
hi CursorColumn guibg=#242321 ctermbg=235
hi ColorColumn guibg=#242321 ctermbg=235
hi TabLine guifg=#f8f6f2 ctermfg=15 guibg=#1c1b1a ctermbg=233 gui=none cterm=none
hi TabLineFill guifg=#f8f6f2 ctermfg=15 guibg=#1c1b1a ctermbg=233 gui=none cterm=none
hi TabLineSel guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=none cterm=none
hi MatchParen guifg=#fade3e ctermfg=221 guibg=#242321 ctermbg=235 gui=bold cterm=bold
hi NonText guifg=#45413b ctermfg=238 guibg=bg ctermbg=bg
hi SpecialKey guifg=#45413b ctermfg=238 guibg=bg ctermbg=bg
hi Visual guibg=#45413b ctermbg=238
hi VisualNOS guibg=#45413b ctermbg=238
hi Search guifg=#000000 ctermfg=16 guibg=#fade3e ctermbg=221 gui=bold cterm=bold
hi IncSearch guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi Underlined guifg=fg ctermfg=fg gui=underline cterm=underline
hi StatusLine guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi StatusLineNC guifg=#ffffff ctermfg=15 guibg=#45413b ctermbg=238 gui=bold cterm=bold
hi Directory guifg=#f4cf86 ctermfg=222 gui=bold cterm=bold
hi Title guifg=#aeee00 ctermfg=154
hi ErrorMsg guifg=#ff2c4b ctermfg=196 guibg=bg ctermbg=bg gui=bold cterm=bold
hi MoreMsg guifg=#fade3e ctermfg=221 gui=bold cterm=bold
hi ModeMsg guifg=#f4cf86 ctermfg=222 gui=bold cterm=bold
hi Question guifg=#f4cf86 ctermfg=222 gui=bold cterm=bold
hi WarningMsg guifg=#ff9eb8 ctermfg=211 gui=bold cterm=bold
hi Tag gui=bold cterm=bold
" }}}

" Gutter {{{
hi LineNr guifg=#666462 ctermfg=241 guibg=#141413 ctermbg=232
hi SignColumn guibg=#141413 ctermbg=232
hi FoldColumn guifg=#666462 ctermfg=241 guibg=#141413 ctermbg=232
" }}}

" Cursor {{{
hi Cursor guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi vCursor guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi iCursor guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=none cterm=none
" }}}

" Syntax Highlighting {{{
hi Special guifg=#f8f6f2 ctermfg=15
hi Comment guifg=#857f78 ctermfg=243
hi Todo guifg=#ffffff ctermfg=15 guibg=bg ctermbg=bg gui=bold cterm=bold
hi SpecialComment guifg=#ffffff ctermfg=15 guibg=bg ctermbg=bg gui=bold cterm=bold
hi String guifg=#f4cf86 ctermfg=222
hi Statement guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi Keyword guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi Conditional guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi Operator guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi Label guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi Repeat guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi Identifier guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi Function guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi PreProc guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi Macro guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi Define guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi PreCondit guifg=#aeee00 ctermfg=154 gui=bold cterm=bold
hi Constant guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi Character guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi Boolean guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi Number guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi Float guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi SpecialChar guifg=#ff9eb8 ctermfg=211 gui=bold cterm=bold
hi Type guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi StorageClass guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi Structure guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi Typedef guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi Exception guifg=#aeee00 ctermfg=154 gui=bold cterm=bold
hi Error guifg=#ffffff ctermfg=15 guibg=#ff2c4b ctermbg=196 gui=bold cterm=bold
hi Debug guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi Ignore guifg=#857f78 ctermfg=243
" }}}

" Completion Menu {{{
hi Pmenu guifg=#f8f6f2 ctermfg=15 guibg=#35322d ctermbg=236
hi PmenuSel guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi PmenuSbar guibg=#35322d ctermbg=236
hi PmenuThumb guifg=#d9cec3 ctermfg=252
" }}}

" Diffs {{{
hi DiffDelete guifg=#000000 ctermfg=16 guibg=#000000 ctermbg=16
hi DiffAdd guibg=#35322d ctermbg=236
hi DiffChange guibg=#242321 ctermbg=235
hi DiffText guifg=#ffffff ctermfg=15 guibg=#35322d ctermbg=236 gui=bold cterm=bold
" }}}

" Spelling {{{
hi SpellCap guifg=#fade3e ctermfg=221 guibg=bg ctermbg=bg gui=undercurl,bold cterm=undercurl,bold guisp=#fade3e
hi SpellBad guibg=bg ctermbg=bg gui=undercurl cterm=undercurl guisp=#fade3e
hi SpellLocal gui=undercurl cterm=undercurl guisp=#fade3e
hi SpellRare gui=undercurl cterm=undercurl guisp=#fade3e
" }}}

" Plugins {{{
hi CtrlPNoEntries guifg=#ffffff ctermfg=15 guibg=#ff2c4b ctermbg=196 gui=bold cterm=bold
hi CtrlPMatch guifg=#ffa724 ctermfg=214 guibg=bg ctermbg=bg gui=none cterm=none
hi CtrlPLinePre guifg=#45413b ctermfg=238 guibg=bg ctermbg=bg gui=none cterm=none
hi CtrlPPrtBase guifg=#45413b ctermfg=238 guibg=bg ctermbg=bg gui=none cterm=none
hi CtrlPPrtText guifg=#f8f6f2 ctermfg=15 guibg=bg ctermbg=bg gui=none cterm=none
hi CtrlPPrtCursor guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi CtrlPMode1 guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi CtrlPMode2 guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi CtrlPStats guifg=#000000 ctermfg=16 guibg=#0a9dff ctermbg=39 gui=bold cterm=bold
hi EasyMotionTarget guifg=#0a9dff ctermfg=39 guibg=bg ctermbg=bg gui=bold cterm=bold
hi EasyMotionShade guifg=#45413b ctermfg=238 guibg=bg ctermbg=bg
hi InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=196
hi level16c guifg=#666462 ctermfg=241 gui=bold cterm=bold
hi level15c guifg=#fade3e ctermfg=221
hi level14c guifg=#ff9eb8 ctermfg=211
hi level13c guifg=#ffa724 ctermfg=214
hi level12c guifg=#0a9dff ctermfg=39
hi level11c guifg=#aeee00 ctermfg=154
hi level10c guifg=#b88853 ctermfg=137
hi level9c guifg=#8cffba ctermfg=121
hi level8c guifg=#c7915b ctermfg=173
hi level7c guifg=#fade3e ctermfg=221
hi level6c guifg=#ff9eb8 ctermfg=211
hi level5c guifg=#ffa724 ctermfg=214
hi level4c guifg=#0a9dff ctermfg=39
hi level3c guifg=#aeee00 ctermfg=154
hi level2c guifg=#b88853 ctermfg=137
hi level1c guifg=#8cffba ctermfg=121
hi ShowMarksHLl guifg=#0a9dff ctermfg=39 guibg=#1c1b1a ctermbg=233
hi ShowMarksHLu guifg=#0a9dff ctermfg=39 guibg=#1c1b1a ctermbg=233
hi ShowMarksHLo guifg=#0a9dff ctermfg=39 guibg=#1c1b1a ctermbg=233
hi ShowMarksHLm guifg=#0a9dff ctermfg=39 guibg=#1c1b1a ctermbg=233
" }}}

" Filetype-specific {{{
hi clojureSpecial guifg=#ff2c4b ctermfg=196
hi clojureDefn guifg=#ff2c4b ctermfg=196
hi clojureDefMacro guifg=#ff2c4b ctermfg=196
hi clojureDefine guifg=#ff2c4b ctermfg=196
hi clojureMacro guifg=#ff2c4b ctermfg=196
hi clojureCond guifg=#ff2c4b ctermfg=196
hi clojureKeyword guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi clojureFunc guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi clojureRepeat guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi clojureParen0 guifg=#998f84 ctermfg=245 gui=none cterm=none
hi clojureAnonArg guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi cssColorProp guifg=fg ctermfg=fg gui=none cterm=none
hi cssBoxProp guifg=fg ctermfg=fg gui=none cterm=none
hi cssTextProp guifg=fg ctermfg=fg gui=none cterm=none
hi cssRenderProp guifg=fg ctermfg=fg gui=none cterm=none
hi cssGeneratedContentProp guifg=fg ctermfg=fg gui=none cterm=none
hi cssValueLength guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi cssColor guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi cssBraces guifg=#998f84 ctermfg=245 gui=none cterm=none
hi cssIdentifier guifg=#ffa724 ctermfg=214 gui=bold cterm=bold
hi cssClassName guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi gitDiff guifg=#998f84 ctermfg=245
hi diffRemoved guifg=#ff9eb8 ctermfg=211
hi diffAdded guifg=#aeee00 ctermfg=154
hi diffFile guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=196 gui=bold cterm=bold
hi diffNewFile guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=196 gui=bold cterm=bold
hi diffLine guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214 gui=bold cterm=bold
hi diffSubname guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi djangoArgument guifg=#f4cf86 ctermfg=222
hi djangoTagBlock guifg=#ffa724 ctermfg=214
hi djangoVarBlock guifg=#ffa724 ctermfg=214
hi htmlTag guifg=#88633f ctermfg=95 guibg=bg ctermbg=bg gui=none cterm=none
hi htmlEndTag guifg=#88633f ctermfg=95 guibg=bg ctermbg=bg gui=none cterm=none
hi htmlTagName guifg=#c7915b ctermfg=173 gui=bold cterm=bold
hi htmlSpecialTagName guifg=#c7915b ctermfg=173 gui=bold cterm=bold
hi htmlSpecialChar guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi htmlArg guifg=#c7915b ctermfg=173 gui=none cterm=none
hi htmlLink guifg=#998f84 ctermfg=245 gui=underline cterm=underline
hi javaClassDecl guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi javaScopeDecl guifg=#ff2c4b ctermfg=196 gui=bold cterm=bold
hi javaCommentTitle guifg=#857f78 ctermfg=243
hi javaDocTags guifg=#ffffff ctermfg=15 gui=none cterm=none
hi javaDocParam guifg=#fade3e ctermfg=221
hi texStatement guifg=#0a9dff ctermfg=39 gui=none cterm=none
hi texMathZoneX guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneA guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneB guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneC guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneD guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneE guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneV guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathZoneX guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMath guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texMathMatcher guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texRefLabel guifg=#f4cf86 ctermfg=222 gui=none cterm=none
hi texRefZone guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi texComment guifg=#88633f ctermfg=95 gui=none cterm=none
hi texDelimiter guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi texZone guifg=#d9cec3 ctermfg=252 gui=none cterm=none
hi lessVariable guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi lispyscriptDefMacro guifg=#aeee00 ctermfg=154
hi lispyscriptRepeat guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi mailSubject guifg=#ffa724 ctermfg=214 gui=bold cterm=bold
hi mailHeader guifg=#998f84 ctermfg=245
hi mailHeaderKey guifg=#998f84 ctermfg=245
hi mailHeaderEmail guifg=#ffffff ctermfg=15
hi mailURL guifg=#b88853 ctermfg=137 gui=underline cterm=underline
hi mailSignature guifg=#857f78 ctermfg=243 gui=none cterm=none
hi mailQuoted1 guifg=#857f78 ctermfg=243 gui=none cterm=none
hi mailQuoted2 guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi mailQuoted3 guifg=#f4cf86 ctermfg=222 gui=none cterm=none
hi mailQuoted4 guifg=#ffa724 ctermfg=214 gui=none cterm=none
hi mailQuoted5 guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi markdownHeadingRule guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownHeadingDelimiter guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownOrderedListMarker guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownListMarker guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownItalic guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi markdownBold guifg=#ffffff ctermfg=15 gui=bold cterm=bold
hi markdownH1 guifg=#ffa724 ctermfg=214 gui=bold cterm=bold
hi markdownH2 guifg=#aeee00 ctermfg=154 gui=bold cterm=bold
hi markdownH3 guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi markdownH4 guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi markdownH5 guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi markdownH6 guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi markdownLinkText guifg=#b88853 ctermfg=137 gui=underline cterm=underline
hi markdownIdDeclaration guifg=#b88853 ctermfg=137
hi markdownAutomaticLink guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi markdownUrl guifg=#b88853 ctermfg=137 gui=bold cterm=bold
hi markdownUrldelimiter guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownLinkDelimiter guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownLinkTextDelimiter guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi markdownCodeDelimiter guifg=#f4cf86 ctermfg=222 gui=bold cterm=bold
hi markdownCode guifg=#f4cf86 ctermfg=222 gui=none cterm=none
hi markdownCodeBlock guifg=#f4cf86 ctermfg=222 gui=none cterm=none
hi mysqlSpecial guifg=#ff9eb8 ctermfg=211 gui=bold cterm=bold
hi pythonBuiltin guifg=#ff9eb8 ctermfg=211
hi pythonBuiltinObj guifg=#ff9eb8 ctermfg=211
hi pythonBuiltinFunc guifg=#ff9eb8 ctermfg=211
hi pythonEscape guifg=#ff9eb8 ctermfg=211
hi pythonException guifg=#aeee00 ctermfg=154 gui=bold cterm=bold
hi pythonExceptions guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi pythonPrecondit guifg=#aeee00 ctermfg=154 gui=none cterm=none
hi pythonDecorator guifg=#ff2c4b ctermfg=196 gui=none cterm=none
hi pythonRun guifg=#857f78 ctermfg=243 gui=bold cterm=bold
hi pythonCoding guifg=#857f78 ctermfg=243 gui=bold cterm=bold
hi hlLevel0 guifg=#857f78 ctermfg=243
hi hlLevel1 guifg=#ffa724 ctermfg=214
hi hlLevel2 guifg=#8cffba ctermfg=121
hi hlLevel3 guifg=#ff9eb8 ctermfg=211
hi hlLevel4 guifg=#c7915b ctermfg=173
hi hlLevel5 guifg=#f4cf86 ctermfg=222
hi hlLevel6 guifg=#ffa724 ctermfg=214
hi hlLevel7 guifg=#8cffba ctermfg=121
hi hlLevel8 guifg=#ff9eb8 ctermfg=211
hi hlLevel9 guifg=#c7915b ctermfg=173
hi VimCommentTitle guifg=#998f84 ctermfg=245 gui=bold cterm=bold
hi VimMapMod guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi VimMapModKey guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi VimNotation guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
hi VimBracket guifg=#ff9eb8 ctermfg=211 gui=none cterm=none
" }}}
