call plug#begin() " Themes Plug 'megantiu/true.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

" Cool surrounding character coloring
Plug 'junegunn/rainbow_parentheses.vim'
" Statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git Integration
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'zivyangll/git-blame.vim'
" Initial window
Plug 'mhinz/vim-startify'
" Linting
Plug 'dense-analysis/ale'
" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Navigation
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'szw/vim-maximizer'
" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep', {'commit': 'da940c29ac97dcb025696491c422b6d8545e3e10'}
" Syntax highlighting
Plug 'posva/vim-vue'
Plug 'styled-components/vim-styled-components', {'branch': 'develop'}
Plug 'sheerun/vim-polyglot'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
" JS + JSX
Plug 'yuezk/vim-js'
" CSS
Plug 'hail2u/vim-css3-syntax' 
" JS syntax highlighting and indentation
Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdcommenter'
" Turn buffer into tabs
Plug 'bagrat/vim-buffet'
" Auto rename closing tags
Plug 'AndrewRadev/tagalong.vim'
" Autoclose HTML tags
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
"Indent Guides
Plug 'Yggdroot/indentLine'
" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'epilande/vim-react-snippets'
" Autoimport
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install' }
" Integrated Terminal
Plug 'kassio/neoterm'
" Debug
Plug 'puremourning/vimspector'

call plug#end()

" === Theme ===

if(has ("termguicolors"))
	set termguicolors
endif
"let g:dracula_colorterm = 0
colorscheme gruvbox
highlight Normal guibg=none


" coc config
let g:coc_global_extensions = [
			\'coc-snippets',
			\'coc-emmet',
		  \'coc-pairs',
			\'coc-css',
			\'coc-html',
			\'coc-vetur',
			\'coc-html-css-support',
			\'coc-highlight',
			\'coc-pyright',
			\'coc-json',
			\]

" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#6272a4 guifg=#f8f8f2
	hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#44475a guifg=#f8f8f2
	hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#44475a guifg=#f8f8f2
endfunction
