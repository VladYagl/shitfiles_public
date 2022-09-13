""" Windows console vim
if !has('gui_running')
    colorscheme desert
    hi CursorLine cterm=NONE ctermbg=0 ctermfg=NONE
else
    colorscheme Monokai " this magic makes darkula work"
    colorscheme darcula

    let g:crystalline_theme = 'gruvbox'
endif
