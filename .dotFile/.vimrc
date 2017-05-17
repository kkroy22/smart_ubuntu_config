#execute pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

#magic key for fire
nnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
vnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
nnoremap <C-c><C-v> :SlimuxREPLConfigure<CR> 


