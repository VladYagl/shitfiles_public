function fish_prompt --description 'Write out the prompt'
    printf '%s' (set_color yellow) (whoami)
    set_color normal
    printf '@' 
    set_color purple
    printf '%s' (prompt_hostname)
    printf '%s%s%s%s%s' (set_color $fish_color_cwd) (prompt_pwd)

    if [ -n "$INSIDE_VIFM" ]
        set_color normal
        printf ' [Vifm]'
    end

    if not set -q __git_cb
        set __git_cb (set_color normal)" ("(set_color brown)(git branch 2> /dev/null | grep \* | sed 's/* //')(set_color normal)")"
    end
    
    printf '%s' $__git_cb

    set_color $fish_color_cwd
    printf '> ' (set_color normal)
end
