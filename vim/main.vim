" My vim config

" Put your non-Plugin stuff after this line

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'dir',
                        \ 'undo', 'line', 'changes', 'mixed']

" UltiSnip configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" My settings
syntax on

set number
set laststatus=2
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set smartindent
set autoindent
set incsearch
set smartcase
set clipboard=unnamed

" Color Scheme

let g:falcon_lightline = 1
let g:lightline = {
      \ 'colorscheme': 'falcon',
      \ }
let g:falcon_airline = 1
let g:airline_theme = 'falcon'
colorscheme falcon

"  let g:airline_theme='luna'
"  colorscheme luna

vnoremap . :normal .<CR>
inoremap jk <ESC>
nmap <SPACE> <leader>

nnoremap <leader>fc :%! css-beautify<CR>
nnoremap <leader>fh :%! html-beautify<CR>
nnoremap <leader>fj :%! js-beautify<CR>

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>b :TagbarToggle<CR>

if has("gui_running")
  set termguicolors
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cDEFAULT
  endif
else
  set encoding=utf-8
endif

" Set correct file encoding
set fileencodings=utf-8,cp1251

" Vim-Asciidoc plugin sets compiler by default to asciidoc
" Here we set it to asciidoctor
" autocmd Filetype asciidoc compiler !asciidoctorj -r asciidoctor-diagram <afile>
" autocmd BufWritePost asciidoc !asciidoctorj -r asciidoctor-diagram <afile>
"augroup asciidoctor
"  autocmd BufWritePost *.adoc,*asciidoc silent !start /min asciidoctorj -r asciidoctor-diagram <afile>
"augroup END
