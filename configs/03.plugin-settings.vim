" prettier
nmap <Leader>f :Prettier<enter>
vmap <Leader>f :Prettier<enter>

" indentline config
let g:indentLine_char = '▏'

" floaterm config
nnoremap <F1> :FloatermToggle<CR>
tnoremap <F1> <C-\><C-n>:FloatermToggle<CR>
tnoremap <F9> <C-\><C-n>:FloatermKill<CR>
let g:floaterm_title='Logger $1/$2'
let g:floaterm_position="topright"
let g:floaterm_width=0.5
let g:floaterm_autoclose=1

" NERDTree config
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusConcealBrackets=1

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-l>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<ESC>'

" auto pair config
let g:AutoPairsShortcutJump = "<C-e>"

" closetag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.tsx, *.vue'

" fold config
autocmd Filetype * AnyFoldActivate " activate for all filetypes
set foldlevel=0  " close all folds
set foldlevel=99 " Open all folds

" vue config
let g:vue_disable_pre_processors=1
