" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/vimfiles/plugged')

" Brief help
" :PlugInstall [name ...] [#threads]	Install plugins
" :PlugUpdate [name ...] [#threads]	Install or update plugins
" :PlugClean[!]	Remove unused directories (bang version will clean without prompt)
" :PlugUpgrade	Upgrade vim-plug itself
" :PlugStatus	Check the status of plugins
" :PlugDiff	Examine changes from the previous update and the pending changes
" :PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins

" Make sure you use single quotes

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source ~/sirius1pro/plug.vim
\| endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-shell'
Plug 'jreybert/vimagit'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-surround'

Plug 'fenetikm/falcon'
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'jansenfuller/crayon'
Plug 'agude/vim-eldar'
Plug 'davidklsn/vim-sialoquent'
Plug 'notpratheek/vim-luna'

Plug 'elzr/vim-json'
Plug 'sbdchd/neoformat'

Plug 'xolox/vim-easytags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'

"  Plug 'Yggdroot/indentLine'

" Developer Plugins
" Plug 'airblade/vim-rooter'
" Plug 'vim-syntastic/syntastic'
" Plug 'neomake/neomake'

" Plug 'artur-shaik/vim-javacomplete2'
" OR
" Plug 'valloric/YouCompleteMe '

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" All of your Plugins must be added before the following line
" Initialize plugin system
call plug#end()

