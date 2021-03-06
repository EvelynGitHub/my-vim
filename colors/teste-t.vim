
if !(&t_Co == 256 || has('gui_running'))
  finish
endif

" Init
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="brave-purple"
set background=dark

highlight clear CursorLine
highlight clear CursorLineNR
highlight clear LineNR

" Defino as variáveis
let s:bg="235"
let s:bg2="233"
let s:fc="238"

"gui    =Define uma propriedade ao Grupo (como bold, underline,reverse, italic, none)
"guifg  =Cor do primeiro plano quando se usa interface GUI
"guibg  =Cor de Fundo quando se usa interface GUI
"cterm  =Define uma propriedade ao Grupo (como bold, underline,reverse, italic, none)
"ctermfg=Cor do primeiro plano quando se usa um terminal externo
"ctermbg=Cor de Fundo quando se usa um terminal externo


" General Colors
" Normal = Cor do Terminal em si (o que não foi definido em outro lugar)
exe 'hi Normal       guifg=#FFFFFF   guibg=NONE      ctermfg=11    ctermbg='s:bg'       gui=none      cterm=none'
" Comment = Cor da fonte e Fundo do comentário
exe 'hi Comment      guifg=#8a8a8a   guibg=NONE      ctermfg='s:fc'    ctermbg=NONE      gui=none      cterm=none'
" Constant = Cor do texto entre aspas
exe 'hi Constant     guifg=#d7d7af   guibg=NONE      ctermfg=10     ctermbg=NONE      gui=none      cterm=none'
" Identifer = Cor das funções da linguagem e variáveis
exe 'hi Identifier   guifg=#afd7d7   guibg=NONE      ctermfg=7     ctermbg=NONE      gui=none      cterm=none'
" Statement = Cor de $, IF, ELSE, FOR, . !        etc
exe 'hi Statement    guifg=#87afd7   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none'
" PreProc =  Cor de 'echo', function, new
exe 'hi PreProc      guifg=#87afd7   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none'
" Type = Cor de class, public, tipo de variavel
exe 'hi Type         guifg=#BBA0FF   guibg=NONE      ctermfg=105    ctermbg=NONE      gui=none      cterm=none'
" Special = Cor de {}, (), []
exe 'hi Special      guifg=#d7d7af   guibg=NONE      ctermfg=15     ctermbg=NONE      gui=none      cterm=none'

" Text Markup
exe 'hi Underlined   guifg=fg        guibg=NONE      ctermfg=20     ctermbg=NONE      gui=underline cterm=underline'
" exe 'hi Error        guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none'
" Todo = 
" exe 'hi Todo         guifg=#d7d7af   guibg=NONE      ctermfg=20    ctermbg=NONE      gui=none      cterm=none'
" MatchParen = Cor do [], (), {} correspondente selecionado
exe 'hi MatchParen   guifg=fg        guibg=#5f8787   ctermfg=15     ctermbg=54        gui=none      cterm=bold'
" NonText = cor dos +++ que indicam quebra de linha
exe 'hi NonText      guifg=#585858   guibg=NONE      ctermfg=239    ctermbg=NONE      gui=none      cterm=none'
" exe 'hi SpecialKey   guifg=#585858   guibg=NONE      ctermfg=240    ctermbg=NONE      gui=none      cterm=none'
" Title = Cor de fundo e fonte de 2 na tab que indica quantas splits tem na tab
exe 'hi Title        guifg=#d7d7af   guibg=NONE      ctermfg='s:fc'    ctermbg=234      gui=none      cterm=none'

" Text Selection
exe 'hi Cursor       guifg=bg        guibg=fg        ctermfg=none     ctermbg=239        gui=none      cterm=none'
" exe 'hi CursorIM     guifg=bg        guibg=fg        ctermfg=bg     ctermbg=fg        gui=none      cterm=none'
" CursorColumn = cor da CULANA onde o cursor esta
exe 'hi CursorColumn guifg=NONE      guibg=#555555   ctermfg=NONE   ctermbg=NONE       gui=none      cterm=none'
" CursorLine = Cor da linha e fonte do local do cursor atualmente
exe 'hi CursorLine   guifg=NONE      guibg=#555555   ctermfg=NONE   ctermbg='s:bg2'       gui=none      cterm=none'
" Visual = Cor da seleção ao seleciar linhas ou palavra(s)
exe 'hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=234        gui=none      cterm=none'
" exe 'hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline'
" exe 'hi IncSearch    guifg=bg        guibg=#87d7ff   ctermfg=bg     ctermbg=123       gui=none      cterm=none'
exe 'hi Search       guifg=bg        guibg=#ffd787   ctermfg=16     ctermbg=15       gui=none      cterm=none'

" UI
" LineNr = Cor de fundo e Fonte dos numeros das linhas
exe 'hi LineNr       guifg=#555555   guibg=#000000   ctermfg='s:fc'    ctermbg='s:bg2'       gui=none      cterm=none'
" CursorLineNr = cor do numero da linha atual
exe 'hi CursorLineNr guifg=#afafaf   guibg=#444444   ctermfg='s:bg2'    ctermbg='s:fc'        gui=none      cterm=none'
" Pmenu.. = Cor da caixa de alto completar
exe 'hi Pmenu        guifg=#121212   guibg=#b2b2b2   ctermfg=247    ctermbg=237       gui=none      cterm=none'
exe 'hi PmenuSel     guifg=fg        guibg=#585858   ctermfg=15     ctermbg=239       gui=none      cterm=none'
exe 'hi PMenuSbar    guifg=#121212   guibg=#c6c6c6   ctermfg=15    ctermbg=16       gui=none      cterm=none'
exe 'hi PMenuThumb   guifg=fg        guibg=#767676   ctermfg=15     ctermbg=16       gui=none      cterm=none'
" StatusLine = Cor fundo e fonte de barra de Status (footer) de Split Ativa
exe 'hi StatusLine   guifg=#121212   guibg=#b2b2b2   ctermfg='s:fc'    ctermbg='s:bg2'       gui=none      cterm=none'
" StatusLineNC = Cor fundo e fonte de barra de Status (footer) de Split INATIVA
exe 'hi StatusLineNC guifg=#121212   guibg=#767676   ctermfg='s:bg'    ctermbg='s:bg'       gui=none      cterm=none'

" TabLine = Cor de fonte e fundo de Tab que não está em foco
exe 'hi TabLine      guifg=#121212   guibg=#b2b2b2   ctermfg='s:fc'    ctermbg=234       gui=none      cterm=italic'
" TabLineFill = Cor de preencexe 'himento (fundo) da Tab (linha onde fica o nome do arquivo)'
exe 'hi TabLineFill  guifg=#121212   guibg=#b2b2b2   ctermfg=232    ctermbg='s:bg2'       gui=none      cterm=none'
" TabLineSel = Cor de fonte e fundo de Tab que está em foco
exe 'hi TabLineSel   guifg=fg        guibg=#585858   ctermfg=15     ctermbg='s:bg'       gui=none      cterm=none'
" VertSplit = Cor da barra que separa ao splitar a tela
exe 'hi VertSplit    guifg=#8a8a8a   guibg=#b2b2b2   ctermfg='s:bg'    ctermbg='s:bg'       gui=none      cterm=none'
exe 'hi Folded       guifg=fg        guibg=#585858   ctermfg=20     ctermbg=20       gui=none      cterm=none'
exe 'hi FoldColumn   guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none'

" Spelling
exe 'hi SpellBad     guisp=#ee0000                   ctermfg=fg     ctermbg=160       gui=undercurl cterm=undercurl'
exe 'hi SpellCap     guisp=#eeee00                   ctermfg=bg     ctermbg=226       gui=undercurl cterm=undercurl'
exe 'hi SpellRare    guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl'
exe 'hi SpellLocal   guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl'

" Diff
exe 'hi DiffAdd      guifg=fg        guibg=#405040   ctermfg=fg     ctermbg=22        gui=none      cterm=none'
exe 'hi DiffChange   guifg=fg        guibg=#605040   ctermfg=fg     ctermbg=58        gui=none      cterm=none'
exe 'hi DiffDelete   guifg=fg        guibg=#504040   ctermfg=fg     ctermbg=52        gui=none      cterm=none'
exe 'hi DiffText     guifg=#e0b050   guibg=#605040   ctermfg=220    ctermbg=58        gui=none      cterm=none'

" Misc
" Directory = cor dos nomes das pastas do ... NERDTree ?
"exe 'hi Directory    guifg=fg        guibg=NONE      ctermfg=11   ctermbg=none      gui=none      cterm=none'
exe 'hi ErrorMsg     guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none'
" SignColumn = cor da 'sargeta' que fica ao lado dos numeros das linha (a esquerda)
exe 'hi SignColumn   guifg=#afafaf   guibg=NONE      ctermfg=145    ctermbg=NONE      gui=none      cterm=none'
exe 'hi ColorColumn  guifg=NONE      guibg=#303030   ctermfg=NONE   ctermbg=9       gui=none      cterm=none'
" EndOfBuffer = cor de TODA a parte onde fica os ~ indicando o fim do arquivo
exe 'hi EndOfBuffer    guifg=NONE      guibg=#303030   ctermfg='s:bg2'   ctermbg=none       gui=none      cterm=none'

exe 'hi Ignore       guifg=bg                        ctermfg=bg'
exe 'hi MoreMsg      guifg=#87ffff   guibg=NONE      ctermfg=123    ctermbg=NONE      gui=none      cterm=none'
exe 'hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none'
exe 'hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none'
exe 'hi WarningMsg   guifg=#d7af87   guibg=NONE      ctermfg=180    ctermbg=NONE      gui=none      cterm=none'
exe 'hi WildMenu     guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=9        gui=none      cterm=none'

" Personalizando NERDTree
" Cor do Link Simbolina na frente do nome da pasta
exe 'hi NERDTreeLinkTarget     guifg=NONE      guibg=#005f87   ctermfg='s:bg'   ctermbg='s:bg'        gui=none      cterm=none'
" Muda a Cor das Pastas comuns
exe 'hi NERDTreeFlags     guifg=NONE      guibg=#005f87   ctermfg=15   ctermbg=none        gui=none      cterm=none'
" Muda a Cor do nome da PASTA
exe 'hi NERDTreeDir     guifg=NONE      guibg=#005f87   ctermfg=15   ctermbg=none        gui=none      cterm=none'
" Muda a Cor do conjunto dos links simbolicos : seta, icone, nome da pasta e /
exe 'hi NERDTreeLinkFile     guifg=NONE      guibg=#005f87    ctermfg=15   ctermbg=none        gui=none      cterm=none'

" Não fez nada
exe 'hi NERDTreeIgnore     guifg=NONE      guibg=#005f87   ctermfg=9   ctermbg=10        gui=none      cterm=none'
" Muda a Cor da seta ao lado da pasta
exe 'hi NERDTreeOpenable     guifg=NONE      guibg=#005f87   ctermfg=54   ctermbg=none        gui=none      cterm=none'
" Muda a Cor 
"exe 'hi NERDTreeNodeDelimiters     guifg=NONE      guibg=#005f87    ctermfg=9   ctermbg=10        gui=none      cterm=none'