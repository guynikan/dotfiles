call plug#begin()
" Themes
Plug 'megantiu/true.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
" Statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git Integration
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
" Initial window
Plug 'mhinz/vim-startify'
Plug 'terryma/vim-multiple-cursors'
" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Navigation
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" JS + JSX
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" JS syntax highlighting and indentation
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
" Turn buffer into tabs
Plug 'bagrat/vim-buffet'
" auto rename closing tags
Plug 'AndrewRadev/tagalong.vim'
" Autoclose HTML tags
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
"Indent Guides
Plug 'nathanaelkane/vim-indent-guides'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'
" autoimport
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install' }
" Integrated Terminal
Plug 'kassio/neoterm'
call plug#end()

" === Theme ===

if(has ("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula
" coc config
let g:coc_global_extensions = [
			\'coc-snippets',
			\'coc-emmet',
		  \'coc-pairs',
			\'coc-css',
			\'coc-html',
			\'coc-highlight',
			\'coc-tsserver',
			\'coc-eslint',
			\'coc-prettier',
			\'coc-json',
			\]


" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#6272a4 guifg=#f8f8f2
	hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#44475a guifg=#f8f8f2
	hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#44475a guifg=#f8f8f2
endfunction
