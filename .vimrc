" Basic configuration
	set encoding=utf-8
	set number relativenumber
	set viminfo="NONE"
	set splitbelow splitright

" Autocompletion
	set wildmode=longest,list,full

" Shellcheck keymap < \ + s >
	map <leader>s :!clear && shellcheck %<CR>

" Run xrdb after .Xresources are updated
	autocmd BufWritePost ~/.Xresources !xrdb %

" Copy / Paste mapping
	vnoremap <C-c> "+y
	map <C-v> "+p
