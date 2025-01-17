" Name:         Austere
" Description:  An austere colorscheme for vim
" Author:       Gil Goncalves @lurst
" Maintainer:   Gil Goncalves @lurst
" Website:      https://github.com/LuRsT/austere.vim
" License:      MIT License
" Last Updated: Fri 29 Mar 2019 12:16:06 GMT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Austere] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'austere'

" Highlight helper function
function! s:HL(item, fgColor, bgColor, style)
    let command  = 'hi ' . a:item
    let command .= ' ' . 'gui' . 'fg=' . a:fgColor
    let command .= ' ' . 'gui' . 'bg=' . a:bgColor
    let command .= ' ' . 'gui' . '=' . a:style
    execute command
endfunction

let s:lime   = "#ffb700"
let s:light  = "#f2f2f2"
let s:blue1  = "#82cfff"
let s:blue   = "#78a9ff"
let s:green  = "#449d5d"
let s:purple = "#BE95FF"

if !has('gui_running') && get(g:, 'dark_transp_bg', 0)
  hi Normal ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=fg ctermbg=233 guifg=fg guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CursorLine      ctermfg=White        ctermbg=Black    cterm=NONE    guifg=NONE    guibg=#0D0D0D    gui=NONE
hi LineNr          ctermfg=DarkGray     ctermbg=Black    cterm=NONE    guifg=#404040    guibg=#0D0D0D    gui=NONE
hi CursorLineNr ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=222 ctermbg=233 guifg=#f0c674 guibg=#101010 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=250 ctermbg=235 guifg=#b9b9b9 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=250 ctermbg=235 guifg=#b9b9b9 guibg=#252525 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi MatchParen ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
" hi MatchParen ctermfg=250 ctermbg=233 guifg=#ffffff guibg=#000000 guisp=NONE cterm=bold term=bold gui=underline
" hi MatchParen ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=254 ctermbg=NONE guifg=#e3e3e3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu guifg=#ebebeb guibg=#141414 gui=NONE cterm=NONE
hi PmenuSbar guifg=#ebebeb guibg=#141414 gui=NONE cterm=NONE
hi PmenuSel guifg=#ebebeb guibg=#141414 gui=reverse cterm=reverse
hi PmenuThumb guifg=#ebebeb guibg=#141414 gui=NONE cterm=NONE
hi Question ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=254 ctermbg=233 guifg=#e3e3e3 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=#ce5252 cterm=NONE gui=NONE
hi SpellCap ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=#5f819d cterm=NONE gui=NONE
hi SpellLocal ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=#7c7c7c cterm=NONE gui=NONE
hi SpellRare ctermfg=254 ctermbg=233 guifg=#e3e3e3 guibg=#101010 guisp=#e3e3e3 cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
" hi StatusLineNC ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
" hi! link StatusLineTerm StatusLine
" hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=244 ctermbg=233 guifg=#7c7c7c guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=233 ctermbg=233 guifg=#101010 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=250 ctermbg=235 guifg=#b9b9b9 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=250 ctermbg=235 guifg=#b9b9b9 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=244 ctermbg=NONE guifg=#7c7c7c guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=245 ctermbg=NONE guifg=#8e8e8e guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=245 ctermbg=NONE guifg=#8e8e8e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=245 ctermbg=NONE guifg=#8e8e8e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=250 ctermbg=NONE guifg=#b9b9b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=245 ctermbg=NONE guifg=#8e8e8e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=233 guifg=NONE guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffAdded ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=167 ctermbg=233 guifg=#ce5252 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CtrlPPrtText ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CtrlPMatch ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CtrlPPrtBase ctermfg=100 ctermbg=233 guifg=#8c9440 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CtrlPLinePre ctermfg=222 ctermbg=233 guifg=#f0c674 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi CtrlPPrtCursor ctermfg=222 ctermbg=233 guifg=#f0c674 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi mkdItalic ctermfg=245 ctermbg=233 guifg=#8e8e8e guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi mkdCode ctermfg=245 ctermbg=233 guifg=#8e8e8e guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi mkdSnippetSH ctermfg=245 ctermbg=233 guifg=#8e8e8e guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi NERDTreeFile ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi NERDTreeExecFile ctermfg=250 ctermbg=233 guifg=#b9b9b9 guibg=#101010 guisp=NONE cterm=NONE gui=NONE
hi pythonStatement ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonConditional ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonRepeat ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonOperator ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonException ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonAsync ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi pythonEscape ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
" hi pythonBuiltin ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
" hi pythonFunction ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cSpecial ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cStatement ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cppStatement ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cConditional ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cppConditional ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cRepeat ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cOperator ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi cppOperator ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rustConditional ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rustTypedef ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rustRepeat ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rustOperator ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
" hi rustKeyword ctermfg=231 ctermbg=233 guifg=#f7f7f7 guibg=#101010 guisp=NONE cterm=NONE,bold gui=NONE,bold
" hi ALEVirtualTextError ctermfg=167 ctermbg=235 guifg=#ce5252 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
" hi ALEVirtualTextWarning ctermfg=222 ctermbg=235 guifg=#f0c674 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
" hi ALEVirtualTextInfo ctermfg=67 ctermbg=235 guifg=#5f819d guibg=#252525 guisp=NONE cterm=NONE gui=NONE
" hi ALEVirtualTextStyleError ctermfg=167 ctermbg=235 guifg=#ce5252 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
" hi ALEVirtualTextStyleWarning ctermfg=222 ctermbg=235 guifg=#f0c674 guibg=#252525 guisp=NONE cterm=NONE gui=NONE
hi HighlightedyankRegion ctermfg=231 ctermbg=254 guifg=#f7f7f7 guibg=#e3e3e3 guisp=NONE cterm=NONE gui=NONE

hi MatchParen guifg=#ffb700 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold

call s:HL('String'      , s:blue , 'NONE' , 'NONE' )
call s:HL('Number'      , s:blue , 'NONE' , 'NONE' )
call s:HL('Boolean'     , s:blue , 'NONE' , 'NONE' )
call s:HL('Float'       , s:blue , 'NONE' , 'NONE' )
call s:HL('Constant'    , s:blue , 'NONE' , 'NONE' )
call s:HL('Character'   , s:blue , 'NONE' , 'NONE' )
call s:HL('SpecialChar' , s:blue , 'NONE' , 'NONE' )

call s:HL('Title'       , s:blue , 'NONE' , 'NONE' )
call s:HL('Todo'        , s:blue , 'NONE' , 'NONE' )

call s:HL('Function'     , '#b9b9b9', 'NONE', 'BOLD' )
call s:HL('Type'         , s:blue, 'NONE', 'NONE' )
" call s:HL('Typedef'      , s:light, 'NONE', 'NONE' )
" call s:HL('StorageClass' , s:light, 'NONE', 'NONE' )
" call s:HL('Structure'    , s:blue, 'NONE', 'NONE' )

" Lightline theme (from powerlineish)
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ ['white', 'gray2', 'bold'], ['white', 'gray0'] ]
let s:p.normal.right = [ ['gray10', 'gray2'], ['white', 'gray1'], ['white', 'gray0'] ]
let s:p.inactive.right = [ ['gray1', 'gray5'], ['gray4', 'gray1'], ['gray4', 'gray0'] ]
let s:p.inactive.left = s:p.inactive.right[1:]
let s:p.insert.left = [ ['darkestcyan', 'white', 'bold'], ['mediumcyan', 'darkestblue'] ]
let s:p.insert.right = [ [ 'darkestblue', 'mediumcyan' ], [ 'mediumcyan', 'darkblue' ], [ 'mediumcyan', 'darkestblue' ] ]
let s:p.replace.left = [ ['white', 'brightred', 'bold'], ['white', 'gray0'] ]
let s:p.visual.left = [ ['black', 'brightestorange', 'bold'], ['white', 'gray0'] ]
let s:p.normal.middle = [ [ 'white', 'gray0' ] ]
let s:p.insert.middle = [ [ 'mediumcyan', 'darkestblue' ] ]
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = s:p.normal.right
let s:p.tabline.left = [ [ 'gray9', 'gray0' ] ]
let s:p.tabline.tabsel = [ [ 'gray9', 'gray2' ] ]
let s:p.tabline.middle = [ [ 'gray2', 'gray0' ] ]
let s:p.tabline.right = [ [ 'gray9', 'gray1' ] ]
let s:p.normal.error = [ [ 'gray9', 'brightestred' ] ]
let s:p.normal.warning = [ [ 'gray1', 'yellow' ] ]

let g:lightline#colorscheme#austere#palette = lightline#colorscheme#fill(s:p)

finish