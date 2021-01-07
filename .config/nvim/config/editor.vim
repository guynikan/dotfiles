" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set cursorline "Highlight horizontal line
set history=1000 "Store lots of :cmdline history
set number "Line numbers
set mouse=a
set nu relativenumber

syntax on

" Thanks Spacemacs

let mapleader = " "

" Fugitive config

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>

nmap <leader>q :q<CR>
nmap <leader>s :w<CR>
nmap <leader>r :so %<CR>
nmap <leader>c :Commentary<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :call OpenTerminal()<CR>


" Navigation
" Posso usar em conjunto com :b + n - pra mudar de buffer
" E posso usar também :bd + n - pra deletar um buffer da lista
" Preferencialmente usar o buffet
nnoremap <leader>b :buffers<CR>:<Space>
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>th :tabnext<CR>
nnoremap <leader>tl :tabprev<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Buffet config

let g:buffet_always_show_tabline = 0
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = '#'
let g:buffet_powerline_separators = 1

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <leader><Tab> :Bw<CR>
noremap <leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>


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

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
autocmd BufWritePre * :%s/\s\+$//e

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

" Ultisnips Config
let g:UltiSnipsExpandTrigger = "<ENTER>"
let g:UltiSnipsJumpForwardTrigger = "<S-n>"

"======= NerdTree config =============
"Use the natural Vim navigation keys hjkl to navigate the files.
"Press o to open the file in a new buffer or open/close directory.
"Press t to open the file in a new tab.
"Press i to open the file in a new horizontal split.
"Press s to open the file in a new vertical split.
"Press p to go to parent directory.
"Press r to refresh the current directory.
"Press m to launch NERDTree menu inside Vim.

let g:NERDTreeChDirMode=2
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let NERDTreeQuitOnOpen=1
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" ============= Integrated Terminal ===============

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 5
endfunction
" Fuzzy Finder
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

nnoremap <c-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ================ Scrolling ========================

set scrolloff=20        "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


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

