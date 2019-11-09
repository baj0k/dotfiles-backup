# my-dotfiles

## Setup
```sh
git init --bare $HOME/.my_dotfiles
mydotfiles remote add origin git@github.com:hybrydyzacja/my_dotfiles.git
alias mydotfiles='git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME'
```

## Replication & Configuration
```sh
git clone --separate-git-dir=$HOME/.my_dotfiles https://github.com/hybrydyzacja/my_dotfiles.git my_dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my_dotfiles-tmp/ $HOME/
rm --recursive my_dotfiles-tmp

alias mydotfiles='git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME'
mydotfiles config status.showUntrackedFiles no
mydotfiles remote set-url origin git@github.com:hybrydyzacja/my_dotfiles.git
```

## Usage
```sh
mydotfiles status
mydotfiles add .gitconfig
mydotfiles commit -m 'Clean and useful commit message'
mydotfiles push
```
