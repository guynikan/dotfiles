call plug#begin() " Themes Plug 'megantiu/true.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

Plug 'ferrine/md-img-paste.vim'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax' 

" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

" File tree
Plug 'ms-jpq/chadtree'

" MD preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'vimwiki/vimwiki'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

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
Plug 'ryanoasis/vim-devicons'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdcommenter'
" Auto rename closing tags
Plug 'AndrewRadev/tagalong.vim'
" Autoclose HTML tags
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
"Indent Guides
Plug 'Yggdroot/indentLine'
" Integrated Terminal
Plug 'kassio/neoterm'
" Debug
Plug 'puremourning/vimspector'

call plug#end()

" === Theme ===

if(has ("termguicolors"))
	set termguicolors
endif

let g:dracula_colorterm = 0
colorscheme dracula
highlight Normal guibg=none
