" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set mouse=a
set nu relativenumber
set tw=70
set cursorline                                  "Highlight horizontal line
set history=1000                                "Store lots of :cmdline history
set number                                      "Line numbers
set autoread                                    "Reload files changed outside vim
set ignorecase                                  " searchers are case insensitive...
set smartcase                                   " ... unless they contain at least one capital letter
set clipboard=unnamedplus                       "  copy clipboard


let g:htl_css_templates = 1

"turn on syntax highlighting
syntax on

" Toggle invisible characters
set list
set listchars=""
set listchars=tab:▸\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=eol:↲

" =========== Mapping ===========

" Make double-<Esc> clear search highlights
nnoremap <silent> <esc><esc> <esc>:nohlsearch<cr><esc>

" Limpa seleção de texto
nmap <C-c> :nohl<CR> :set nospell<CR>

" thanks spacemacs
let mapleader = " "

" Pesquisa por arquivos
nnoremap <c-p> :FZF<CR>
map <C-o> :Rg 


" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps / so we're ready to type the search keyword
nnoremap <C-p> :Ack! 
" }}}

" Navigate quickfix list with ease
nnoremap  [q :cprevious
nnoremap  ]q :cnext

" Terminal
nnoremap <Leader>to :Topen<CR>
nnoremap <Leader>tn :Tnew<CR>
nnoremap <Leader>tk :Tkill<CR>
nnoremap <Leader>tt :Ttoggle<CR>
nnoremap <Leader>tl :Tls<CR>
nnoremap <Leader>tc :Tclose<CR>
nnoremap <Leader>start :T npm start<CR>
" nnoremap <Leader>rk :call neoterm#close()<CR>
" nnoremap <Leader>rc :call neoterm#clear()<CR>
" nnoremap <Leader>rr :call neoterm#clear() \| call neoterm#exec(['!!', '', ''])<CR>

" LazyGit
nnoremap <silent> <leader>g :LazyGit<CR>

" === Window Manager ===

" Dividir telas
nmap <leader>sh :sp<CR>
nmap <leader>sv :vsp<CR>

" Redimensionar telas
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

" Fecha a janela
nmap <leader>q :q<CR>
" Fecha todas as janelas
nmap <leader>qa :qall<CR>

" === Navigation ===

" Tab Navigation (buffet)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
" fecha a tab
noremap <leader><Tab> :Bw<CR>
noremap <leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" navegação rápida entre janelas
nnoremap <leader>w :wincmd w<CR>

" Comenta uma linha
nmap <leader>c :Commentary<CR>

" Abre o NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


" === Arquivos ===

" Atualiza o arquivo vim
nmap <leader>r :so %<CR>

" Salva o documento atual
nmap <leader>s :w<CR>

" Salva todas as janelas abertas
nmap <leader>a :wall<CR>

" Move linhas
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Desabilita as setas no normal mode
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" Buffet config

let g:buffet_always_show_tabline = 0
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = '#'
let g:buffet_powerline_separators = 1

" =========== Turn Off Swap Files ===========

set noswapfile
set nobackup
set nowb

" =========== Indentation ================
set autoindent
set smartindent

" by default, the indent is 2 spaces.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set linespace=2

" set list listchars=tab:\ \ ,trail:·
" autocmd BufWritePre * :%s/\s\+$//e

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points


" mostra uma preview em tempo real do comando sendo executado.
" é utilizado em conjunto com o comando de substituição.
" por exemplo:  %s/myFoo/person/g
" que é o equivalente a dizer que quer substituir todos os myFoo por person.
"
" shift + a, leva você até o fim da linha em modo de inserção
" shift + i, leva você até o inicio da linha em modo de inserção

set inccommand=split

" === Snippets ===

" Ultisnips Config
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-n>"

"=== NerdTree config ===

"Use the natural Vim navigation keys hjkl to navigate the files.
"Press o to open the file in a new buffer or open/close directory.
"Press t to open the file in a new tab.
"Press i to open the file in a new horizontal split.
"Press s to open the file in a new vertical split.
"Press p to go to parent directory.
"Press r to refresh the current directory.
"Press m to launch NERDTree menu inside Vim.

" Automatically change directory and root directory 
let g:NERDTreeChDirMode=2

let g:nerdtree_tabs_focus_on_files=1

let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'

" display hidden files by default
let g:NERDTreeShowHidden = 1

" Disables display of the "bookmarks' label and 'Press ? for help' text
let g:NERDTreeMinimalUI = 1

let g:NERDTreeIgnore = []

" let g:NERDTreeStatusline = ''

let g:NERDTreeQuitOnOpen=1

" automatically remove a buffer when a file is being deleted or
" renamed via a context menu command
let g:NERDTreeAutoDeleteBuffer = 1

" Tells the NERDTree to display line numbers
let g:NERDTreeShowLineNumbers = 1
" let g:NERDTreeStatusLine = 1


" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


 
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

autocmd BufWinEnter * silent NERDTreeMirror


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" === Terminal ===

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

let g:neoterm_default_mod = 'rightbelow'
let g:neoterm_autoscroll = 1
let g:neoterm_size = 5
let g:neoterm_keep_term_open = 1
let g:neoterm_autoinsert = 1
let g:neoterm_term_per_tab = 1

" === Fuzzy Finder ===
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" === Scrolling ===

 set scrolloff=20        "Start scrolling when we're 20 lines away from margins
 set sidescrolloff=15
 set sidescroll=1

" 
" Configure tagalong
let g:tagalong_verbose = 1
let g:tagalong_additional_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact', 'javascript']

" Configure closetag
let g:closetag_filetypes = 'javascript, jsx, javascriptreact, html,xhtml, phtml'

" Config Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#272835 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#292b38 ctermbg=4

