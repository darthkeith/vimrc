"Tab behavior
set smartindent "Autoindent
set tabstop=4 "Set tab width
set shiftwidth=4 "Set indent width
set expandtab "Convert tab to spaces
set softtabstop=4 "Treat groups of spaces like tabs

"Key bindings to avoid pressing Esc
inoremap kj <Esc>
cnoremap kj <Esc>

set number "Show line numbers
set relativenumber "Make line numbers relative
set laststatus=2 "Always show status line
set ignorecase "Make searching case-insensitive
set smartcase "Become case-sensitive if capitol letters are used
set incsearch "Search as you type
set backspace=indent,eol,start "Make backspace behavior more intuitive
set shortmess+=I "Disable default Vim startup message 
nmap Q <Nop> "prevent entering Ex mode
set colorcolumn=80 "Show vertical guide
colorscheme forest-night "Set colorscheme

"Prevent habit of using arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
