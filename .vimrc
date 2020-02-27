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
set encoding=UTF-8
set rtp+=/usr/lib/python3.7/dist-packages/powerline/bindings/vim
set laststatus=2
let g:powerline_pycmd="py3"

filetype plugin indent on
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
set nobackup
set nowritebackup
set hlsearch              " Highlight search items
set incsearch             " Jump to the next search item as you type
set nomodeline            " Ensure the vulnerability is covered
set modelines=0           " Just to be sure :o)
set updatetime=300
set shortmess+=c
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
"nnoremap <tab> %
"vnoremap <tab> %

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


"------------Vimfiler-------------
"let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_quick_look_command = 'gloobus preview'
let g:vimfiler_options_winwidth = 1
let g:vimfiler_options_winheight = 1
let g:vimfiler_options_fnamewidth = 1

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
let test#strategy = "vimux"

"------------https://github.com/xolox/vim-notes-------------
let g:notes_directories = ['~/Code/notes']

"----------- vim autosave ----------
let g:auto_save = 0

"------------------ CoC --------------------
" Multiline cursor support
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

" multi cursor shortcuts "not sure if this is need now I have refactor/rename
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)

nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

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

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

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
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for rename current word across files
nmap <leader>ra :CocSearch -w <cr>

" Remap for refactor current word
nmap <leader>rf <Plug>(coc-refactor)

" Using CocList
" Show commands
nnoremap <silent> <space>m  :<C-u>CocList commands<cr>
" Manage extensions
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" File explorer - beta but so promising. Much faster than vimfiler
nmap <leader>p :CocCommand explorer<CR>
"----------------------- fzf ----------------------
" For project wide search
nnoremap <space><space> :Files <cr>
" Git log
nnoremap <space>tig :Commits <cr>
" Git status
nnoremap <space>gs :GFiles?<cr>
" Search word in open buffers
nnoremap <space>b :Buffers <cr>
" Search lines across loaded buffers
nnoremap <space>l :Lines <cr>
" Search lines in current buffer
nnoremap <space>bl :BLines <cr>
" Search word under cursor across project
nnoremap <space>w :Ag <cr>

" Preview window for results
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
 \ 'bg':      ['bg', 'Normal'],
 \ 'hl':      ['fg', 'Comment'],
 \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
 \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
 \ 'hl+':     ['fg', 'Statement'],
 \ 'info':    ['fg', 'PreProc'],
 \ 'border':  ['fg', 'Ignore'],
 \ 'prompt':  ['fg', 'Conditional'],
 \ 'pointer': ['fg', 'Exception'],
 \ 'marker':  ['fg', 'Keyword'],
 \ 'spinner': ['fg', 'Label'],
 \ 'header':  ['fg', 'Comment'] }

"--------------- Devicons --------------------
" loading the plugin
let g:webdevicons_enable = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1

"-------------- Ultisnips --------------------
let g:UltiSnipsExpandTrigger = '<nop>'
