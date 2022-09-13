function fish_user_key_bindings
    bind \cl forward-char 
    bind \ch backward-char 
    bind \cf echo\ -n\ \(clear\ \|\ string\ replace\ \\e\\\[3J\ \"\"\)\;\ commandline\ -f\ repaint 

    bind \ck up-or-search
    bind \cj down-or-search
    bind \co 'vifm . ; commandline -f repaint'
    bind \cn 'neomutt ; commandline -f repaint'

    bind \cy commandline\ \|\ xclip\ -selection\ clipboard

    bind \cf fzf-file-widget
    # bind \ci fzf-history-widget
    # bind \cc fzf-cd-widget

    if bind -M insert > /dev/null 2>&1
        bind -M insert \cf fzf-file-widget
        # bind -M insert \ci fzf-history-widget
        # bind -M insert \cc fzf-cd-widget
    end
end

