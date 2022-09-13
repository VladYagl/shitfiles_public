" nmap <Leader>c :Vimwiki2HTML<return>
"             \ :silent !kill -HUP surf<return>
"             \ :redraw!<return>
" nmap <Leader>r :silent !surf -C /home/vlad/.surf/styles/dark.css -z 1.25
"             \ file:///home/vlad/docs/notes/html/index.html
"             \ >/dev/null 2>/dev/null &<return>

nmap - <Plug>VimwikiAddHeaderLevel
nmap _ <Plug>VimwikiRemoveHeaderLevel
nmap [[ <Plug>VimwikiGoToPrevHeader
nmap ]] <Plug>VimwikiGoToNextHeader

nmap <C-k> <Plug>VimwikiGoToPrevSiblingHeader
nmap <C-j> <Plug>VimwikiGoToNextSiblingHeader
nmap [u <Plug>VimwikiGoToParentHeader
nmap ]u <Plug>VimwikiGoToParentHeader

nmap glk <Plug>VimwikiToggleListItem
nmap <buffer> <Leader>c <Plug>VimwikiToggleListItem
nmap <buffer> <Leader>C <Plug>VimwikiRemoveSingleCB
nmap <buffer> <Leader>r* :VimwikiChangeSymbolTo *<CR>
nmap <buffer> <Leader>r- :VimwikiChangeSymbolTo -<CR>
nmap <buffer> <Leader>r1 :VimwikiChangeSymbolTo 1.<CR>
nmap <buffer> <Leader>rr :VimwikiChangeSymbolTo 1.<CR>

imap <C-L><C-L> <Plug>VimwikiIncreaseLvlSingleItem
imap <C-H><C-H> <Plug>VimwikiDecreaseLvlSingleItem
nmap <C-L><C-L> <Plug>VimwikiIncreaseLvlSingleItem
nmap <C-H><C-H> <Plug>VimwikiDecreaseLvlSingleItem
