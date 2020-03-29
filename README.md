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
alias mdot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git init --bare $HOME/.dotfiles
mdot remote add origin git@github.com:hybrydyzacja/dotfiles.git
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/hybrydyzacja/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration
```sh
alias mdot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mdot config status.showUntrackedFiles no
mdot remote set-url origin git@github.com:hybrydyzacja/dotfiles.git
mdot update-index --assume-unchanged "README.md"
```
