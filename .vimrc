set nocompatible                                    " This must be first, because it changes other options as side effect
set number                                          " turns on line numbering
call pathogen#infect()                              " pathogen.vim is a super easy way to install plugins and runtimes files
set ignorecase                                      " ignore case in search
set smartcase                                       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                                        " highlight search terms
set incsearch                                       " show search matches as you type
set history=1000                                    " remember more commands and search history
set undolevels=1000                                 " use many muchos levels of undo
set title                                           " change the terminal's title
syntax on                                           " turns on syntax highlighting
set showmatch
filetype on                                         " turns on file specific syntax
filetype plugin on                                  "
"filetype indent on                                  "
"set mouse=a                                        " turns on mouse mode, kinda weird
colorscheme mustang                                 " pretty colours
let NERDTreeShowHidden=1                            " puts hidden files into NERDTree

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
