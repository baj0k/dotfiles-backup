" Basic configuration
	set encoding=utf-8
	set number relativenumber
	set viminfo="NONE"
	set splitbelow splitright
	syntax on
	colorscheme elflord

" Autocompletion
	set wildmode=longest,list,full

" Run xrdb after .Xresources are updated
	autocmd BufWritePost ~/.Xresources !xrdb %
