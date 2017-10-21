source  ~/bundle/My-Sweet-Little-Sys/nix/dotfile/vim/plugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle/{}', '~/bundle/My-Sweet-Little-Sys/nix/dotfile/vim/plugins/{}')
filetype plugin indent on

" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number

	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	set hlsearch
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

	map <tab> %

	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	set mouse=a
	set incsearch



"slimux
"I have this built into the script, which is not
"what the original has
nnoremap <C-b> :SlimuxREPLSendLine<CR>
vnoremap <C-b> :SlimuxREPLSendLine<CR>
nnoremap <C-v> :SlimuxREPLConfigure<CR>


