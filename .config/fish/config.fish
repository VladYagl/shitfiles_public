# Colors in man
set -Ux LESS_TERMCAP_md (printf "\e[01;31m")
set -Ux LESS_TERMCAP_me (printf "\e[0m")
set -Ux LESS_TERMCAP_se (printf "\e[0m")
set -Ux LESS_TERMCAP_so (printf "\e[01;44;33m")
set -Ux LESS_TERMCAP_ue (printf "\e[0m")
set -Ux LESS_TERMCAP_us (printf "\e[01;32m")

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ccat='highlight --out-format=ansi --force'
# alias vim=nvim

# Direcotry shortcuts
abbr --add media 'cd /run/media/vlad'

abbr --add tmux 'tmux attach'

# ~/.profile
set -gx EDITOR nvim
set -gx TERMINAL st
set -gx READER zathura
set -gx BROWSER firefox

set -gx GOPATH "$HOME/.local/share/go"
set -gx NLTK_DATA "$HOME/.local/share/nltk_data"

# Adds `~/.scripts` and all subdirectories to $PATH
set -gx PATH $PATH (find "$HOME/.scripts/" -type d)
set -gx PATH $PATH "$HOME/.mathlib/bin/"
set -gx PATH $PATH "$HOME/.elan/bin/"
set -gx PATH $PATH "$HOME/.local/bin/"
set -gx PATH $PATH "$HOME/.local/share/go/bin/"
set -gx PATH $PATH "$HOME/.gem/ruby/2.7.0/bin/"
set -gx PATH $PATH "$HOME/.cargo/bin/"

source "$HOME/.config/fish/todoist.fish"

# for valgrind
set -x DEBUGINFOD_URLS "https://debuginfod.archlinux.org"

# for exec_test
set -x EXEC_USE_STUB 'yes'
# set -x EXEC_RUN_BOTH 'yes'

complete -c wpg -s s -f -a '(wpg -l)'
complete -c wpg -s d -f -a '(wpg -l)'

fzf_key_bindings

# opam configuration
source /home/vlad/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Start graphical server if i3 not already running.
[ (tty) = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
