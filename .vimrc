""
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
scriptencoding utf-8

filetype plugin indent on

let mapleader = ","
let g:neocomplete#enabled_at_startup = 1

"--------Merlin config
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

"----------vim config shortcuts--------
nnoremap <leader>vrc :split ~/.vimrc<cr>
nnoremap <leader>so :so %<cr>

" ----------- General stuff ---------
syntax enable
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
set shortmess+=T
set cmdheight=4 " helps to show full execusion of commands
set ts=2 " tab stop width.
set path=.,,** " set the path for vim to search for files
set foldmethod=syntax  "Lets you hide sections
set nofoldenable      "dont fold by default"
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

"------- Split screen vertically ----------
"nnoremap <leader>w <C-w>v<C-w>l

"------- Split screen horizontally ----------
"nnoremap <leader>h <C-w>s<C-w>k

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

"----------Tern for js https://github.com/ternjs/tern_for_vim.git
" :Tern (then tab for options)
"----------Gutentags https://github.com/ludovicchabant/vim-gutentags.git
set statusline+=%{gutentags#statusline()} "show when its working
let g:gutentags_cache_dir = '~/.allTags'

"----------MRU https://github.com/vim-scripts/mru.vim
" :MRU
"---------Expand region https://github.com/terryma/vim-expand-region.git
" use it by making a selection then exapnd with + and reduce with -

"------------NarrowRegion
" <leader>nr

"-----------Vim TextObj - user https://github.com/kana/vim-textobj-user.git
" all other textobj plugins relies on this one
"-----------Vim TextObj - entire https://github.com/kana/vim-textobj-entire.git
" ae = select entire buffer (like ggvG)
" ie = select entire buffer bar the leading and trailing empty lines

"----------Vim TextObj - indent https://github.com/kana/vim-textobj-indent.git
"In visual mode:
" ai = select a block of lines similarily indented to the current line
" ii = as above but exclude empty lines

"---------Vim TextObj - folding https://github.com/kana/vim-textobj-fold.git
" az
" iz
"----------Tabular https://github.com/godlygeek/tabular.git
" Trigger alignment for cucumber examples | taken from http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" create mappings
"if exists(":Tabularize")
"nmap <Leader>a= :Tabularize /=<CR>
"vmap <Leader>a= :Tabularize /=<CR>
"nmap <Leader>a: :Tabularize /:\zs<CR>
"vmap <Leader>a: :Tabularize /:\zs<CR>
"endif

"------ vim-contropspace --------
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

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

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" Sensible defaults
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1
"let g:easytags_file = '~/.vimtags' - This is the default location anyways.

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with ,b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
"hi clear SignColumn

" In vim-airline, only display 'hunks' if the diff is non-zero
"let g:airline#extensions#hunks#non_zero_only = 1

" Strips whitespace
nnoremap <leader>fx :%s/\s\+$//<cr>:let @/=''<CR>

"-------- janko-m/vim-test -----------
"let g:test#strategy = 'iterm'
"nmap <silent> <leader>tn :testnearest<cr>
"nmap <silent> <leader>tf :testfile<cr>
"nmap <silent> <leader>ts :testsuite<cr>
"nmap <silent> <leader>tl :testlast<cr>
"nmap <silent> <leader>tv :TestVisit<CR>

" ------------Unite-------------
"   depend on vimproc
"   ------------- VERY IMPORTANT ------------
"   you have to go to .vim/plugin/vimproc.vim and do a ./make
"   -----------------------------------------
try
  let g:unite_source_rec_async_command=['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '']
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

" search a file in the filetree
"nnoremap <space><space> :<C-u>Unite -no-split -start-insert -buffer-name=files file_rec/async:!<cr>
" search buffers
nnoremap <space>b :<C-u>Unite -no-split -start-insert -buffer-name=buffers buffer<cr>
" search mru
nnoremap <space>m :<C-u>Unite -no-split -start-insert -buffer-name=mru file_mru<cr>
" search through yank history
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :<C-u>Unite -no-split -buffer-name=yank history/yank<CR>

" reset not it is <C-l> normally
nnoremap <space>r <Plug>(unite_restart)

" --- type ° to search the word in all files in the current dir
nmap ª :Ag <C-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag

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

"-----------xolox/Vimnotes
":let g:notes_directories = ['~/Dropbox/Shared Notes']

"------------junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"------------- tslime ------------
"let g:tslime_ensure_trailing_newlines = 1
"let g:tslime_normal_mapping = '<leader>t'
"let g:tslime_visual_mapping = '<leader>t'
"let g:tslime_vars_mapping = '<leader>T'

"-----------ctrlspace------------
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

"-----------'matze/vim-move'-------------"
let g:move_key_modifier = 'C'
"this creates the key mappings
" <C-k> Move up
" <C-j> Move down

"-------------tab completion------------- https://github.com/Shougo/deoplete.nvim/issues/157"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"-------------Merlin-----------------
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     "execute "set rtp+=" . g:opamshare . "/merlin/vim"

"" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
"let s:opam_share_dir = system("opam config var share")
"let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

"let s:opam_configuration = {}

"function! OpamConfOcpIndent()
  "execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
"endfunction
"let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

"function! OpamConfOcpIndex()
  "execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
"endfunction
"let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

"function! OpamConfMerlin()
  "let l:dir = s:opam_share_dir . "/merlin/vim"
  "execute "set rtp+=" . l:dir
"endfunction
"let s:opam_configuration['merlin'] = function('OpamConfMerlin')

"let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
"let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
"let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
"for tool in s:opam_packages
  "" Respect package order (merlin should be after ocp-index)
  "if count(s:opam_available_tools, tool) > 0
    "call s:opam_configuration[tool]()
  "endif
"endfor
"" ## end of OPAM user-setup addition for vim / base ## keep this line

"let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
"execute "set rtp+=".s:ocamlmerlin."/vim"
"execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
"" ## added by OPAM user-setup for vim / ocp-indent ## 15770467c60c7c0b04d786b70a772c1e ## you can edit, but keep this line
"if count(s:opam_available_tools,"ocp-indent") == 0
  "source "/home/codeeva/.opam/4.04.0/share/vim/syntax/ocp-indent.vim"
"endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line

"--------------ctrlp---------------
nnoremap g:ctrlp_map <space><space> :CtrlP<cr>

"-------------https://github.com/shime/vim-livedown--------------
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1

" should the browser window pop-up upon previewing
let g:livedown_open = 1
