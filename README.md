# My dotfiles rice, feel free to use them

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
alias mdot='git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME'
git init --bare $HOME/.my_dotfiles
mdot remote add origin git@github.com:hybrydyzacja/my_dotfiles.git
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.my_dotfiles https://github.com/hybrydyzacja/my_dotfiles.git my_dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my_dotfiles-tmp/ $HOME/
rm --recursive my_dotfiles-tmp
```

## Configuration
```sh
alias mdot='git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME'
mdot config status.showUntrackedFiles no
mdot remote set-url origin git@github.com:hybrydyzacja/my_dotfiles.git
mdot update-index --assume-unchanged "README.md"
```
