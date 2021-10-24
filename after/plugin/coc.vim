let g:coc_global_extensions=['coc-json',  'coc-snippets', 'coc-tsserver',  'coc-emmet', 'coc-tailwindcss']
" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <silent> gq <Plug>(coc-fix-current)
nmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)

let g:coc_snippet_next='<Tab>'              " Use Tab to jump to next snippet placeholder
let g:coc_snippet_prev='<S-Tab>'

" Press Enter to select completion items or expand snippets
inoremap <silent><expr> <CR>
  \ pumvisible() ? "\<C-y>" :
  \ "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()
nnoremap <silent><expr> <C-space> coc#refresh()

inoremap <silent><expr> <C-j> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use L to show documentation in preview window.
nnoremap <silent> L :call <SID>show_documentation()<CR>

" Remap <C-t> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-d>"
nnoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-t>"
inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-d>"
vnoremap <silent><nowait><expr> <C-t> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-t>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
xmap <Leader>x  <Plug>(coc-convert-snippet)
