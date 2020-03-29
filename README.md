# My dotfiles RICE
Feel free to use them

## Programs supported by this repo
+ bash
+ i3-gaps
+ mpd
+ mpv
+ neomutt
+ neovim
+ ncmpcpp
+ picom
+ ranger
+ tmux
+ zathura

## Setup
```sh
alias mdot='git --git-dir=$HOME/.local/dotfiles/ --work-tree=$HOME'
git init --bare $HOME/.local/dotfiles
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.local/dotfiles https://github.com/hybrydyzacja/dotfiles.git $HOME/dotfiles
rsync --recursive --verbose --exclude '.git' $HOME/dotfiles/ $HOME/
rm --recursive $HOME/dotfiles
```

## Configuration
```sh
alias mdot='git --git-dir=$HOME/.local/dotfiles/ --work-tree=$HOME'
mdot config status.showUntrackedFiles no
mdot remote set-url origin git@github.com:hybrydyzacja/dotfiles.git
mdot update-index --assume-unchanged "README.md"
```
