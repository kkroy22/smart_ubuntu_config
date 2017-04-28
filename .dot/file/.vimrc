"vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"slimux
"I have this built into the script, which is not
"what the original has
nnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
vnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
nnoremap <C-c><C-v> :SlimuxREPLConfigure<CR> 


