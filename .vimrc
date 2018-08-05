""
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
scriptencoding utf-8

filetype plugin indent on
set runtimepath^=~/.vim/pack/my-plugins/start/ctrlp.vim

let mapleader = ","

"----------vim config shortcuts--------
nnoremap <leader>vrc :split ~/.vimrc<cr>
nnoremap <leader>so :so %<cr>

" ----------- General stuff ---------
syntax on
colorscheme codedark
set syntax=whitespace
set list
set clipboard=unnamedplus " use system clipboard
set t_Co=256
set background=dark
set relativenumber
set number
"set undofile
set showtabline=-2
set shortmess+=a
set cmdheight=2 " helps to show full execusion of commands
set ts=2 " tab stop width.
set path=.,,** " set the path for vim to search for files
set nofoldenable      "dont fold by default"
set foldmethod=syntax  "Lets you hide sections
set laststatus=2 " Always show statusbar
set noswapfile
set startofline " When doing thing like gg or G, will move cursor to start of line
set modifiable " Enable buffers to be edited
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set expandtab
set autowrite
set lazyredraw
set hidden

"-------Bind EJS files to HTML-------
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.eex set filetype=html
"au BufNewFile,BufRead *.erb set filetype=html

"---------Neomake----------------
autocmd! BufWritePost * Neomake

"--------Change to current directory of file
" % = name of current file, %:p = gives the full path, %:p:h = gives its
" directory ("head" of full path)
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"------ Disable arrow keys ------
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"----- Remap : -------
nnoremap ; :

"-------Navigate tabs---------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" tab navigation mappings from https://github.com/fisadev/fisa-vim-config/blob/master/.vimrc
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

"--------- Buffer -------------
nnoremap <leader>bw :bw<cr>

"------ Save on losing focus -----Not sure about this one--Using this now
" because I am tmux'ing
au FocusLost * :wa

"------  Quick esc ---------
inoremap jj <ESC>

"------ Navigate split screens
nnoremap mu <C-w><C-k>
nnoremap md <C-w><C-j>
nnoremap mr <C-w><C-l>
nnoremap ml <C-w><C-h>

"------ Tame search function -----
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"------------- New lines --------
nnoremap ou O<ESC>
nnoremap od o<ESC>

"----------Gutentags https://github.com/ludovicchabant/vim-gutentags.git
set statusline+=%{gutentags#statusline()} "show when its working
let g:gutentags_cache_dir = '~/.allTags'

"--------bling/vim-airline settings---------
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod=':p:~:.'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0

" Show PASTE if in paste mode
let g:airline_detect_paste = 1

let g:airline_inactive_collapse=1
let g:airline#extensions#bufferline#enabled = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'codedark'
"let g:airline_theme = 'minimalist'

" Strips whitespace
nnoremap <leader>fx :%s/\s\+$//<cr>:let @/=''<CR>

" --- type ° to search the word in all files in the current dir
nmap ª :Ag <C-r>=expand("<cword>")<cr><cr>
nnoremap <leader>k :exe 'Ag!' expand('<cword>')<cr>
nnoremap <space>/ :Ag!  

" -------- Fugitive -------------------
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gpu :Gpush<CR>
nnoremap <leader>gpl :Gpull<CR>

" ------------- Golden View ------------
let g:goldenview__enable_default_mapping = 0
"nmap <silent> <C-u> <Plug>GoldenViewResize
nmap <silent> <C-l> <Plug>GoldenViewSplit
"nmap <silent> <C-x> <Plug>GoldenViewNext
"nmap <silent> <C-P> <Plug>GoldenViewPrevious
nmap <silent> <S-F12> <Plug>GoldenViewSwitchMain
nmap <silent> <F12> <Plug>GoldenViewSwitchToggle

" ------------UltiSnips ---------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~/.vim/UltiSnips/
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" -------------OmniCompletion
"filetype plugin on
set omnifunc=syntaxcomplete#Complete

"--------------JSHint-----------------
"hint validation
nnoremap <silent><F2> :JSHint<CR>
inoremap <silent><F2> <C-O>:JSHint<CR>
vnoremap <silent><F2> :JSHint<CR>

" show next jshint error
"nnoremap <silent><F3> :lnext<CR>
"inoremap <silent><F3> <C-O>:lnext<CR>
"vnoremap <silent><F3> :lnext<CR>

" show previous jshint error
"nnoremap <silent><F3> :lprevious<CR>
"inoremap <silent><F3> <C-O>:lprevious<CR>
"vnoremap <silent><F3> :lprevious<CR>

"---------------BBye----------------------
nnoremap <Leader>q :Bdelete<CR>

"--------------BufOnly------------
nnoremap <Leader>q. :BufOnly<CR>


"------------Vimfiler-------------
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_quick_look_command = 'gloobus preview'

noremap <silent><leader>f :<C-u>VimFilerExplorer -split -simple -winwidth=35 -explorer -no-quit<CR>

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"-----------'matze/vim-move'-------------"
let g:move_key_modifier = 'C'
"this creates the key mappings
" <C-k> Move up
" <C-j> Move down

"--------------ctrlp---------------
let g:ctrlp_map = '<space><space>'
let g:ctrlp_cmd = 'CtrlP'

"-------------https://github.com/shime/vim-livedown--------------
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1

" should the browser window pop-up upon previewing
let g:livedown_open = 1

"------------------https://github.com/pangloss/vim-javascript-------------
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_undefined            = "¿"
