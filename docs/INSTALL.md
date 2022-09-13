# Arch Installation

## Things that I need from pacman

Packages | Comments
--- | ---
libx11 libxft libxinerama go| *this for building yay, st and dmenu*
vim newvim                  | *curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim*
xorg-server xorg-xinit      |
git                         |
i3-gaps i3lock i3wsr-git    |
fish                        | *chsh -s /usr/bin/fish*
fzf                         | *fish will complain without it*
xbindkeys light             | *for laptop* 
xwallpaper                  |
pulseaudio                  |
polsemixer                  |
xsel                        |
networkmanager              |
usidkie                     |
maim xclip                  | *this two for screenshots*
vifm                        |
sxiv feh                    |
poppler                     | *for preview pdfs in vifm*
dunst                       |
dash                        | *sudo ln -sfT dash /usr/bin/sh*
firefox                     |
zathura zathura-pdf-mupdf zathura-djvu |
highlight                   |
network-manager-applet      |
xorg-xprop                  |
xorg-xinput                 |
ntfs-3g                     |
clang                       |
jq                          | for multiple scripts
tmux                        |
lxappearance                | *this combind with wpgtk should be enough for gtk*
pacman-contrib              | *for polybar updates script*

fonts
* ttf-font-awesome
* noto-fonts
* ttf-dejavu
* ttf-roboto
* ttf-liberation

## Install from github manually

* Make a folder for git staff
    ```sh
    mkdir Src
    cd Src
    ```

* Install yay
    ```sh
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    ```

* Install my custom builds
    ```sh
    git clone https://github.com/VladYagl/st
    cd st/
    sudo make install
    cd ..

    git clone https://github.com/VladYagl/dmenu
    cd dmenu
    sudo make clean install
    ```
    
## Things I need from AUR

After installing yay:
- discord
- telegram-desktop
- polybar
- nerd-fonts-complete
- xcwd-git (for opening terminal in same folder)
- python-ueberzug

For colors and wallpapers
- python-pywal
- xsettingsd
- wpgtk-git

## General stuff
- Make fish default shell: ``chsh -s `which fish` ``
- Set time zone: ``timedatectl set-timezone Shit/Land`` fish can autocomplete it
- Time sync: https://wiki.archlinux.org/index.php/Chrony
- To fix firefox right click: about:config ---> ui.context_menus.after_mouseup == true

- For laptop: edit ``/etc/X11/xorg.conf.d/30-touchpad.conf`` with
    ```config
    Section "InputClass"
            Identifier "libinput touchpad catchall"
            MatchIsTouchpad "on"
            MatchDevicePath "/dev/input/event*"
            Option "NaturalScrolling" "true"
            Driver "libinput"
    EndSection
    ```
