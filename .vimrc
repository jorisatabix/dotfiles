" BASIC SETUP
"https://vim.fandom.com/wiki/Accessing_the_system_clipboard (install vim-gtk)
set clipboard=unnamed
set nocompatible
let mapleader=","
set number relativenumber
set nu rnu

" Cursor for insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast


" Syntax and filetype for netrw
syntax enable
colorscheme jellybeans
filetype plugin on

" FINDING FILES

" Search into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu


" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" ELIXIR
setlocal formatprg=mix\ format\ -

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" ELIXIR
Plug 'elixir-editors/vim-elixir'

" Airline (tabs)
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

" Targets (text objects)
Plug 'wellle/targets.vim'

" Commenting
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()
