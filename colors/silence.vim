hi clear

if exists('syntax_on')
 syntax reset
endif

let g:colors_name = 'silence'

" todo gui
let s:pallet = {
\ "none" : { "gui": "NONE", "cterm": "NONE"},
\ "black" : { "gui": "#000000", "cterm": "16"},
\ "deepgray" : { "gui": "#1c1c1c", "cterm": "234"},
\ "darkgray" : { "gui": "#444444", "cterm": "238"},
\ "gray" : { "gui": "#585858", "cterm": "240"},
\ "lightgray" : { "gui": "#767676", "cterm": "243"},
\ "white" : { "gui": "#eeeeee", "cterm": "255"},
\ "magenda" : { "gui": "#ffafff", "cterm": "219"},
\ "pink" : { "gui": "#ff5faf", "cterm": "205"},
\ "cyan" : { "gui": "#00afd7", "cterm": "38"},
\ "green" : { "gui": "#008700", "cterm": "28"},
\ "yellow" : { "gui": "#d7d700", "cterm": "184"},
\ "orange" : { "gui": "#ffaf00", "cterm": "214"},
\ "red" : { "gui": "#d70000", "cterm": "160"},
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
            \["Constant", "pink", "black", "none", "none"],
            \["String", "pink", "black", "none", "none"],
            \["Character", "pink", "black", "none", "none"],
            \["Identifier", "white", "black", "none", "none"],
            \["Statement", "cyan", "black", "none", "none"],
            \["PreProc", "cyan", "black", "none", "none"],
            \["Type", "orange", "black", "none", "none"],
            \["Special", "white", "black", "none", "none"],
            \["Ignore", "white", "black", "none", "none"],
            \["Directory", "white", "black", "none", "none"],
            \["Folded", "white", "black", "none", "none"],
            \["TabLineSel", "white", "black", "none", "none"],
            \["Title", "orange", "black", "none", "none"],
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
            \["MatchParen", "none", "none", "underline", "none"],
            \["Comment", "lightgray", "black", "none", "none"],
            \["LineNr", "gray", "black", "none", "none"],
            \["CursorLineNr", "gray", "black", "none", "none"],
            \["VertSplit", "gray", "black", "none", "none"],
            \["SpecialKey", "gray", "black", "none", "none"],
            \["Visual", "none", "darkgray", "none", "none"],
            \["ColorColumn", "none", "darkgray", "none", "none"],
            \["CursorLine", "none", "darkgray", "none", "none"],
            \["StatusLine", "black", "white", "none", "none"],
            \["StatusLineNC", "deepgray", "white", "none", "none"],
            \["Pmenu", "black", "white", "none", "none"],
            \["PmenuSbar", "black", "white", "none", "none"],
            \["PmenuThumb", "black", "white", "none", "none"],
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
