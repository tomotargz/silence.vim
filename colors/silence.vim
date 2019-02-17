hi clear

if exists('syntax_on')
 syntax reset
endif

let g:colors_name = 'silence'

" todo gui
let s:pallet = {
\ "none" : { "gui": "NONE", "cterm": "NONE"},
\ "black" : { "gui": "#000000", "cterm": "16"},
\ "deepgray" : { "gui": "#262626", "cterm": "234"},
\ "darkgray" : { "gui": "#303030", "cterm": "238"},
\ "gray" : { "gui": "#8a8a8a", "cterm": "242"},
\ "lightgray" : { "gui": "#a8a8a8", "cterm": "245"},
\ "white" : { "gui": "#eeeeee", "cterm": "255"},
\ "magenda" : { "gui": "#ff0087", "cterm": "219"},
\ "perple" : { "gui": "#5f5fd7", "cterm": "62"},
\ "blue" : { "gui": "#005fff", "cterm": "68"},
\ "cyan" : { "gui": "#00afd7", "cterm": "38"},
\ "green" : { "gui": "#00af5f", "cterm": "28"},
\ "yellow" : { "gui": "#ffd700", "cterm": "184"},
\ "orange" : { "gui": "#ffaf00", "cterm": "214"},
\ "red" : { "gui": "#af0000", "cterm": "160"},
\ }

function! s:apply(group, fg, bg, attr, sp)
    let l:hi = "hi ".a:group.
                \" guifg=".s:pallet[a:fg].gui.
                \" guibg=".s:pallet[a:bg].gui.
                \" guisp=".s:pallet[a:sp].gui.
                \" gui=".a:attr.
                \" ctermfg=".s:pallet[a:fg].cterm.
                \" ctermbg=".s:pallet[a:bg].cterm.
                \" cterm=".a:attr
    execute l:hi
endfun

let s:colorGroups = [
            \["Normal", "white", "black", "none", "none"],
            \["Constant", "white", "black", "none", "none"],
            \["String", "white", "black", "none", "none"],
            \["Character", "white", "black", "none", "none"],
            \["Identifier", "white", "black", "none", "none"],
            \["Statement", "white", "black", "none", "none"],
            \["PreProc", "white", "black", "none", "none"],
            \["Type", "white", "black", "none", "none"],
            \["Special", "white", "black", "none", "none"],
            \["Ignore", "white", "black", "none", "none"],
            \["Directory", "white", "black", "none", "none"],
            \["Folded", "white", "black", "none", "none"],
            \["TabLineSel", "white", "black", "none", "none"],
            \["Title", "white", "black", "none", "none"],
            \["TabLine", "white", "black", "none", "none"],
            \["TabLineFill", "white", "black", "none", "none"],
            \["ErrorMsg", "white", "black", "none", "none"],
            \["SignColumn", "white", "black", "none", "none"],
            \["WarningMsg", "white", "black", "none", "none"],
            \["FoldColumn", "white", "black", "none", "none"],
            \["Error", "red", "black", "none", "none"],
            \["DiffDelete", "red", "black", "none", "none"],
            \["Todo", "yellow", "black", "none", "none"],
            \["SpellBad", "none", "none", "underline", "none"],
            \["SpellCap", "none", "none", "underline", "none"],
            \["TabLineSel", "none", "none", "underline", "none"],
            \["Underlined", "none", "none", "underline", "none"],
            \["DiffAdd", "green", "black", "none", "none"],
            \["DiffChange", "green", "black", "none", "none"],
            \["DiffText", "green", "deepgray", "none", "none"],
            \["MatchParen", "none", "blue", "none", "none"],
            \["Comment", "lightgray", "black", "none", "none"],
            \["LineNr", "gray", "black", "none", "none"],
            \["CursorLineNr", "gray", "black", "none", "none"],
            \["VertSplit", "gray", "black", "none", "none"],
            \["SpecialKey", "gray", "black", "none", "none"],
            \["Visual", "none", "deepgray", "none", "none"],
            \["ColorColumn", "none", "darkgray", "none", "none"],
            \["CursorLine", "none", "darkgray", "none", "none"],
            \["StatusLineNC", "darkgray", "white", "none", "none"],
            \["Pmenu", "black", "white", "none", "none"],
            \["PmenuSbar", "black", "white", "none", "none"],
            \["PmenuThumb", "black", "white", "none", "none"],
            \["StatusLine", "black", "white", "none", "none"],
            \["IncSearch", "black", "yellow", "none", "none"],
            \["Search", "black", "yellow", "none", "none"],
            \["PmenuSel", "black", "magenda", "none", "none"],
            \["NonText", "black", "black", "none", "none"],
            \["QuickFixLine", "none", "none", "none", "none"],
            \]

for colorGroup in s:colorGroups
    call s:apply(colorGroup[0], colorGroup[1], colorGroup[2], colorGroup[3], colorGroup[4])
endfor

set background=dark
