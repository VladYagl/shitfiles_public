let g:hdevtools_options = '-g -Wall'
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:haskell_tabular = 1

let g:necoghc_enable_detailed_browse = 1
let g:necoghc_use_stack = 1

let g:haskell_enable_quantification = 1   " highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " highlighting of type roles
let g:haskell_enable_static_pointers = 1  " highlighting of `static`
let g:haskell_backpack = 1                " highlighting of backpack keywords

let g:hindent_indent_size = 2
let g:hindent_line_length = 120

nnoremap <buffer> <Leader>t :GhcModType<CR>
nnoremap <buffer> <Leader>T :GhcModTypeInsert<CR>
nnoremap <buffer> <Leader>i :HdevtoolsInfo<CR>
nnoremap <buffer> <Leader>S :GhcModSplitFunCase<CR>
nnoremap <buffer> <silent> <leader>f :GhcModTypeClear<CR>

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
