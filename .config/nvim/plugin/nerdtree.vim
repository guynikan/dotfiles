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

" when switching into a tab, make sure that focus will always be in file
" editing window, not in NERDTree window
let g:nerdtree_tabs_focus_on_files=1

let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'

" display hidden files by default
let g:NERDTreeShowHidden = 1


" Disables display of the "bookmarks' label and 'Press ? for help' text
let g:NERDTreeMinimalUI = 1

let g:NERDTreeIgnore = []

let g:NERDTreeQuitOnOpen=1

" automatically remove a buffer when a file is being deleted or
" renamed via a context menu command
let g:NERDTreeAutoDeleteBuffer = 1

" Tells the NERDTree to display line numbers
let g:NERDTreeShowLineNumbers = 1

" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    "\ quit | endif

"autocmd BufWinEnter * silent NERDTreeMirror

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * CHADopen | wincmd p

