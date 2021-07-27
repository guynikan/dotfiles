" === Mapping ===

" Make double-<Esc> clear search highlights
nnoremap <silent> <esc><esc> <esc>:nohlsearch<cr><esc>

" Limpa seleção de texto
nmap <C-c> :nohl<CR> :set nospell<CR>

" Thanks spacemacs
let mapleader = " "

" Pesquisa por arquivos
nnoremap <c-p> :FZF<CR>

" Git Blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

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

" Maps so we're ready to type the search keyword
nnoremap <C-f> :Ack! 
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

nnoremap <Leader>up :T docker-compose -f docker-compose-dev.yml up<CR>

nnoremap <Leader>down :T docker-compose -f docker-compose-dev.yml down<CR>

" LazyGit
nnoremap <silent> <leader>g :LazyGit<CR>

" === Window Manager ===

" Fullscreen
nmap <leader>f :MaximizerToggle<CR>

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

" Move to the next lint error
nmap <silent> <C-e> <Plug>(ale_next_wrap)
nmap <silent> <leader>mm <Plug>(ale_detail)

" === Navigation ===

" Tab Navigation (buffet)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" Fecha a tab
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

" Abre o NerdTree
"nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>n :CHADopen<CR>

" === Arquivos ===

" Atualiza o arquivo vim
nmap <leader>r :so %<CR>

" Salva o documento atual
nmap <leader>s :w<CR>

" Salva todas as janelas abertas
nmap <leader>a :wall<CR>

" Move uma linha para cima ou para baixo
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Desabilita as setas no normal mode
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
