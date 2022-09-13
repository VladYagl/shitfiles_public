" My not work from filtype plugin...
let g:ycm_language_server = [
            \{
            \   'name': 'lean',
            \   'cmdline': [ 'lean-language-server', '--stdio' ],
            \   'filetypes': [ 'lean' ],
            \}
            \]

let g:lsc_server_commands = {'lean': 'lean-language-server --stdio'}
let g:lsc_enable_autocomplete = v:false

let g:lean_preview_goals = v:true
let g:lean_inoremap_unicode = v:true
" let g:lean_abbrev_unicode = v:true
" let g:lsc_hover_popup = v:false

nnoremap <buffer> <leader>b :LSClientGoToDefinition<CR>
nnoremap <buffer> K :LSClientShowHover<CR>
nnoremap <buffer> <c-k> :LSClientShowHover<CR>
inoremap <buffer> <c-k> <c-o>:LSClientShowHover<CR>
nnoremap <buffer> <leader>C :LSClientAllDiagnostics<CR>
nnoremap <buffer> <leader>c :LSClientLineDiagnostics<CR>

setlocal commentstring=--\ %s
