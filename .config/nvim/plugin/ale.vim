"=== ALE config ===

let g:ale_fixers = {
    \'javascript': ['eslint']
    \}

let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" Fix files with prettier, and then ESLint.
let g:ale_linters = {'vue': ['eslint']}
let g:ale_fixers = {'vue': ['eslint', 'prettier']}

" Move to the next lint error
nmap <silent> <C-e> <Plug>(ale_next_wrap)

" For airline integration
let g:airline#extensions#ale#error_symbol = '✗:'
let g:airline#extensions#ale#warning_symbol = '⚠:'
