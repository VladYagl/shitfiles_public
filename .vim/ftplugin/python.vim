let g:ycm_server_python_interpreter = '/usr/bin/python'

set foldmethod=indent
set textwidth=79

command! -nargs=1 PythonDoc set iskeyword+=. | call PreviewCMD('pydoc ' . expand(<f-args>), 8) | set iskeyword-=.

nnoremap K :PythonDoc <cword><return>
" nnoremap <Leader>L :PymodeLintAuto<return>
nnoremap <Leader>r :!python "%" <return>

let g:pymode_breakpoint_bind = '<C-x><C-[>'
let g:pymode_doc_bind = '<C-m><C-[>'
let g:pymode_run_bind = '<leader>c'
let g:pymode_options_colorcolumn = 0
let g:pymode_options = 0
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 500
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_lint_cwindow = 0

" " Nicola is trolling:
" let g:pymode_syntax_space_errors = 1
" let g:pymode_lint_on_write = 1
" let g:pymode_lint_on_fly = 0
" let g:pymode_trim_whitespaces=0

let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
" let g:pymode_lint_checkers =
            " \ ['pyflakes', 'pep8', 'mccabe', 'pylint', 'pep257']
            
"" Now in .config/pylintrc file:
" let g:pymode_lint_ignore = ['C', 'E501', 'W0611']

" Let's try ALE instead of Pymode (pymode sucks...)
let g:pymode_lint = 0

" -- ALE --

" let g:ale_linters = {'python': 
            " \ ['pyflakes', 'pycodestyle', 'mccabe', 'pylint', 'pep257']}
let g:ale_fixers = {
            \ 'python' : [
                \ 'add_blank_lines_for_python_control_statements', 
                \ 'autoflake',
                \ 'autopep8',
                \ ]
            \ }
let g:ale_type_map = {
            \ 'flake8': {'E': 'W', 'ES': 'I', 'WS': 'I'},
            \ 'pycodestyle': {'E': 'W', 'ES': 'I', 'WS': 'I'},
            \ }
let g:ale_echo_msg_format = '%linter%| %code: %%s'
nnoremap <Leader>L :ALEFix<return>
vnoremap <Leader>L :'<,'>!autopep8 -<cr>
