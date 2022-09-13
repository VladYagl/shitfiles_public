function vifm
    set dst (command vifmrun --choose-dir - $argv)
    if [ -z "$dst" ]
    else
        cd "$dst"
    end
end

