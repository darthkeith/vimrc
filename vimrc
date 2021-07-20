"Display
set number         "Show line numbers
set relativenumber "Make line numbers relative
set colorcolumn=80 "Show vertical guide
set laststatus=2   "Always show status line
colorscheme forest-night

"Tab behavior
set smartindent
set tabstop=4     "Tab width
set shiftwidth=4  "Indent width
set softtabstop=4 "Number of spaces a tab counts for
set expandtab     "Convert tab to spaces

"Searching
set ignorecase "Make searching case-insensitive
set smartcase  "Become case-sensitive if capital letters are used
set incsearch  "Search as you type

"Key bindings to avoid pressing Esc
inoremap kj <Esc>
cnoremap kj <Esc>

"Miscellaneous
set shortmess+=I               "Disable default Vim startup message 
set backspace=indent,eol,start "Make backspace behavior more intuitive
nmap Q <Nop>                   "prevent entering Ex mode

"Use Vim as a Word Processor
function! Writer()
    setlocal spell spelllang=en_us
    setlocal textwidth=79     "column after which text is broken
    setlocal formatoptions=t1 "auto-wrap text using textwidth (t) and
                              "don't break a line after a single character (1)
    setlocal linebreak
    setlocal nonumber
    setlocal norelativenumber
endfunction
com! WR call Writer()

"Prevent use of arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
