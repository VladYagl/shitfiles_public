# My Shit Files

Installation guide is [here](INSTALL.md)

## To create a new one, like this


```sh
mkdir .dotfiles
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```

## To install this one on new machine

```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:VladYagl/shitfiles.git $HOME/tmpshit
rm -r ~/tmpshit/
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
config reset --hard HEAD
```
