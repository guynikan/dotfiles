"=== ALE config ===

let g:ale_enabled = 1
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'insert'

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_disable_lsp = 1
let g:ale_linters_explicit = 1
let g:ale_detail_to_floating_preview = 1
let g:ale_floating_preview = 1

let g:ale_linters = {
            \'vue': ['eslint'],
            \'javascript': ['eslint'],
            \'html': ['eslint']
            \}

"" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
    \'vue': ['prettier'],
    \'javascript': ['prettier'],
    \'html': ['prettier']
    \}

" For airline integration
let g:airline#extensions#ale#error_symbol = '✗:'
let g:airline#extensions#ale#warning_symbol = '⚠:'
