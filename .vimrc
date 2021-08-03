"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
"---------- Powerline -------------
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
scriptencoding utf-8
set encoding=UTF-8
set rtp+=./Library/Python/3.9/lib/python3/site-packages/bindings/vim
set laststatus=2
let g:powerline_pycmd="py3"
let g:powerline_pyeval="py3eval"
let g:powerline_debugging_pyeval=1

filetype plugin indent on
let mapleader = ","

" ----------- VIM General config ---------
syntax enable
set syntax=whitespace
set list
"set clipboard=unnamedplus " use system clipboard
set t_Co=256
set background=dark
"set relativenumber       " use #G to jump to line
set number
"set undofile
set showtabline=2
set shortmess+=a
"set cmdheight=3          " Helps to show full execusion of commands
set ts=2                  " Tab stop width
set path+=**            " Set the path for vim to search for files
set wildmenu              " Display all matching files when we tab complete
set wildignore+=**/node_modules/** " Ignore node_modules in wild menu
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
set lazyredraw            " The screen will not be redraw while running macros and other commands - for speed (reddit)
set nottyfast             " Improves smoothness of redraw with multiple lines - for speed (reddit)
set nolist
set listchars=eol:¬
set hidden
set nobackup
set nowritebackup
set hlsearch              " Highlight search items
set incsearch             " Jump to the next search item as you type
set nomodeline            " Ensure the vulnerability is covered
set modelines=0           " Just to be sure :o)
set updatetime=300
set shortmess+=c
set viminfo='1000         " Increase size of file history (default is 100)(used for fzf preview
hi Search cterm=italic ctermfg=black ctermbg=DarkMagenta

if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" Trigger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"----------vim config shortcuts--------
nnoremap <leader>vrc :split ~/.vimrc<cr>
nnoremap <leader>so :so %<cr>

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

"------  Quick esc ---------
inoremap jj <ESC>

"------ Navigate split screens
nnoremap mu <C-w><C-k>
nnoremap md <C-w><C-j>
nnoremap mr <C-w><C-l>
nnoremap ml <C-w><C-h>

"------ Tame search function -----
"nnoremap / /\v
"vnoremap / /\v
"set ignorecase
"set smartcase
"set gdefault
"set showmatch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
"------------ incsearch -----------------
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"------------- New lines without entering into insert mode --------
nnoremap ou O<ESC>
nnoremap od o<ESC>

" Strips whitespace
nnoremap <leader>fx :%s/\s\+$//<cr>:let @/=''<CR>

" --- type ° to search the word in all files in the current dir
"nmap ª :Ag <C-r>=expand("<cword>")<cr><cr>
"nnoremap <leader>k :exe 'Ag!' expand('<cword>')<cr>
"nnoremap <space>/ :Ag! <space>

" -------- Fugitive -------------------
nnoremap <leader>gb :Gblame<CR>
"nnoremap <leader>gs :Gstatus<CR> " Using fzf
nnoremap <leader>gd :Gdiff<CR>
"nnoremap <leader>gl :Glog<CR>    " Using fzf
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gw :Gwrite<CR>
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

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"-----------'matze/vim-move'-------------"
let g:move_key_modifier = 'C'
"this creates the key mappings
" <C-k> Move up
" <C-j> Move down

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
let g:ale_disable_lsp = 1
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
\   'go': ['gofmt'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_linters = {'go': ['gometalinter', 'gofmt']}
let g:ale_set_highlights=1
highlight ALEError ctermfg=black ctermbg=DarkRed
highlight ALEWarn ctermfg=black ctermbg=DarkYellow
highlight ALEErrorSign ctermfg=black ctermbg=DarkRed
highlight ALEWarningSign ctermfg=black ctermbg=DarkYellow
nmap <silent> <leader>fj :ALENext<cr>
nmap <silent> <leader>fk :ALEPrevious<cr>

" Navigate linting errors
nnoremap <space>l :lnext<CR>
nnoremap <space>p :lnext<CR>
nnoremap <space>r :lnext<CR>

"-------------- vim test -----------------
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" make test commands execute using dispatch.vim
let test#strategy = "vimterminal"

"------------https://github.com/xolox/vim-notes-------------
let g:notes_directories = ['~/Code/notes']

"----------- vim autosave ----------
let g:auto_save = 0

"--------------- Devicons --------------------
" loading the plugin
let g:webdevicons_enable = 1

"-------------- Ultisnips --------------------
let g:UltiSnipsExpandTrigger = '<nop>'

"-------------- Vista -----------------------
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista_close_on_jump = 1
nnoremap <space>t :Vista coc<cr>

"-------------- vim.svelte ----------------
let g:vim_svelte_plugin_load_full_syntax = 1

"------------- Go -------------------------
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = 'goimports'

"------------------ CoC --------------------
" Multiline cursor support
"hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
"nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-m> <Plug>(coc-cursors-word)*
xmap <silent> <C-m> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn
"xmap <silent> <C-m> <Plug>(coc-cursors-range)


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
" plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'


" Use <CR> to trigger completion. (default is <C-y>)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for rename current word across files
nmap <leader>ra :CocSearch -w <cr>
" Remap for refactor current word
nmap <leader>rf <Plug>(coc-refactor)

" Using CocList
" Show commands
nnoremap <silent> <space>m  :<C-u>CocList commands<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" File explorer - love it!
nmap <leader>p :CocCommand explorer<CR>

"-------------- FZF Preview ----------------
" Initialise vista tags
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" Commands used for fzf preview.
let g:fzf_preview_command = 'bat --color=always --plain {-1}'
" jump to the buffers by default, when possible
let g:fzf_preview_buffers_jump = 1
" Use vim-devicons
let g:fzf_preview_use_dev_icons = 1

" Keybindings
nmap <leader>f [fzf-p]
xmap <leader>f [fzf-p]

nnoremap <silent> <space>p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> <space>gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> <space>ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> <space>b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> <space>B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> <space>o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> <space>g     :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> <space>/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
" Grep text undercursor Visual mode
vnoremap <silent> <space>/ "sy:<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--query="<C-r>=substitute(@s, '\(^\\v\)\\|\\\(<\\|>\)', '', 'g')<CR>"<CR>
nnoremap <silent> <space>*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          <space><space>    :<C-u>CocCommand fzf-preview.DirectoryFiles<Space>
xnoremap          <space><space>    "sy:CocCommand   fzf-preview.DirectoryFiles<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap          <space>gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          <space>gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
" Command below takes too long, use Vista instead
"nnoremap <silent> <space>t     :<C-u>CocCommand fzf-preview.VistaCtags<CR>
nnoremap <silent> <space>tb     :<C-u>CocCommand fzf-preview.VistaBufferCtags<CR>
nnoremap <silent> <space>q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> <space>l     :<C-u>CocCommand fzf-preview.LocatonList<CR>
nnoremap <silent> <space>cd     :<C-u>CocCommand fzf-preview.CocCurrentDiagnostics<CR>
nnoremap <silent> <space>cr     :<C-u>CocCommand fzf-preview.CocReferences<CR>
