set number
set relativenumber

set expandtab
set nowrap

set tabstop=2
set shiftwidth=2
set softtabstop=2

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Completions
Plug 'roxma/nvim-completion-manager'
" JavaScript 
Plug 'roxma/nvim-cm-tern', { 'do': 'npm install' }
" Go
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'nvim' }

" Distraction-free writing
Plug 'junegunn/goyo.vim'

" Discord rich presence
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Completion Manager mappings
inoremap <expr> <Tab> pumvisible() ? "\<Enter>" : "\<Tab>"
inoremap <expr> <A-j> pumvisible() ? "\<C-n>" : "\<A-j>"
inoremap <expr> <A-k> pumvisible() ? "\<C-p>" : "\<A-k>"

" Scroll without moving cursor
noremap <expr> <A-j> "\<C-e>"
noremap <expr> <A-k> "\<C-y>"
