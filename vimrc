"Key bindings
    "Avoid pressing Esc
    inoremap kj <Esc>
    cnoremap kj <Esc>
    "prevent entering Ex mode
    nmap Q <Nop>

"Display
set number         "Show line numbers
set relativenumber "Make line numbers relative (except current line)
set colorcolumn=80 "Show vertical guide
set laststatus=2   "Always show status line
set linebreak      "Break wrapped lines between words
syntax enable
colorscheme $VIM_COLOR_SCHEME "Use color scheme stored in environment variable

"Tab behavior
set autoindent    "Copy indent from current line when starting new line
set tabstop=4     "Tab width
set shiftwidth=4  "Indent width
set softtabstop=4 "Number of spaces a tab counts for
set expandtab     "Convert tab to spaces

"Searching
set ignorecase "Make searching case-insensitive
set smartcase  "Become case-sensitive if capital letters are used
set incsearch  "Search as you type

"Miscellaneous
set shortmess+=I               "Disable default Vim startup message 
set backspace=indent,eol,start "Make backspace behavior more intuitive

"Use Vim as a word processor
function! Writer()
    setlocal spell spelllang=en_us "enable spellcheck
    setlocal textwidth=79     "set column after which text is broken
    setlocal formatoptions=t1 "auto-wrap text using textwidth (t) and
                              "don't break a line after a single character (1)
endfunction
com! WR call Writer()

