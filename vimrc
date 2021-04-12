" =========== Messagem de Boas-vindas =============
" echo  ======== Bem-vindo(a) (>^.^<) =========
    
" THEMA
syntax enable
colorscheme brave-purple  
    
" ==================== INICIO: Plugins ==================={{{
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify' " Tela Inicial Personalizada
"Plug 'yggdroot/indentline' " Para Personalizar Identificação de Identação
Plug 'vim-airline/vim-airline' " Linha de Status Incrmentada
Plug 'vim-airline/vim-airline-themes' " Temas para o de cima
Plug 'ctrlpvim/ctrlp.vim' " Pesquisa em arvore de trabalho
Plug 'scrooloose/nerdtree' " Arvore de diretórios
Plug 'ryanoasis/vim-devicons' " Icones da Arvore de Diretorios
Plug 'sheerun/vim-polyglot' " Turbina a sytaxhiligth do vim
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim' " suporte para código expandido. Ex: div>p 
"Plug 'ervandew/supertab'
"Plug 'zxqfl/tabnine-vim'
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}  " Equivalente ao Live Server do VSCode
call plug#end()
"Plug = Intelisense do VSCode para Vim
source ~/.vim/coc.nvimrc

" }}}=================== Fim Plugins ======================

" ============ INICIO: Configuração dos Plugins =========={{{

" ============ Configuração do Syntastic ================={{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_aggregate_errors = 1                                   
"let g:airline_enable_syntastic = 1
" }}}======================================================

" ============== Configuração do NERDTree ================{{{

" Abro o NERDTree sempre que o vim abrir
autocmd vimenter * NERDTree
" Quando abrir mudo o foco do NERDTree para o arquivo aberto
autocmd! VimEnter * NERDTree | wincmd w
" Se o NERDTree for a unica coisa aberta, fecho o vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeWinSize=25
    
" }}} ======================================================

" ============= Configuração de Airline ============{{{
set laststatus=2

"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#formatter='default'
"let g:airline_powerline_fonts=1
"let g:airline_statusline_ontop=0
"let g:airline_theme='simple'


" }}}

" =========== Configuração do CTRL+P =============={{{
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd $s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" }}}

" ================ Configuração do Coc ================={{{
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"Uso CTRL+Space para ativar o auto completar
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()

" }}}

" }}}  ============ FIM: Configuração dos Plugins ==========

" ============ INICIO: Configuração com 'set' ============{{{
" set list lcs=tab:\|\  " Coloca um pipe na tabulação
set shiftwidth=4 " Define o número de espaços ao auto identar
set shiftround " Tamanhdo da tabulação usando shiftwidth como base                                  
set number " Mostra os números das linhas
set numberwidth=4 "Tamanho da coluna onde aparecem os número
" set relativenumber " Mostra o número das linhas de forma relativa 
set mouse=a " Habilita o mouse no terminal Vim
set showmode "mostra o modo em que estamos
set showcmd  "mostra no status os comandos inseridos
set ts=4     "tamanho das tabulações
set hlsearch!      "destaca com cores os termos procurados
set incsearch "habilita a busca incremental
set autoindent "auto identação
set wildmenu  " Abre caixa com opções ao dar TAB quando digita comando
set aw       "salvamento automático - veja :help aw
set ignorecase "faz o vim ignorar maiúsculas e minúsculas nas buscas
set smartcase  "Se começar uma busca em maiúsculo ele habilita o case
set ic        "ignora maiúscula e minúsculas em uma busca
set scs       "ao fazer uma busca com maiúsculos considerar case sensitive
set backup
"set backupext=.backup
"set backupdir=~/.backup,./
set cul        "abreviação de cursor line (destaca linha atual)
set ve=all     "permite mover o cursor para áreas onde não há texto
set ttyfast    "Envia mais caracteres ao terminal, melhorando o redraw de janelas. 
"set columns=120 "Determina a largura da janela.
set mousemodel=popup "exibe o conteúdo de folders e sugestões spell
set confirm 	"exibe caixa perguntando se quer salvar ou não
set title 		"exibe o nome do arquivo em foco no top da janela do terminal
set clipboard=unnamedplus "Permite copiar coisas de dentro para fora do vim e vice-versa                

set showtabline=2 "O 2 indica que a Tab deve sempre aparecer, mesmo que houve apenas uma 
set tabline=%!MyTabLine() " Chamo a function que cria a Minha TAB



 " }}} ================ Fim da configuração com 'set' ==============

" ================ INICIO dos Mapeamentos ================{{{
" Defino o CTRL como tecla líder ( ',' talvez seja melhor )
let mapleader = ","

" Abre o .vimcr 
nnoremap <F2> :vsplit $MYVIMRC<cr>

" Recarrega o .vimrc
nnoremap <F12> :source $MYVIMRC<cr>
inoremap <F12> <esc>:source $MYVIMRC<cr>

" Abre a caixa de auto completar
"inoremap <c-space> <c-x><c-o>
" Minimiza/Maximiza cpodigo
nnoremap <space> za
" Sai do Vim
nnoremap q :q<CR>
"inoremap <space> <esc>za i
" Autocompletar parente
"inoremap ( ()<left>
"inoremap { {}<left><CR>
"inoremap [ []<left>
" Coloca Texto selecionado entre aspas duplas
" nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" nnoremap <leader>" v`><esc>a"<esc>`<i"<esc>lel
" vnoremap <leader>" v`><esc>a"<esc>`<i"<esc>lel
vnoremap " v`><esc>a"<esc>`<i"<esc>lel

" ================ Clonar linhas
" CTRL+ALT+SetaParaBaixo clona a linha atual
noremap <c-m-down> <esc>V yp i
inoremap <c-m-down> <esc>V yp i
" DESCLONA, apaga a linha
noremap <c-m-up> <esc>ddi<up>
inoremap <c-m-up> <esc>ddi<up>

" ================= Mover Linhas
" ALT+SetaParaBaixo Move linha para Baixo
noremap <m-down> <esc>V y<esc>ddpi
inoremap <m-down> <esc>V y<esc>ddpi
" ALT+SetaParaCima Move linha para Cima
noremap <m-up> <esc>V y<esc>dd2kpi
inoremap <m-up> <esc>V y<esc>dd2kpi

" ================== Comandos Populares
noremap <c-z> u 
inoremap <c-z> <esc>u  

"Ctrl+S em modo NORMAL
noremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>

" ================= Comandos de Plugins

noremap <C-b> :NERDTreeToggle<CR>

" }}} ================= FIM dos Mapeamentos ==========


" ==================================================
" Lê todo a projeto para ir para definação de classe, método, etc . Com CTRL + ] 
" :ctags -R . 
 
" grupos de alto comandos
"augroup filetype_html
"    autocmd!                       
"    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
"augroup END 

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
	"autocmd BufEnter * NERDTreeMirror
augroup END


" }}}

"============= Funções de MyTabLine ================={{{

" Teste de configuração de TABLINE
" Link dos icones : https://pt.piliapp.com/symbol/    e   https://unicode-table.com/pt/#2A2F
function! MyTabLine()
	let tabline = ''

	if (exists("g:NERDTree") && g:NERDTree.IsOpen())
		let tree = g:NERDTreeWinSize
		let tabline = '%'.tree.'N' 
	endif
	" For em numero de TABs
	for i in range(tabpagenr('$'))
		let tab = i+1
		let amount = tabpagewinnr(tab)
		let splitList = tabpagebuflist(tab)
		let splitId = splitList[amount -1]
		let splitName = bufname(splitId)
		let splitIsModified = getbufvar(splitId, "&mod")
		
		let tabline .= '%'.tab.'T'
		let tabline .= (tab == tabpagenr() ? '%#TabLineSel# ≡ ' : '%#TabLine#  ')
		let tabline .= ''.tab. '-'
		let tabline .= (splitName != '' ? splitName.' ' : ' Sem nome ')
		
		if splitIsModified
			let tabline .= '✎ '
		elseif tabpagenr('$') > 1
	    	let tabline .= (tab == tabpagenr() ? '%999X×' : '%2X⨯%X ')
		endif		                        
	   
		let tabline .= (tab == tabpagenr() ? '%#TabLineSel#❭' : '%#TabLine#❭')
	endfor
	
	let tabline .= '%#TabLineFill#'

	return tabline
endfunction 

"}}} ============== Fim MyTabLine =====================


function Terminal()
	"verificar se o terminal está aberto
	let terminal = bufname('zsh')
	if terminal == ''
		below terminal ++rows=8
	else
		let idBuffer = bufnr(terminal)
		execute ':bwipe! '. idBuffer
	endif
endfunction

nnoremap <c-F10> :call Terminal()<cr>
inoremap <c-F10> :call Terminal()<cr>
autocmd TerminalOpen * if &buftype == 'terminal' | setlocal nobuflisted | endif

