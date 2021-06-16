XDG_CONFIG_HOME=$(HOME)/.config
XDG_CACHE_HOME=$(HOME)/.cache
XDG_DATA_HOME=$(HOME)/.local/share
XDG_BIN_HOME=$(HOME)/.local/bin
DOTDIR=$(HOME)/.local/dotfiles
BRANCH=desktop

update:
	git submodule foreach git pull

configure:
	@echo "Installing dependencies"
	@which rsync > /dev/null || pacman --noconfirm -S rsync
	@which dunst > /dev/null || pacman --noconfirm -S dunst
	@which firefox > /dev/null || pacman --noconfirm -S firefox
	@which i3 > /dev/null || pacman --noconfirm -S i3-gaps i3blocks
	@which mpd > /dev/null || pacman --noconfirm -S mpd mpc
	@which mpv > /dev/null || pacman --noconfirm -S mpv
	@which neomutt > /dev/null || pikaur --noconfirm -S neomutt-git
	@which nvim > /dev/null || pacman --noconfirm -S neovim-git
	@which newsboat > /dev/null || pikaur --noconfirm -S newsboat-git
	@which ncmpcpp > /dev/null || pacman --noconfirm -S ncmpcpp
	@which ranger > /dev/null || pikaur --noconfirm -S ranger-git
	@which tmux > /dev/null || pacman --noconfirm -S tmux
	@which Xorg > /dev/null || pacman --noconfirm -S xorg-server xcompmgr xorg-xinit
	@which zathura > /dev/null || pikaur -S zathura-git zathura-pdf-mupdf
	@which zsh > /dev/null || pacman --noconfirm -S zsh zsh-syntax-highlighting
	@echo "Creating directories"
	@mkdir -p $(XDG_CONFIG_HOME)
	@mkdir -p $(XDG_CACHE_HOME)
	@mkdir -p $(XDG_DATA_HOME)
	@mkdir -p $(XDG_BIN_HOME)
	@echo "Cloning repositories"
# add suckless builds

install: configure
	@echo "Deploying dotfiles"
	@git clone --separate-git-dir=$(DOTDIR) https://github.com/baj0k/dotfiles.git $(HOME)/dotfiles
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) checkout $(BRANCH)
	@rsync --recursive --exclude '.git' $(HOME)/dotfiles/ $(HOME)
	@rm --recursive $(HOME)/dotfiles
	@echo "Dotfiles post-configuration"
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) remote set-url origin git@github.com:baj0k/dotfiles.git
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) config status.showUntrackedFiles no
	@cat $(HOME)/.gitignore >> $(DOTDIR)/info/exclude
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) update-index --assume-unchanged "README" ".gitignore"
	@rm README .gitignore
