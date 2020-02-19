let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <Plug>(ale_complete) :ALEComplete
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <expr> <C-Space> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
inoremap <silent> <F2> :JSHint
imap <C-S-Left> :tabp
imap <C-S-Right> :tabn
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
nmap <silent>  <Plug>GoldenViewSplit
snoremap <silent>  "_c
nmap  <Plug>MoveCharLeft
xmap  <Plug>MoveBlockLeft
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nmap <NL> <Plug>MoveLineDown
vmap <NL> <Plug>MoveBlockDown
nmap  <Plug>MoveLineUp
vmap  <Plug>MoveBlockUp
nmap  <Plug>MoveCharRight
vmap  <Plug>MoveBlockRight
snoremap  "_c
nnoremap  w :Ag 
nnoremap  bl :BLines 
nnoremap  b :Buffers 
nnoremap  gs :GFiles?
nnoremap  tig :Commits 
nnoremap    :Files 
nnoremap <silent>  k :CocPrev
nnoremap <silent>  j :CocNext
nnoremap <silent>  a :CocList diagnostics
nnoremap <silent>  m :CocList commands
nnoremap  r :lnext
nnoremap <silent>  p :CocListResume
nnoremap  l :Lines 
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nmap ,p :CocCommand explorer
nmap ,rf <Plug>(coc-refactor)
nmap ,ra :CocSearch -w 
nmap ,rn <Plug>(coc-rename)
noremap <silent> ,f :VimFilerExplorer -split -simple -winwidth=35 -explorer -no-quit
nnoremap ,q. :BufOnly
nnoremap ,q :Bdelete
nnoremap ,gpl :Gpull
nnoremap ,gpu :Gpush
nnoremap ,gw :Gwrite
nnoremap ,gc :Gcommit
nnoremap ,gd :Gdiff
nnoremap ,gb :Gblame
nnoremap ,fx :%s/\s\+$//:let @/=''
nnoremap ,  :noh
nnoremap ,r :redraw!
nnoremap ,cd :cd %:p:h:pwd
nnoremap ,so :so %
nnoremap ,vrc :split ~/.vimrc
vnoremap / /\v
nnoremap / /\v
nnoremap ; :
vmap <silent> K <Plug>(ref-keyword)
xmap S <Plug>VSurround
map [b :bnext
map ]b :bprevious
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
nnoremap j gj
nnoremap k gk
nnoremap ml 
nnoremap mr 
nnoremap md <NL>
nnoremap mu 
nnoremap od o
nnoremap ou O
nmap <silent> t<C-G> :TestVisit
nmap <silent> t :TestVisit
nmap <silent> t<C-L> :TestLast
nmap <silent> t :TestLast
nmap <silent> t<C-S> :TestSuite
nmap <silent> t :TestSuite
nmap <silent> t<C-F> :TestFile
nmap <silent> t :TestFile
nmap <silent> t<C-N> :TestNearest
nmap <silent> t :TestNearest
map tt :tabnew
map tp :tabp
map tn :tabn
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>(-fzf-:) :
nnoremap <Plug>(-fzf-/) /
nnoremap <Plug>(-fzf-vim-do) :execute g:__fzf_command
vnoremap <silent> <Plug>(coc-explorer-action-v->>) :call coc#rpc#request('doKeymap', ['explorer-action-v->>'])
nnoremap <silent> <Plug>(coc-explorer-action-n->>) :call coc#rpc#request('doKeymap', ['explorer-action-n->>'])
vnoremap <silent> <Plug>(coc-explorer-action-v-<<) :call coc#rpc#request('doKeymap', ['explorer-action-v-<<'])
nnoremap <silent> <Plug>(coc-explorer-action-n-<<) :call coc#rpc#request('doKeymap', ['explorer-action-n-<<'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]c) :call coc#rpc#request('doKeymap', ['explorer-action-v-]c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]c) :call coc#rpc#request('doKeymap', ['explorer-action-n-]c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[c) :call coc#rpc#request('doKeymap', ['explorer-action-v-[c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[c) :call coc#rpc#request('doKeymap', ['explorer-action-n-[c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]d) :call coc#rpc#request('doKeymap', ['explorer-action-v-]d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]d) :call coc#rpc#request('doKeymap', ['explorer-action-n-]d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[d) :call coc#rpc#request('doKeymap', ['explorer-action-v-[d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[d) :call coc#rpc#request('doKeymap', ['explorer-action-n-[d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]]) :call coc#rpc#request('doKeymap', ['explorer-action-v-]]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]]) :call coc#rpc#request('doKeymap', ['explorer-action-n-]]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[[) :call coc#rpc#request('doKeymap', ['explorer-action-v-[['])
nnoremap <silent> <Plug>(coc-explorer-action-n-[[) :call coc#rpc#request('doKeymap', ['explorer-action-n-[['])
vnoremap <silent> <Plug>(coc-explorer-action-v-gb) :call coc#rpc#request('doKeymap', ['explorer-action-v-gb'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gb) :call coc#rpc#request('doKeymap', ['explorer-action-n-gb'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gf) :call coc#rpc#request('doKeymap', ['explorer-action-v-gf'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gf) :call coc#rpc#request('doKeymap', ['explorer-action-n-gf'])
vnoremap <silent> <Plug>(coc-explorer-action-v-F) :call coc#rpc#request('doKeymap', ['explorer-action-v-F'])
nnoremap <silent> <Plug>(coc-explorer-action-n-F) :call coc#rpc#request('doKeymap', ['explorer-action-n-F'])
vnoremap <silent> <Plug>(coc-explorer-action-v-f) :call coc#rpc#request('doKeymap', ['explorer-action-v-f'])
nnoremap <silent> <Plug>(coc-explorer-action-n-f) :call coc#rpc#request('doKeymap', ['explorer-action-n-f'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gd) :call coc#rpc#request('doKeymap', ['explorer-action-v-gd'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gd) :call coc#rpc#request('doKeymap', ['explorer-action-n-gd'])
vnoremap <silent> <Plug>(coc-explorer-action-v-X) :call coc#rpc#request('doKeymap', ['explorer-action-v-X'])
nnoremap <silent> <Plug>(coc-explorer-action-n-X) :call coc#rpc#request('doKeymap', ['explorer-action-n-X'])
vnoremap <silent> <Plug>(coc-explorer-action-v-q) :call coc#rpc#request('doKeymap', ['explorer-action-v-q'])
nnoremap <silent> <Plug>(coc-explorer-action-n-q) :call coc#rpc#request('doKeymap', ['explorer-action-n-q'])
vnoremap <silent> <Plug>(coc-explorer-action-v-?) :call coc#rpc#request('doKeymap', ['explorer-action-v-?'])
nnoremap <silent> <Plug>(coc-explorer-action-n-?) :call coc#rpc#request('doKeymap', ['explorer-action-n-?'])
vnoremap <silent> <Plug>(coc-explorer-action-v-R) :call coc#rpc#request('doKeymap', ['explorer-action-v-R'])
nnoremap <silent> <Plug>(coc-explorer-action-n-R) :call coc#rpc#request('doKeymap', ['explorer-action-n-R'])
vnoremap <silent> <Plug>(coc-explorer-action-v-.) :call coc#rpc#request('doKeymap', ['explorer-action-v-.'])
nnoremap <silent> <Plug>(coc-explorer-action-n-.) :call coc#rpc#request('doKeymap', ['explorer-action-n-.'])
vnoremap <silent> <Plug>(coc-explorer-action-v-r) :call coc#rpc#request('doKeymap', ['explorer-action-v-r'])
nnoremap <silent> <Plug>(coc-explorer-action-n-r) :call coc#rpc#request('doKeymap', ['explorer-action-n-r'])
vnoremap <silent> <Plug>(coc-explorer-action-v-A) :call coc#rpc#request('doKeymap', ['explorer-action-v-A'])
nnoremap <silent> <Plug>(coc-explorer-action-n-A) :call coc#rpc#request('doKeymap', ['explorer-action-n-A'])
vnoremap <silent> <Plug>(coc-explorer-action-v-a) :call coc#rpc#request('doKeymap', ['explorer-action-v-a'])
nnoremap <silent> <Plug>(coc-explorer-action-n-a) :call coc#rpc#request('doKeymap', ['explorer-action-n-a'])
vnoremap <silent> <Plug>(coc-explorer-action-v-D) :call coc#rpc#request('doKeymap', ['explorer-action-v-D'])
nnoremap <silent> <Plug>(coc-explorer-action-n-D) :call coc#rpc#request('doKeymap', ['explorer-action-n-D'])
vnoremap <silent> <Plug>(coc-explorer-action-v-d) :call coc#rpc#request('doKeymap', ['explorer-action-v-d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-d) :call coc#rpc#request('doKeymap', ['explorer-action-n-d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-p) :call coc#rpc#request('doKeymap', ['explorer-action-v-p'])
nnoremap <silent> <Plug>(coc-explorer-action-n-p) :call coc#rpc#request('doKeymap', ['explorer-action-n-p'])
vnoremap <silent> <Plug>(coc-explorer-action-v-x) :call coc#rpc#request('doKeymap', ['explorer-action-v-x'])
nnoremap <silent> <Plug>(coc-explorer-action-n-x) :call coc#rpc#request('doKeymap', ['explorer-action-n-x'])
vnoremap <silent> <Plug>(coc-explorer-action-v-c) :call coc#rpc#request('doKeymap', ['explorer-action-v-c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-c) :call coc#rpc#request('doKeymap', ['explorer-action-n-c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-Y) :call coc#rpc#request('doKeymap', ['explorer-action-v-Y'])
nnoremap <silent> <Plug>(coc-explorer-action-n-Y) :call coc#rpc#request('doKeymap', ['explorer-action-n-Y'])
vnoremap <silent> <Plug>(coc-explorer-action-v-y) :call coc#rpc#request('doKeymap', ['explorer-action-v-y'])
nnoremap <silent> <Plug>(coc-explorer-action-n-y) :call coc#rpc#request('doKeymap', ['explorer-action-n-y'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gp) :call coc#rpc#request('doKeymap', ['explorer-action-v-gp'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gp) :call coc#rpc#request('doKeymap', ['explorer-action-n-gp'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[bs]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[bs]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[bs]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[bs]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-t) :call coc#rpc#request('doKeymap', ['explorer-action-v-t'])
nnoremap <silent> <Plug>(coc-explorer-action-n-t) :call coc#rpc#request('doKeymap', ['explorer-action-n-t'])
vnoremap <silent> <Plug>(coc-explorer-action-v-E) :call coc#rpc#request('doKeymap', ['explorer-action-v-E'])
nnoremap <silent> <Plug>(coc-explorer-action-n-E) :call coc#rpc#request('doKeymap', ['explorer-action-n-E'])
vnoremap <silent> <Plug>(coc-explorer-action-v-e) :call coc#rpc#request('doKeymap', ['explorer-action-v-e'])
nnoremap <silent> <Plug>(coc-explorer-action-n-e) :call coc#rpc#request('doKeymap', ['explorer-action-n-e'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-o) :call coc#rpc#request('doKeymap', ['explorer-action-n-o'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gh) :call coc#rpc#request('doKeymap', ['explorer-action-v-gh'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gh) :call coc#rpc#request('doKeymap', ['explorer-action-n-gh'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gl) :call coc#rpc#request('doKeymap', ['explorer-action-v-gl'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gl) :call coc#rpc#request('doKeymap', ['explorer-action-n-gl'])
vnoremap <silent> <Plug>(coc-explorer-action-v-K) :call coc#rpc#request('doKeymap', ['explorer-action-v-K'])
nnoremap <silent> <Plug>(coc-explorer-action-n-K) :call coc#rpc#request('doKeymap', ['explorer-action-n-K'])
vnoremap <silent> <Plug>(coc-explorer-action-v-J) :call coc#rpc#request('doKeymap', ['explorer-action-v-J'])
nnoremap <silent> <Plug>(coc-explorer-action-n-J) :call coc#rpc#request('doKeymap', ['explorer-action-n-J'])
vnoremap <silent> <Plug>(coc-explorer-action-v-l) :call coc#rpc#request('doKeymap', ['explorer-action-v-l'])
nnoremap <silent> <Plug>(coc-explorer-action-n-l) :call coc#rpc#request('doKeymap', ['explorer-action-n-l'])
vnoremap <silent> <Plug>(coc-explorer-action-v-h) :call coc#rpc#request('doKeymap', ['explorer-action-v-h'])
nnoremap <silent> <Plug>(coc-explorer-action-n-h) :call coc#rpc#request('doKeymap', ['explorer-action-n-h'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-*) :call coc#rpc#request('doKeymap', ['explorer-action-v-*'])
nnoremap <silent> <Plug>(coc-explorer-action-n-*) :call coc#rpc#request('doKeymap', ['explorer-action-n-*'])
nnoremap <silent> <Plug>(coc-explorer-action-n-j) :call coc#rpc#request('doKeymap', ['explorer-action-n-j'])
nnoremap <silent> <Plug>(coc-explorer-action-n-k) :call coc#rpc#request('doKeymap', ['explorer-action-n-k'])
xnoremap <silent> <Plug>(coc-git-chunk-outer) :call coc#rpc#request('doKeymap', ['git-chunk-outer'])
onoremap <silent> <Plug>(coc-git-chunk-outer) :call coc#rpc#request('doKeymap', ['git-chunk-outer'])
xnoremap <silent> <Plug>(coc-git-chunk-inner) :call coc#rpc#request('doKeymap', ['git-chunk-inner'])
onoremap <silent> <Plug>(coc-git-chunk-inner) :call coc#rpc#request('doKeymap', ['git-chunk-inner'])
nnoremap <silent> <Plug>(coc-git-commit) :call coc#rpc#notify('doKeymap', ['git-commit'])
nnoremap <silent> <Plug>(coc-git-chunkinfo) :call coc#rpc#notify('doKeymap', ['git-chunkinfo'])
nnoremap <silent> <Plug>(coc-git-prevchunk) :call coc#rpc#notify('doKeymap', ['git-prevchunk'])
nnoremap <silent> <Plug>(coc-git-nextchunk) :call coc#rpc#notify('doKeymap', ['git-nextchunk'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
snoremap <silent> <C-H> "_c
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
vnoremap <silent> <Plug>(ref-keyword) :call ref#K('visual')
nnoremap <silent> <Plug>(ref-keyword) :call ref#K('normal')
nmap <C-L> <Plug>MoveCharRight
nmap <C-H> <Plug>MoveCharLeft
nmap <C-K> <Plug>MoveLineUp
nmap <C-J> <Plug>MoveLineDown
vmap <C-L> <Plug>MoveBlockRight
vmap <C-K> <Plug>MoveBlockUp
vmap <C-J> <Plug>MoveBlockDown
snoremap <C-R> "_c
xmap <C-H> <Plug>MoveBlockLeft
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, ''])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, ''])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, visualmode()])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, visualmode()])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocAction('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocAction('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocAction('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocAction('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocAction('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backward) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <Plug>GoldenViewSwitchWithSmallest :call GoldenView#zl#window#switch_buffer_with_smallest()
nnoremap <Plug>GoldenViewSwitchWithLargest :call GoldenView#zl#window#switch_buffer_with_largest()
nnoremap <Plug>GoldenViewSwitchToggle :call GoldenView#zl#window#switch_buffer_toggle()
nnoremap <Plug>GoldenViewSwitchMain :call GoldenView#SwitchMain()
nnoremap <Plug>GoldenViewPrevious :call GoldenView#zl#window#previous_window_or_tab()
nnoremap <Plug>GoldenViewNext :call GoldenView#zl#window#next_window_or_tab()
nnoremap <Plug>GoldenViewSplit :call GoldenView#Split()
nnoremap <Plug>GoldenViewResize :GoldenViewResize
nnoremap <Plug>ToggleGoldenViewAutoResize :ToggleGoldenViewAutoResize
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
vnoremap <silent> <F2> :JSHint
nnoremap <silent> <F2> :JSHint
nmap <silent> <F12> <Plug>GoldenViewSwitchToggle
nmap <silent> <S-F12> <Plug>GoldenViewSwitchMain
nmap <silent> <C-G> <Plug>GoldenViewSplit
map <C-S-Left> :tabp
map <C-S-Right> :tabn
nnoremap <C-Right> :tabnext
nnoremap <C-Left> :tabprevious
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap  <Plug>Isurround
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set gdefault
set helplang=en
set hidden
set hlsearch
set ignorecase
set include=import_s.\\zs[^'\"]*\\ze
set includeexpr=TsIncludeExpr(v:fname)
set incsearch
set laststatus=2
set lazyredraw
set listchars=eol:¬
set nomodeline
set modelines=0
set omnifunc=syntaxcomplete#Complete
set operatorfunc=<SNR>79_opfunc
set path=.,,**,./node_modules/**,node_modules/**
set pyxversion=3
set ruler
set runtimepath=~/.config/coc/extensions/node_modules/coc-explorer,~/.vim,~/.vim/pack/my-plugins/start/webapi-vim,~/.vim/pack/my-plugins/start/vista.vim,~/.vim/pack/my-plugins/start/vimux-jest-test,~/.vim/pack/my-plugins/start/vimux,~/.vim/pack/my-plugins/start/vimfiler.vim,~/.vim/pack/my-plugins/start/vim-yaml,~/.vim/pack/my-plugins/start/vim-wakatime,~/.vim/pack/my-plugins/start/vim-test,~/.vim/pack/my-plugins/start/vim-surround,~/.vim/pack/my-plugins/start/vim-startify,~/.vim/pack/my-plugins/start/vim-snippets,~/.vim/pack/my-plugins/start/vim-ref,~/.vim/pack/my-plugins/start/vim-polyglot,~/.vim/pack/my-plugins/start/vim-notes,~/.vim/pack/my-plugins/start/vim-move,~/.vim/pack/my-plugins/start/vim-misc,~/.vim/pack/my-plugins/start/vim-markdown,~/.vim/pack/my-plugins/start/vim-livedown,~/.vim/pack/my-plugins/start/vim-jsx,~/.vim/pack/my-plugins/start/vim-js-indent,~/.vim/pack/my-plugins/start/vim-javascript,~/.vim/pack/my-plugins/start/vim-git,~/.vim/pack/my-plugins/start/vim-fugitive,~/.vim/pack/my-plugins/start/vim-dispatch,~/.vim/pack/my-plugins/start/vim-devicons,~/.vim/pack/my-plugins/start/vim-code-dark,~/.vim/pack/my-plugins/start/vim-bbye,~/.vim/pack/my-plugins/start/vim-auto-save,~/.vim/pack/my-plugins/start/unite.vim,~/.vim/pack/my-plugins/start/ultisnips,~/.vim/pack/my-plugins/start/tmuxline.vim,~/.vim/pack/my-plugins/start/fzf.vim,~/.vim/pack/my-plugins/start/editorconfig-vim,~/.vim/pack/my-plugins/start/coc.nvim,~/.vim/pack/my-plugins/start/ale,~/.vim/pack/my-plugins/start/ag.vim,~/.vim/pack/my-plugins/start/GoldenView,/usr/share/vim/vimfiles,/usr/share/vim/vim82,~/.vim/pack/my-plugins/start/vim-yaml/after,~/.vim/pack/my-plugins/start/vim-polyglot/after,~/.vim/pack/my-plugins/start/vim-jsx/after,~/.vim/pack/my-plugins/start/vim-javascript/after,~/.vim/pack/my-plugins/start/ultisnips/after,/usr/share/vim/vimfiles/after,~/.vim/after,/usr/lib/python3.7/dist-packages/powerline/bindings/vim
set shiftwidth=2
set shortmess=filnxtToOSacI
set showmatch
set showtabline=-2
set smartcase
set smarttab
set statusline=%!py3eval('powerline.new_window()')
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixesadd=.ts
set noswapfile
set tabline=%!py3eval('powerline.tabline()')
set tabstop=2
set undodir=~/.cache/vim/undo//
set updatetime=300
set window=33
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Code/salestrip/api
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit test/processors/reservations.processor.spec.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 83 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 82 + 83) / 166)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0.,0{,0},0),0],0?,0*,0,,!^F,:,<:>,o,O,e,<>>,=*/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!py3eval('powerline.statusline(17)')
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
25
normal! zo
26
normal! zo
51
normal! zo
62
normal! zo
65
normal! zo
66
normal! zo
71
normal! zo
73
normal! zo
74
normal! zo
75
normal! zo
83
normal! zo
84
normal! zo
85
normal! zo
93
normal! zo
94
normal! zo
95
normal! zo
65
normal! zc
115
normal! zo
116
normal! zo
120
normal! zo
121
normal! zo
123
normal! zo
125
normal! zo
121
normal! zc
131
normal! zo
132
normal! zo
133
normal! zo
139
normal! zo
142
normal! zo
131
normal! zc
147
normal! zo
149
normal! zo
147
normal! zc
157
normal! zo
160
normal! zo
157
normal! zc
167
normal! zo
169
normal! zo
167
normal! zc
174
normal! zo
176
normal! zo
177
normal! zo
181
normal! zo
182
normal! zo
174
normal! zc
191
normal! zo
193
normal! zo
191
normal! zc
199
normal! zo
201
normal! zo
202
normal! zo
206
normal! zo
207
normal! zo
199
normal! zc
220
normal! zo
222
normal! zo
223
normal! zo
227
normal! zo
228
normal! zo
220
normal! zc
237
normal! zo
239
normal! zo
237
normal! zc
246
normal! zo
247
normal! zo
255
normal! zo
257
normal! zo
258
normal! zo
262
normal! zo
263
normal! zo
272
normal! zo
274
normal! zo
246
normal! zc
281
normal! zo
282
normal! zo
284
normal! zo
285
normal! zo
295
normal! zo
297
normal! zo
305
normal! zo
306
normal! zo
315
normal! zo
320
normal! zo
333
normal! zo
340
normal! zo
341
normal! zo
342
normal! zo
349
normal! zo
361
normal! zo
362
normal! zo
363
normal! zo
376
normal! zo
377
normal! zo
382
normal! zo
383
normal! zo
387
normal! zo
388
normal! zo
389
normal! zo
404
normal! zo
405
normal! zo
406
normal! zo
410
normal! zo
411
normal! zo
412
normal! zo
426
normal! zo
441
normal! zo
452
normal! zo
453
normal! zo
454
normal! zo
464
normal! zo
465
normal! zo
476
normal! zo
477
normal! zo
478
normal! zo
486
normal! zo
487
normal! zo
497
normal! zo
498
normal! zo
499
normal! zo
502
normal! zo
505
normal! zo
506
normal! zo
509
normal! zo
305
normal! zc
517
normal! zo
518
normal! zo
528
normal! zo
528
normal! zc
559
normal! zo
560
normal! zo
560
normal! zc
559
normal! zc
580
normal! zo
581
normal! zo
595
normal! zo
595
normal! zc
601
normal! zo
601
normal! zc
606
normal! zo
607
normal! zo
607
normal! zc
606
normal! zc
581
normal! zc
623
normal! zo
624
normal! zo
624
normal! zc
629
normal! zo
630
normal! zo
630
normal! zc
629
normal! zc
623
normal! zc
580
normal! zc
669
normal! zo
670
normal! zo
670
normal! zc
681
normal! zo
681
normal! zc
669
normal! zc
693
normal! zo
694
normal! zo
694
normal! zc
703
normal! zo
703
normal! zc
693
normal! zc
716
normal! zo
717
normal! zo
717
normal! zc
724
normal! zo
724
normal! zc
716
normal! zc
518
normal! zc
517
normal! zc
736
normal! zo
737
normal! zo
736
normal! zc
746
normal! zo
747
normal! zo
750
normal! zo
751
normal! zo
764
normal! zo
750
normal! zc
793
normal! zo
794
normal! zo
800
normal! zo
807
normal! zo
746
normal! zc
let s:l = 11 - ((10 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 054|
wincmd w
argglobal
if bufexists("lib/services/purchaser-v1.service/test/actions/v1.purchase.action.spec.js") | buffer lib/services/purchaser-v1.service/test/actions/v1.purchase.action.spec.js | else | edit lib/services/purchaser-v1.service/test/actions/v1.purchase.action.spec.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJsxIndent()
setlocal indentkeys=0.,0{,0},0),0],0?,0*,0,,!^F,:,<:>,o,O,e,<>>,=*/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!py3eval('powerline.statusline(5)')
setlocal suffixesadd=.js,.jsx
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
29
normal! zo
30
normal! zo
39
normal! zo
45
normal! zo
47
normal! zo
49
normal! zo
76
normal! zo
82
normal! zo
88
normal! zo
94
normal! zo
103
normal! zo
113
normal! zo
114
normal! zo
118
normal! zo
122
normal! zo
126
normal! zo
127
normal! zo
133
normal! zo
139
normal! zo
141
normal! zo
150
normal! zo
151
normal! zo
155
normal! zo
159
normal! zo
150
normal! zc
166
normal! zo
167
normal! zo
171
normal! zo
166
normal! zc
178
normal! zo
179
normal! zo
185
normal! zo
191
normal! zo
194
normal! zo
178
normal! zc
200
normal! zo
201
normal! zo
208
normal! zo
215
normal! zo
220
normal! zo
222
normal! zo
225
normal! zo
200
normal! zc
233
normal! zo
234
normal! zo
235
normal! zo
236
normal! zo
239
normal! zo
240
normal! zo
241
normal! zo
242
normal! zo
249
normal! zo
253
normal! zo
258
normal! zo
259
normal! zo
280
normal! zo
286
normal! zo
287
normal! zo
289
normal! zo
294
normal! zo
233
normal! zc
300
normal! zo
301
normal! zo
309
normal! zo
316
normal! zo
323
normal! zo
325
normal! zo
300
normal! zc
333
normal! zo
334
normal! zo
342
normal! zo
350
normal! zo
353
normal! zo
356
normal! zo
363
normal! zo
333
normal! zc
368
normal! zo
369
normal! zo
370
normal! zo
374
normal! zo
377
normal! zo
378
normal! zo
386
normal! zo
393
normal! zo
395
normal! zo
396
normal! zo
404
normal! zo
414
normal! zo
416
normal! zo
421
normal! zo
423
normal! zo
426
normal! zo
427
normal! zo
435
normal! zo
437
normal! zo
439
normal! zo
442
normal! zo
368
normal! zc
451
normal! zo
452
normal! zo
455
normal! zo
459
normal! zo
462
normal! zo
463
normal! zo
469
normal! zo
472
normal! zo
473
normal! zo
486
normal! zo
495
normal! zo
496
normal! zo
501
normal! zo
503
normal! zo
511
normal! zo
514
normal! zo
517
normal! zo
525
normal! zo
526
normal! zo
533
normal! zo
451
normal! zc
543
normal! zo
544
normal! zo
545
normal! zo
553
normal! zo
560
normal! zo
567
normal! zo
573
normal! zo
574
normal! zo
578
normal! zo
579
normal! zo
590
normal! zo
591
normal! zo
594
normal! zo
600
normal! zo
601
normal! zo
609
normal! zo
615
normal! zo
621
normal! zo
627
normal! zo
628
normal! zo
632
normal! zo
633
normal! zo
644
normal! zo
645
normal! zo
648
normal! zo
655
normal! zo
656
normal! zo
660
normal! zo
667
normal! zo
673
normal! zo
674
normal! zo
679
normal! zo
683
normal! zo
686
normal! zo
687
normal! zo
697
normal! zo
701
normal! zo
702
normal! zo
709
normal! zo
711
normal! zo
719
normal! zo
724
normal! zo
725
normal! zo
733
normal! zo
739
normal! zo
742
normal! zo
743
normal! zo
755
normal! zo
759
normal! zo
760
normal! zo
767
normal! zo
769
normal! zo
777
normal! zo
782
normal! zo
783
normal! zo
790
normal! zo
796
normal! zo
799
normal! zo
800
normal! zo
812
normal! zo
816
normal! zo
817
normal! zo
824
normal! zo
826
normal! zo
834
normal! zo
839
normal! zo
840
normal! zo
848
normal! zo
854
normal! zo
857
normal! zo
858
normal! zo
870
normal! zo
874
normal! zo
875
normal! zo
882
normal! zo
884
normal! zo
892
normal! zo
897
normal! zo
898
normal! zo
907
normal! zo
915
normal! zo
918
normal! zo
919
normal! zo
931
normal! zo
935
normal! zo
936
normal! zo
937
normal! zo
946
normal! zo
948
normal! zo
952
normal! zo
960
normal! zo
962
normal! zo
972
normal! zo
973
normal! zo
981
normal! zo
987
normal! zo
990
normal! zo
991
normal! zo
1003
normal! zo
1007
normal! zo
1008
normal! zo
1015
normal! zo
1017
normal! zo
1025
normal! zo
1030
normal! zo
1031
normal! zo
1040
normal! zo
1042
normal! zo
1043
normal! zo
1051
normal! zo
1060
normal! zo
1063
normal! zo
1064
normal! zo
1076
normal! zo
1080
normal! zo
1081
normal! zo
1082
normal! zo
1091
normal! zo
1093
normal! zo
1102
normal! zo
1107
normal! zo
1108
normal! zo
1115
normal! zo
1119
normal! zo
1120
normal! zo
1126
normal! zo
1128
normal! zo
1129
normal! zo
1138
normal! zo
1147
normal! zo
1150
normal! zo
1151
normal! zo
1163
normal! zo
1167
normal! zo
1168
normal! zo
1169
normal! zo
1178
normal! zo
1180
normal! zo
1189
normal! zo
1610
normal! zo
1611
normal! zo
1621
normal! zo
1622
normal! zo
1829
normal! zo
1830
normal! zo
1829
normal! zc
let s:l = 5 - ((3 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 83 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 82 + 83) / 166)
tabnext 1
badd +145 lib/processors/reservations.processor.js
badd +534 test/processors/reservations.processor.spec.js
badd +211 lib/services/purchaser-v1.service/lib/services/v1.purchaser.service.js
badd +52 lib/services/flights-v2.service/lib/handlers/reservations.handler.js
badd +70 lib/modules/queue.module.js
badd +40 lib/adapters/fastify.adapter.js
badd +256 lib/services/flights-v2.service/lib/modules/spreedly.module.js
badd +450 lib/services/purchaser-v1.service/test/actions/v1.purchase.action.spec.js
badd +72 lib/adapters/moleculer.adapter.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSacI
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
