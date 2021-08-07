" See more typing :options
syntax on                    "turn on syntax highlighting
set nocompatible
filetype plugin on

set mouse=a
set hidden                   "allow vim to manage multiple buffers
set nu relativenumber
set tw=70
set cursorline               "Highlight horizontal line
set history=1000             "Store lots of :cmdline history
set number                   "Line numbers
set autoread                 "Reload files changed outside vim
set ignorecase               " searchers are case insensitive...
set smartcase                " ... unless they contain at least one capital letter
set clipboard=unnamedplus    "  copy clipboard
set suffixesadd=.js,.jsx     " look for files without extension in gf
set path=.,src,node_modules  " a list of dirs which will be searched when using the gf
set showcmd                  "display an incomplete command in the lower right corner
set colorcolumn=80           "set a bar in 80's colorcolumn

"=== Turn Off Swap Files ===
set noswapfile
set nobackup
set nowb

" === Indentation ===

" Use the indent of the previous line for a newly created line
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
"set linebreak    "Wrap lines at convenient points

"let g:htl_css_templates = 1

"let g:vue_pre_processors = 'detect_on_enter'

" Gotta go fast
set ttyfast
set lazyredraw

" Toggle invisible characters
set list
set listchars=""
set listchars=tab:▸\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=eol:↲

"autocmd BufRead,BufNewFile *.html,*.css,*.js setlocal shiftwidth=2 softtabstop=2

" Avoid showing trailing whitespace when in insert mode
autocmd InsertEnter * set listchars-=trail:·
autocmd InsertLeave * set listchars+=trail:·

" Buffet config

let g:buffet_always_show_tabline = 0
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = '#'
let g:buffet_powerline_separators = 1


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

" enable Markdown folding
let g:markdown_fenced_languages = ['rb=ruby', 'ruby=ruby', 'erb=eruby', 'js=javascript', 'html=html', 'xml=xml', 'sql=sql']

let g:ft = ''
    fu! NERDCommenter_before()
        if &ft == 'vue'
            let g:ft = 'vue'
            let stack = synstack(line('.'), col('.'))
            if len(stack) > 0
                let syn = synIDattr((stack)[0], 'name')
                if len(syn) > 0
                    let syn = tolower(syn)
                    exe 'setf '.syn
                endif
            endif
        endif
    endfu
    fu! NERDCommenter_after()
        if g:ft == 'vue'
            setf vue
            let g:ft = ''
        endif
    endfu

" auto start on enter in md buffer
"let g:mkdp_auto_start = 1
let g:mkdp_refresh_show = 1

let wiki = {
\           'path': '~/vimwiki/',
\           'path_html': '~/vimwiki/HTML/',
\           'auto_export': 0,
\           'index': 'home',
\           'syntax': 'markdown',
\           'ext': '.md',
\           'auto_toc': 1,
\           'maxhi': 1,
\           'nested_syntaxes': {'python': 'python', 'js': 'javascript', 'c++': 'cpp'},
\           'list_margin': -1
\           }
"
" Make wiki the default vimwiki setup
let g:vimwiki_list = [wiki]
" When opening a directory containing a file with this name and default wiki
" extention, assume it is a vimwiki
let g:vimwiki_dir_link = ''
" Only treat .md files under a path in vimwiki_list as wiki files
let g:vimwiki_global_ext = 0

