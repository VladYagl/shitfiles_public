set t_vb=

set guioptions+=c
" set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

nme Session.Save  :call <SNR>8_SaveVimSesn()<CR>
nme Session.Save  <C-C>:call <SNR>8_SaveVimSesn()<CR><C-\><C-G>
nme Session.Save  <C-C>:call <SNR>8_SaveVimSesn()<CR><C-\><C-G>
nme Session.Save  <C-C>:call <SNR>8_SaveVimSesn()<CR><C-\><C-G>

nme Session.Load  :call <SNR>8_LoadVimSesn()<CR>
nme Session.Load  <C-C>:call <SNR>8_LoadVimSesn()<CR><C-\><C-G>
nme Session.Load  <C-C>:call <SNR>8_LoadVimSesn()<CR><C-\><C-G>
nme Session.Load  <C-C>:call <SNR>8_LoadVimSesn()<CR><C-\><C-G>

set lines=50 columns=200
