" Configuration file for vim
" set modelines=0    " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility remove change the following statements
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif    " Remember last position

autocmd InsertEnter * se cul          " Highlight current line
autocmd InsertLeave * se nocul
colorscheme murphy                    " Color theme

set autoindent                        " Auto indent
set backspace=2                       " More powerful backspacing
set clipboard^=unnamed,unnamedplus
set confirm                           " Confirming message while handling an unsaved or readonly file
set cursorline                        " Cursorline or current line
set encoding=UTF-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1    " File encodings
set gdefault                          " Inline replace
set guifont=UnicodeSupporting:h13     " Fonts
" set guifont=KaiXinSong:h14
" set guifont=MingLiU-ExtB:h14
set guifontwide=MingLiU-ExtB:h13,UnicodeSupporting:h13,MingLiU:h13,KaiXinSong:h13    " Chinese Fonts
" set helplang=cn                     " Help language
" set hlsearch                        " Highlight searched words
set incsearch                         " Highlight searched words by characters
set langmenu=zh_CN.UTF-8
set laststatus=2                      " Keep status bar
set nocompatible                      " Use Vim defaults instead of 100% vi compatibility
set noexpandtab                       " Don't replace tabs with spaces
" set nowrap                          " No wrap while long line
set number                            " Show line number
set paste                             " Paste mode
set shiftwidth=4                      " Shift width
set showmatch                         " Highlight matched brackets, square brackets and braces
set smartindent                       " Smart indent
" set softtabstop=62
set tabstop=4                         " Tab width

syntax on                             " Highlight syntax

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %
