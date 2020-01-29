""
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
"---------- Powerline -------------
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
scriptencoding utf-8
set rtp+=/usr/lib/python3.7/dist-packages/powerline/bindings/vim
set laststatus=2
let g:powerline_pycmd="py3"

"--------------------------------
filetype plugin indent on
set runtimepath^=~/.vim/pack/my-plugins/start/ctrlp.vim

let mapleader = ","

"----------vim config shortcuts--------
nnoremap <leader>vrc :split ~/.vimrc<cr>
nnoremap <leader>so :so %<cr>

" ----------- VIM General config ---------
syntax enable
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
"set cmdheight=3          " Helps to show full execusion of commands
set ts=2                  " Tab stop width
set path=.,,**            " Set the path for vim to search for files
"set nofoldenable          " Dont fold by default"
set foldmethod=indent     " Lets you hide sections
set laststatus=2          " Always show statusbar - Need for powerline to show
set noswapfile            " Self explanatory. No bloody swapfile already!
set startofline           " When doing things like gg or G, will move cursor to start of line
set modifiable            " Enable buffers to be edited
set shiftwidth=2
set expandtab
set smarttab
set expandtab
set autowrite
set lazyredraw
set nolist
set listchars=eol:¬
set hidden
set hlsearch              " Highlight search items
set incsearch             " Jump to the next search item as you type
set nomodeline            " Ensure the vulnerability is covered
set modelines=0           " Just to be sure :o)
hi Search cterm=italic ctermfg=black ctermbg=DarkMagenta

"-------- Set colourscheme -----------
colorscheme codedark
"hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE

"-------Bind EJS files to HTML-------
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hbs set filetype=xml
au BufNewFile,BufRead *.eex set filetype=html
"au BufNewFile,BufRead *.erb set filetype=html

"--------Change to current directory of file
" % = name of current file, %:p = gives the full path, %:p:h = gives its
" directory ("head" of full path)
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"------ Reload screen -----------
nnoremap <leader>r :redraw!<CR>

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
map tt :tabnew<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

"-------Navigate buffers---------
map [b :bnext<CR>
map ]b :bprevious<CR>


"----------CopyPasta in Tmux-----------
"----------Not working-----------------
" copy a whole line to the clipboard
"noremap ty "+y
"noremap tY "+Y
" put the text from clipboard AFTER the cursor
"noremap tp "+p
" put the text from clipboard BEFORE the cursor
"noremap tP "+P

"--------- Buffer -------------

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

"------------- New lines without entering into insert mode --------
nnoremap ou O<ESC>
nnoremap od o<ESC>

"----------Gutentags https://github.com/ludovicchabant/vim-gutentags.git
set statusline+=%{gutentags#statusline()} "show when its working
let g:gutentags_cache_dir = '~/.allTags'

"--------bling/vim-airline settings---------
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols='unicode'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod=':t'
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#fnamecollapse = 1
"let g:airline#extensions#tabline#fnametruncate = 0
"let g:airline#extensions#hunks#non_zero_only = 1

" Show PASTE if in paste mode
"let g:airline_detect_paste = 1

"let g:airline_inactive_collapse=1
"let g:airline#extensions#bufferline#enabled = 0

"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_theme = 'codedark'
"let g:airline_theme = 'minimalist'

" Strips whitespace
nnoremap <leader>fx :%s/\s\+$//<cr>:let @/=''<CR>

" --- type ° to search the word in all files in the current dir
nmap ª :Ag <C-r>=expand("<cword>")<cr><cr>
nnoremap <leader>k :exe 'Ag!' expand('<cword>')<cr>
nnoremap <space>/ :Ag! <space>

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
let g:goldenview__enable_at_startup = 0
"nmap <silent> <C-u> <Plug>GoldenViewResize
nmap <silent> <C-g> <Plug>GoldenViewSplit
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
let g:jsx_ext_required = 1

"-------------ALE-------------
"let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_set_highlights=1
highlight ALEError ctermfg=black ctermbg=DarkRed
highlight ALEWarn ctermfg=black ctermbg=DarkYellow
highlight ALEErrorSign ctermfg=black ctermbg=DarkRed
highlight ALEWarningSign ctermfg=black ctermbg=DarkYellow

"-------------- vim test -----------------
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" make test commands execute using dispatch.vim
let test#strategy = "vimux"

"------------https://github.com/edkolev/tmuxline.vim----------
"let g:airline#extensions#tmuxline#enabled = 1
"let g:tmuxline_powerline_separators = 1
"let airline#extensions#tmuxline#snapshot_file = "~/.tmuxline.conf"
"let g:tmuxline_preset = {
      "\'a'    : '#S',
      "\'win'  : ['#I #W'],
      "\'cwin' : ['#I #W #F'],
      "\'y'    : ['%R %a %Y'],
      "\'z'    : '#H'}

"------------https://github.com/xolox/vim-notes-------------
let g:notes_directories = ['~/Code/notes']


"------------ vim clap -----------------
let g:clap_provider_dotfiles = {
      \ 'source': ['~/.vimrc', '~/.bashrc', '~/.tmux.conf', '~/.tmuxline.conf', '~/.bash_it'],
      \ 'sink': 'e',
      \ }
