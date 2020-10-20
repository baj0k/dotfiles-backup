" Neovim conf file

" Plugins


" Basic configuration
	set encoding=utf-8
	set number relativenumber
	set viminfo="NONE"
	syntax on

" Spaces & Tabs {{{
set tabstop=4      
set softtabstop=4 
set shiftwidth=4 
set expandtab   
set autoindent
set copyindent 

" Autocompletion
	set wildmode=longest,list,full

" Window split
	set splitbelow splitright
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Run xrdb after .Xresources are updated
	autocmd BufWritePost *Xresources !xrdb %

