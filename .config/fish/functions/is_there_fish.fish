function __ppid
    echo (ps -o ppid -p $argv[1] | tail -1 | cut -f3 -d' ')
end

function is_there_fish
    echo (ps -o cmd -p (__ppid (__ppid (__ppid $fish_pid))) | tail -1)
end
