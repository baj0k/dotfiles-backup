XDG_CONFIG_HOME=$(HOME)/.config
XDG_CACHE_HOME=$(HOME)/.cache
XDG_DATA_HOME=$(HOME)/.local/share
XDG_BIN_HOME=$(HOME)/.local/bin
DOTDIR=$(HOME)/.local/dotfiles
SBDIR=$(HOME)/repos/suckless-builds
BRANCH=desktop

#update:
#   add rebase on top of main branch
#	git submodule foreach git pull

clean:
	@echo "---Deleting repositories---"
	@rm -rf $(DOTDIR) $(SBDIR)

configure: clean
	@echo "---Creating directories---"
	@mkdir -p $(XDG_CONFIG_HOME)
	@mkdir -p $(XDG_CACHE_HOME)
	@mkdir -p $(XDG_DATA_HOME)
	@mkdir -p $(XDG_BIN_HOME)
	@mkdir -p $(HOME)/ctf
	@mkdir -p $(HOME)/downloads
	@mkdir -p $(HOME)/fieldwork
	@mkdir -p $(HOME)/music
	@mkdir -p $(HOME)/pictures
	@mkdir -p $(HOME)/repos
	@mkdir -p $(HOME)/tmp
	@mkdir -p $(HOME)/videos
	@echo "---Cloning repositories---"
	@git clone https://github.com/baj0k/SB.git $(SBDIR)
	@git clone --separate-git-dir=$(DOTDIR) https://github.com/baj0k/dotfiles.git $(HOME)/dotfiles
	@echo "---Deploying dotfiles---"
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) checkout $(BRANCH)
	@rsync --recursive --exclude '.git' --exclude 'README' --exclude 'Makefile' $(HOME)/dotfiles/ $(HOME)
	@rm --recursive $(HOME)/dotfiles
	@echo "---Git repository post-configuration---"
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) remote set-url origin git@github.com:baj0k/dotfiles.git
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) config status.showUntrackedFiles no
	@git --git-dir=$(DOTDIR) --work-tree=$(HOME) update-index --assume-unchanged "README" ".gitignore" "Makefile"
	@mv $(HOME)/.gitignore $(DOTDIR)/info/exclude
	@echo "\033[92m---Manual action required!---\033[0m"
	@echo "Link firefox configuration files to your firefox profile:"
	@echo "ln -s $(XDG_CONFIG_HOME)/ffox/chrome $(HOME)/.mozilla/firefox/\033[91m[profile]\033[0m"

install:
	@echo "---Installing software---"
	@which rsync > /dev/null || pacman --noconfirm -S rsync
	@which git > /dev/null || pacman --noconfirm -S git
	@which dunst > /dev/null || pacman --noconfirm -S dunst
	@which firefox > /dev/null || pacman --noconfirm -S firefox
	@which i3 > /dev/null || pacman --noconfirm -S i3-gaps i3blocks
	@which mpd > /dev/null || pacman --noconfirm -S mpd mpc
	@which mpv > /dev/null || pacman --noconfirm -S mpv
	@which neomutt > /dev/null || paru --noconfirm -S neomutt-git
	@which nvim > /dev/null || pacman --noconfirm -S neovim-git
	@which newsboat > /dev/null || paru --noconfirm -S newsboat-git
	@which ncmpcpp > /dev/null || pacman --noconfirm -S ncmpcpp
	@which ranger > /dev/null || paru --noconfirm -S ranger-git
	@which tmux > /dev/null || pacman --noconfirm -S tmux
	@which Xorg > /dev/null || pacman --noconfirm -S xorg-server xcompmgr xorg-xinit
	@which zathura > /dev/null || paru -S zathura-git zathura-pdf-mupdf
	@which zsh > /dev/null || pacman --noconfirm -S zsh zsh-syntax-highlighting
	@echo "---Installing suckless-builds---"
	@make install clean -C $(SBDIR)/dmenu
	@make install clean -C $(SBDIR)/sent
	@make install clean -C $(SBDIR)/slock
	@make install clean -C $(SBDIR)/st
	@make install clean -C $(SBDIR)/tabbed
