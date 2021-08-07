set nocompatible

" Load configs files
source ~/.config/nvim/config/editor.vim
source ~/.config/nvim/config/mappping.vim
source ~/.config/nvim/plugin/ale.vim
source ~/.config/nvim/plugin/chadtree.vim
source ~/.config/nvim/plugin/vimspector.vim
source ~/.config/nvim/config/plug.vim

lua <<EOF
require("lsp")
require("treesitter")
require("completion")
EOF
