" vim: foldmethod=marker foldlevelstart=0
set nocompatible
set encoding=utf-8

" {{{1 PLUGINS
" bundle beacuse I moved from Vundle, why would i reinstall shit like ycm
if has('win32')
    set langmenu=en_US.UTF-8
    call plug#begin('$HOME/.vim/bundle')
else
    call plug#begin('~/.vim/bundle')
endif
Plug 'scrooloose/nerdtree' " , {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

if has('nvim')
    Plug 'lukas-reineke/virt-column.nvim'
    " Neovim sucks
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
endif

""" Colorschemes
" Plug 'VladYagl/darcula'
Plug 'morhetz/gruvbox'
" Plug 'flazz/vim-colorschemes'
" Plug 'atelierbram/vim-colors_atelier-schemes'

Plug 'ap/vim-buftabline'
" Plug 'vim-airline/vim-airline'

Plug 'azadkuh/vim-cmus'
Plug 'christoomey/vim-system-copy'
Plug 'fadein/vim-FIGlet' " Makes cool big text!
Plug 'Raimondi/delimitMate' " Makes paired brackets easy
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
" Plug 'dkprice/vim-easygrep' " VimWiki set to use same mappings as easygrep
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

" Plug 'tpope/vim-markdown' " VimWiki markdown replaces it
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'reedes/vim-pencil'
Plug 'Konfekt/FastFold'

" All the language specific plugins I use
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'whonore/Coqtail', { 'for': 'coq' }
Plug 'leanprover/lean.vim', { 'for': 'lean' }
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'vim-scripts/autohotkey-ahk', { 'for': 'ahk' }
Plug 'chikamichi/mediawiki.vim', { 'for': 'mediawiki' }
Plug 'PotatoesMaster/i3-vim-syntax', { 'for': 'i3' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp'] }
Plug 'chrisbra/csv.vim'

Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

""" tmux
" Plug 'tmux-plugins/vim-tmux'
" Plug 'christoomey/vim-tmux-navigator'

""" All this is for Happy Haskell Programming! Enjoy!
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}
Plug 'Shougo/vimproc.vim', {'for': 'haskell', 'do': 'make'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'bitc/vim-hdevtools', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
Plug 'alx741/vim-stylishask', {'for': 'haskell'}
" Plug 'nbouscal/vim-stylish-haskell', {'for': 'haskell'}
" Plugin 'alx741/vim-hindent', {'for': 'haskell'}

Plug 'ervandew/supertab'
if !has('win32')
    Plug 'Valloric/YouCompleteMe', {
                \   'do': './install.py --all',
                \   'for': ['rust', 'c', 'cpp', 'kotlin']
                \}

    Plug 'dense-analysis/ale', {'for': ['rust', 'c', 'cpp', 'sh', 'bash', 'python']}
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' , {'on': ['NERDTreeToggle', 'NERDTreeFind']}

    Plug 'dylanaraps/wal.vim'
    Plug 'natebosch/vim-lsc', {'for': 'lean'}
    Plug 'sillybun/vim-async', {'for': 'lean'}
endif

call plug#end()
" }}}1

" {{{1 GENERAL
""" No error bells plz
set noerrorbells visualbell t_vb=

""" Set line no, buffer, search, highlight, autoindent and more. Some Default
set noswapfile
set nu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set autochdir " changes working dir to current file
set wildmenu " allows autocomplite in :edit <here>
set hlsearch
set foldlevelstart=10
set foldmethod=syntax
set foldnestmax=2
set foldcolumn=1
set ruler
set showcmd
set history=10000
set undolevels=1000
set shiftwidth=4
set textwidth=80
set tabstop=4
set linebreak
set expandtab
set backspace=2
set exrc " Project specific vimrc files
if has('nvim')
    set viminfo='1000,n~/.cache/vim/nviminfo
else
    set viminfo='1000,n~/.cache/vim/viminfo
endif

" More time for mapped sequience because monkey brain too slow
set timeoutlen=3000

set breakindent
" set breakindentopt=shift:2

if !&scrolloff
    set scrolloff=1
endif
if !&sidescrolloff
    set sidescrolloff=1
endif

""" Make order where new windows will spawn
set splitbelow
set splitright

""" Make hybrid numbers
" set relativenumber
set number

""" Fix scrolling in st
set mouse=a
if !has('nvim')
    set ttymouse=sgr
endif

if has('nvim')
    """ Terminal settings
    autocmd TermOpen * startinsert
    autocmd TermClose * :bd!
    if has("termguicolors")
        set termguicolors
    endif

    tnoremap <esc><esc> <C-\><C-N>
    au Filetype fzf tnoremap <buffer> <esc><esc> <C-c>
endif

""" Activate matchit
packadd! matchit

""" Activate gdb
packadd! termdebug
let g:termdebug_wide = 163

function! s:tmaps()
    " nnoremap <leader>s :Step<return>

    nnoremap dd <Nop>
    nnoremap dn :Over<return>
    nnoremap <C-n> :Over<return>
    nnoremap dl :Step<return>
    nnoremap <C-l> :Step<return>
    nnoremap ds :Stop<return>
    nnoremap db :Break<return>
    nnoremap d. :Clear<return>
    nnoremap dc :Continue<return>
    nnoremap <C-c> :Continue<return>
    nnoremap dr :Run<return>
    nnoremap <C-r> :Run<return>
    nnoremap df :Finish<return>
    nnoremap dt :call TermDebugSendCommand('where')<return>

    nnoremap dj :call TermDebugSendCommand('down')<return>
    nnoremap dk :call TermDebugSendCommand('up')<return>
    nnoremap dq :Stop<return>:Gdb<return>:call TermDebugSendCommand('kill')<return>:call TermDebugSendCommand('y')<return>:call TermDebugSendCommand('quit')<return>

    nnoremap dg :Gdb<return>A
    nnoremap dp :Program<return>
    nnoremap dm :Srouce<return>
    nnoremap da :Asm<return>

    nnoremap <leader><leader> :find **/*

    silent! tunmap <esc><esc>
    tnoremap <esc> <C-\><C-N>:Source<return>
endfunction

function! s:tdebug(...)
    call s:tmaps()
    au BufEnter * call s:tmaps()

    execute 'Termdebug ' . join(a:000)
endfunction

command! -nargs=+ -complete=file TD :call s:tdebug('<args>')

""" Local vimrc
call lh#local_vimrc#munge('whitelist', '/usr/local/solidsands/')
call lh#local_vimrc#munge('whitelist', $HOME.'/Side/')
call lh#local_vimrc#munge('whitelist', $HOME.'/StudyHard/')
call lh#local_vimrc#munge('whitelist', $HOME.'/supertest/')
call lh#local_vimrc#munge('whitelist', $HOME.'/docs/')
call lh#local_vimrc#munge('whitelist', $HOME.'/.scripts/')
call lh#local_vimrc#munge('whitelist', $HOME.'/.config/')
let g:local_vimrc = ['.vimrc_local', '_vimrc_local.vim']

""" NERDTree
let g:NERDTreeHighlightFolders = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeWinSize = 28

function! NERDTreeTerminal()
    let path = g:NERDTreeDirNode.GetSelected().path.str()
    silent! execute "!cd " . path . " && st&"
endfunction

au VimEnter * call NERDTreeAddMenuItem({
            \ 'text': 'open (t)erminal here',
            \ 'shortcut': 't',
            \ 'callback': 'NERDTreeTerminal' })

""" DelimitMate settings
let delimitMate_jump_expansion = 1
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
let delimitMateBackspace = 1
let delimitMateSmartMatchpairs = 1

""" YCM settings
let g:ycm_show_diagnostics_ui = 0
let g:ycm_max_diagnostics_to_display = 1000
let g:ycm_confirm_extra_conf = 0

let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_global_ycm_extra_conf = "~/.config/.ycm_extra_conf.py"
let g:ycm_filetype_blacklist = { 'tex': 1, 'plaintex': 1, 'vimwiki': 1 }
let g:ycm_server_python_interpreter = '/usr/bin/python'
set completeopt-=preview

""" Writing settings
let g:goyo_width = 80
set complete+=kspell
set spelllang=ru_yo,en_us
autocmd FileType text,gitcommit,mkd,markdown,tex,wiki,plaintex,vimwiki
            \ setlocal spell
set spellcapcheck=

set conceallevel=2
let g:pencil#conceallevel = 2
let g:pencil#autoformat = 0
let g:pencil#textwidth = 80
let g:pencil#cursorwrap = 1
let g:pencil#mode_indicators =
            \ {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
noremap <silent> <C-h> :<C-u>PFormatToggle<cr>
inoremap <silent> <C-h> <C-o>:PFormatToggle<cr>
augroup pencil
    " Clear previous symbols mappings
    autocmd!
    autocmd FileType text,tex,plaintex,mkd,markdown
                \ call pencil#init({'wrap': 'soft'})
augroup END


""" FastFold is back
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:sh_fold_enabled= 7
let g:fastfold_minlines = 0
" }}} 1

" {{{1 LOOK
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

let g:vlad_warnings = ""
function! VladWarnings()
    return g:vlad_warnings
endfunction

function! Authors()
    return system('authors ' . expand('%:p'))
endfunction

set statusline=
" Mode
set statusline+=%1*\ %{toupper(g:currentmode[mode()])}\  
" Show if spelling is active
set statusline+=%{&spell?'SPELL\ ':''}
" File path, modified, readonly, helpfile, preview
set statusline+=%2*\ %{FugitiveHead()}\ %{pathshorten(expand('%:p'))}%m%r%h%w
" Right side
set statusline+=%=
" Filetype
set statusline+=%{&ft}\  
" Separator
set statusline+=%1*\ %p%%\ %l/%L\ ln:%v\  
set statusline+=%{CSVStatus()}
" Custrom warnings
set statusline+=%#Error#
set statusline+=%{VladWarnings()}

let g:buftabline_separators = 1
let g:buftabline_numbers = 1
let g:buftabline_indicators = 1

set showtabline=2
set guioptions-=e
set laststatus=2

""" Set Color Scheme and Font Options
set guifont=Consolas:h12
set cursorline

""" Save theme name to file so it could be restored later
function! s:theme(name)
    hi link User1 StatusLine
    hi link User2 StatusLineNc

    call writefile([a:name], $HOME . '/.config/vim/themes/last')
    execute 'source ' . $HOME . '/.config/vim/themes/' . a:name . '.vim'
endfunction

command! -nargs=1 Theme :call s:theme('<args>')

if has('win32')
    execute "Theme win"
else
    set fillchars+=vert:│ " beautiful split line

    """ restore last theme
    let theme = readfile($HOME . '/.config/vim/themes/last')
    execute "Theme " . theme[0]
endif

" }}}1

" {{{1 MAPPINGS
function! PreviewCMD(cmdline, height)
    let lines = split(system(a:cmdline), '\n')

    let bnr = bufwinnr('__goals__')
    if !(bnr > 0)
        execute a:height . 'split __goals__'
        set previewwindow  " YCM fucks up preview windows
        set winfixheight
        setlocal bufhidden=hide
        setlocal nobuflisted
        setlocal buftype=nofile
        setlocal noswapfile

        setlocal nonumber
        setlocal norelativenumber

        wincmd p
    endif

    call deletebufline('__goals__', 1, 100)
    call setbufline('__goals__', 1, lines)
endfunction

function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

noremap tqq :call SynGroup()<return>

""" Map Esc --> Caps
au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

""" Russian keyboard
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
""" Switch language
imap <C-j> <C-^>
cmap <C-j> <C-^>
""" Apply first spell correction
nnoremap == 1z=

""" Map \ --> Space
nmap <Space> <Nop>
nmap s <Nop>
let mapleader = "\<Space>"

fu! OpenLocalVimRC()
    try
        call lh#local_vimrc#_open_local_vimrc()
    catch /.*/
        edit .vimrc_local
    endtry
endfu

""" Space commands
nnoremap <Leader>I :so ~/.vimrc<return>
nnoremap <Leader>E :edit ~/.vimrc<return>
au FileType nerdtree nnoremap <buffer> <Leader>E <Nop>
nnoremap <Leader>O :call OpenLocalVimRC()<return>
au FileType nerdtree nnoremap <buffer> <Leader>O <Nop>
nnoremap <Leader>s :w<return>
command! W silent execute 'write !sudo tee ' . shellescape(@%, 1) . ' >/dev/null'
nnoremap <Leader>S :W<return>
nnoremap <Leader>A :echo Authors()<return>
nmap <Leader>e gcc
vmap <Leader>e gc
nnoremap <Leader>w <C-w>
nnoremap <Leader>d <C-d>
nnoremap <Leader>u <C-u>
nnoremap <Leader>o <C-o>
nnoremap <Leader>b <C-]>
nnoremap <Leader>B <C-w><C-}>
nnoremap <Leader>i <C-i>
" nnoremap <Leader>t :suspend<return>
" Replace last yank
nnoremap <Leader>R :%s/<C-r>0/
nnoremap <Leader>n :NERDTreeToggle<return>
nnoremap <Leader>N :NERDTreeFind<return>
nnoremap <Leader><Esc> :pclose<return>:cclose<return>:lclose<return>
" Copy current file path
noremap <leader>X :let @+=expand("%:p")<CR>

""" Buffer manipulations
nmap <Leader>a <C-^>
au FileType nerdtree nnoremap <buffer> <Leader>a <Nop>
nnoremap <Leader>q :bd<return>
nnoremap <Leader>. :bn<return>
au FileType nerdtree nnoremap <buffer> <Leader>. <Nop>
nnoremap <Leader>, :bp<return>
au FileType nerdtree nnoremap <buffer> <Leader>, <Nop>
command! BufOnly silent! execute "%bd|e#|bd#"
nnoremap <Leader>Q :BufOnly<return>
au FileType nerdtree nnoremap <buffer> <Leader>Q <Nop>

nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(-1)

au FileType nerdtree nnoremap <buffer> <Leader>1 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>2 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>3 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>4 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>5 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>6 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>7 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>8 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>9 <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>0 <Nop>

command! Chmod silent! write | execute "write !chmod +x %" | edit

" noremap <Leader><leader> :b **/*
noremap <Leader><leader> :Buffers<return>
nmap <Leader>P :Tags<return>
nmap <Leader>H :Maps<return>
imap <C-k>help <Plug>(fzf-maps-i)
nnoremap <Leader>p :GitFiles<return>
nnoremap <Leader>f :Files<return>
nnoremap <Leader>h :History<return>
nnoremap <leader>F :find **/*

au FileType nerdtree nnoremap <buffer> <Leader>P <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>p <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>f <Nop>
au FileType nerdtree nnoremap <buffer> <Leader>H <Nop>
au FileType nerdtree nnoremap <buffer> <Leader><leader> <Nop>


""" Clear the highlighting of :set hlsearch.
nnoremap <silent> <Leader>l
            \ :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>

""" termdebug
nnoremap <leader>D :TD %:r<return>

""" Compile with Space+c and Run whith Space+r
command! Vmake silent make | unsilent redraw!
nnoremap <Leader>c :Vmake<return>
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

nnoremap <Leader>r :!"./%:r"<return>
au Filetype sh nnoremap <Leader>r :! "./%" <return>

au Filetype c nnoremap <Leader>c :!gcc -Wall "%" -o "%:r"<return>
au Filetype cpp nnoremap <Leader>c :!g++ -Wall "%" -o "%:r"<return>

""" Autoformatting
au Filetype c,cpp noremap <Leader>L :ClangFormat<return>

""" Ale
nmap <leader>g <Plug>(ale_detail)
" let g:ale_linters = {'rust': ['analyzer']}

""" VimWiki
nmap <Leader>vv <Plug>VimwikiIndex
nmap <Leader>v<Leader>v <Plug>VimwikiMakeDiaryNote
let g:vimwiki_map_prefix = '<Leader>v'

""" mcrl2 /// prob remove it later
au Filetype mcrl2 nnoremap <Leader>c
            \ :!mcrl22lps "%" "%:r.lps"<return>
            \ :!lps2lts "%:r.lps" "%:r.lts"<return>
au Filetype mcrl2 nnoremap <Leader>r :!ltsgraph "%:r.lts"<return>
" }}}1

"" {{{1 EXTRA
""" Runs a script that cleans out tex build files
autocmd VimLeave *.tex !texclear %

""" Clang format
let g:clang_format#command = 'clang-format'
let g:clang_format#code_style = 'google'
let g:clang_format#style_options = {
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "ColumnLimit" : 80,
            \ "AccessModifierOffset": -4,
            \ "Standard" : "C++11"}

""" Cscope
" let g:gutentags_modules = ['ctags', 'cscope']
let g:gutentags_modules = ['ctags']
let g:gutentags_generate_on_new = 0
let g:gutentags_ctags_exclude = ['.mypy_cache/*']
let g:gutentags_ctags_extra_args = ['--map-c=+(DESCRIPTION)']
" let g:gutentags_trace=1

""" VimWiki
let g:vimwiki_folding = 'expr'
let wiki = {}
let wiki.path = '~/docs/notes/'
let wiki.path_html = '~/docs/notes/html/'
let wiki.template_path = '~/.config/vim/'
let wiki.automatic_nested_syntaxes = 1
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.custom_wiki2html = 'vimwiki_markdown'
" let wiki.html_filename_parameterization = 1 " I don't need this I fixed it
let g:vimwiki_list = [wiki]
let g:vimwiki_key_mappings = {
            \ 'headers': 0,
            \ 'mouse': 1
            \ }

""" CSV
let g:csv_highlight_column = 'y'
function! CSVStatus()
    if exists("*CSV_WCol")
        return CSV_WCol()
    endif
    return ''
endfunc

""" Coq
let g:coqtail_project_files = ['/home/vlad/.frama-c/_CoqProject']
let g:coqtail_imap_prefix = '<C-c>'
au Filetype coq silent! unmap <leader>c

hi def CoqtailChecked guibg=darkgreen
hi def CoqtailSent    guibg=darkblue

" }}}1

au filetype coq let g:vlad_symbol_map='/'
au filetype tex let g:vlad_symbol_map='<Plug>'
source $HOME/.config/vim/symbols.vim

au BufNewFile,BufRead *.jenkins setf groovy

" Solid Sands

set path+=$HOME/supertest/top/SuperTest/
set path+=$HOME/supertest/top/SuperTest/suite/
set path+=$HOME/supertest/projects/Coverage/GCC-annotated/src/libstdc++-v3/src/
set path+=/usr/local/solidsands/gcc/include/c++/11.2.0/

function! s:stdread(arg)
    let res = split(system('std-line ' . expand('%') . ' ' . a:arg), '\n')
    echo res
    if (len(res) >= 2)
        execute "edit +" . res[-1] . " " . res[-2]
    endif
endfunction

" noremap tt :call s:stdread()<return>
command! -nargs=+ Std :call s:stdread('<args>')
noremap tt :Std 0<return>

""" Colorcolumn
if has('nvim')
lua<<EOF
    require("virt-column").setup{
        char = '│'
    }
EOF
endif
set colorcolumn=81
