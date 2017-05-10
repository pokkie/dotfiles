
" vim: set foldmethod=marker:
" Author: Austin Smith <AssailantLF@gmail.com>
" Source: https://gitlab.com/AssailantLF/dotfiles

" ===========================================================================
" STARTUP {{{
" ===========================================================================

redir @v
" let s:is_cygwin = has('win32unix') || has('win64unix')
" let s:is_mac = has('gui_macvim') || has('mac')
let s:is_windows = has('win32') || has('win64')
let s:is_nvim = has('nvim')
let s:myvimdir ="~/.vim"
if s:is_windows
  let s:myvimdir ="~/vimfiles"
elseif s:is_nvim
  let s:myvimdir ="~/.config/nvim"
endif

" use Vim settings over obsolescent Vi settings
" probably not necessary, but w/e
set nocompatible

" enables filetype detection, ftplugins, and indent files
filetype plugin indent on

" }}}
" ===========================================================================
" VIM-PLUG {{{
" ===========================================================================
" (minimalist plugin manager)

" First time startup prompt {{{

if !isdirectory(expand(s:myvimdir . "/plugged"))
  if !isdirectory(expand(s:myvimdir . "/autoload/vimrc_booted/"))
    if s:is_windows
      silent exec expand("!mkdir \\%userprofile\\%/vimfiles/autoload/vimrc_booted/")
    else
      exec expand("!mkdir " . s:myvimdir . "/autoload/vimrc_booted")
    endif
    echo "To install plugins (via vim-plug),"
    echo "run :PlugInstall | qa"
  endif
endif

" }}}

call plug#begin()

" PLUGINS

" Convenience/Miscellaneous
Plug 'lokaltog/vim-easymotion' " The way yo navigate a file quickly, regardless of language
Plug 'PeterRincker/vim-argumentative' " Alows to change the order of arguments with ease
Plug 'Raimondi/delimitMate' " Automatically match pairs intelligently
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'helino/vim-json' 
Plug 'ternjs/tern_for_vim' " Javascript completion
Plug 'Rykka/riv.vim' " restructuredText plugin
Plug 'tpope/vim-sensible' 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar' 
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-endwise',
      \ { 'for': [ 'vim', 'c', 'cpp', 'lua', 'ruby', 'sh', 'zsh', 'snippets' ] }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'justinmk/vim-gtfo'
Plug 'justinmk/vim-dirvish'
Plug 'dietsche/vim-lastplace'
Plug 'ervandew/supertab'
Plug 'Konfekt/FastFold'
Plug 'SirVer/UltiSnips'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-orgmode'
" Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/splitjoin.vim',
      \ { 'for': [ 'vim', 'c', 'cpp', 'lua', 'python', 'ruby', 'go' ] }
Plug 'junegunn/gv.vim',    { 'on': 'GV' }
Plug 'szw/vim-g',          { 'on': 'Google' }
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

" Text Objects
Plug 'kana/vim-textobj-user' |
      \ Plug 'kana/vim-textobj-entire'   |
      \ Plug 'kana/vim-textobj-indent'   |
      \ Plug 'kana/vim-textobj-function' |
      \ Plug 'reedes/vim-textobj-sentence'
Plug 'wellle/targets.vim'

" Operators
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tommcdo/vim-exchange'
Plug 'chaoren/vim-wordmotion'

" Motions/Movement
Plug 'justinmk/vim-ipmotion'
Plug 'junegunn/vim-pseudocl' | Plug 'junegunn/vim-oblique'


" Appearance/UI
Plug 'mhinz/vim-Startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kkoenig/wimproved.vim'
Plug 'AssailantLF/vim-active-numbers'
Plug 'gcavallanti/vim-noscrollbar'
Plug 'junegunn/rainbow_parentheses.vim', { 'on': 'RainbowParentheses' }
Plug 'junegunn/vim-easy-align',   { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/goyo.vim',         { 'on': 'Goyo' }
Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'cpp'] }
Plug 'nathanaelkane/vim-indent-guides',       
Plug 'flazz/vim-colorschemes'
Plug 'michaeljsmith/vim-indent-object'

" Panels/Toggleable
"Plug 'majutsushi/Tagbar',  { 'on': 'TagbarToggle' }
Plug 'majutsushi/Tagbar'
Plug 'mbbill/undotree',    { 'on': 'UndotreeToggle' }
Plug 'ctrlpvim/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPMRU', 'CtrlPBuffer', 'CtrlPLine'] }

" Programming languages and tools

Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'groenewege/vim-less'
Plug 'rhysd/vim-clang-format'

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'


" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'


" erlang
Plug 'jimenezrick/vimerl'


" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


" haskell
"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'


" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'


" javascript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'


" lisp
"" Lisp Bundle
Plug 'vim-scripts/slimv.vim'


" ocaml
"" OCaml Bundle
Plug 'def-lkb/ocp-indent-vim'


" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'


" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'vim-scripts/matchit.zip'


" rust
" Vim racer
Plug 'racer-rust/vim-racer'

" Rust.vim
Plug 'rust-lang/rust.vim'


" scala
" sbt-vim
Plug 'ktvoelker/sbt-vim'
" vim-scala
Plug 'derekwyatt/vim-scala'





" au! User indentLine doau indentLine Syntax | au BufRead * IndentLinesReset
" ^ fix for lazy loading with indentLine ^
"autocmd * indentLinesReset
call plug#end()

" }}}
" ===========================================================================
"  GENERAL SETTINGS {{{
" ===========================================================================

set hidden
set incsearch
set ignorecase
set smartcase
set autoread
set lazyredraw
set gdefault
set showcmd
set vb t_vb=
set sidescroll=8
set backspace=indent,eol,start
set history=10000
set undolevels=100000
set complete=.,w,b,t
set synmaxcol=1024
set nrformats-=octal
set fileformat=unix
set virtualedit=all
set nostartofline
set sessionoptions-=options
set sessionoptions-=folds
set path=.,**
if s:is_windows
  set makeprg=build.bat
endif
silent! set mouse=a

" system clipboard uses the unnamed register
set clipboard=unnamed,unnamedplus

" command-line completion settings
set wildmenu
set wildmode=full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX garbage

set wildignore+=*.pyc                            " Python byte code

" backups, swapfiles, & undofiles in one place
let s:tempdir=expand(s:myvimdir."/tmp")
if !isdirectory(expand(s:tempdir))
  call mkdir(expand(s:tempdir), "p")
endif
set backup
let &backupdir=s:tempdir
set swapfile
let &directory=s:tempdir
if has('persistent_undo')
  set undofile
  let &undodir=s:tempdir
endif

" autocmds
augroup vimrc_general
  au!

  " make 'nobuflisted' persist when editing a file
  if (v:version > 704) || (v:version == 704 && has('patch786'))
    function! s:PersistNobl(type)
      if a:type == 'option'
        if &buflisted && exists('b:persist_nobl')
          unlet b:persist_nobl
        else
          let b:persist_nobl = 1
        endif
      elseif exists('b:persist_nobl')
        if b:persist_nobl
          setl nobuflisted
        endif
      endif
    endfunction
    au OptionSet buflisted call <SID>PersistNobl('option')
    au BufEnter * call <SID>PersistNobl('buf')
  endif

augroup END

" }}}
" ===========================================================================
"  APPEARANCE AND FORMATTING {{{
" ===========================================================================
" some settings will be overwritten when certain filetypes are detected
" see: filetype-indent-on & ftplugins

" default tab settings
set smarttab
set shiftwidth=4 tabstop=4 softtabstop=-1 expandtab

" indenting/formatting
set autoindent
set smartindent
set textwidth=80
set encoding=utf-8

" mostly aesthetic options
set laststatus=2
set ruler
"set relativenumber
set number
set guioptions=
set t_Co=256
set cpoptions+=$
set splitright
set numberwidth=1
set foldmethod=indent
set foldlevel=999
set linebreak
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:·,trail:■
set list
if has('linebreak')
  set showbreak=↪
  silent! set breakindent
else
  set listchars+=eol:¬
endif

syntax on

set background=dark
silent! colorscheme gruvbox

" fallback default colorscheme
if !exists('g:colors_name')
  colorscheme desert
endif



" standard status line if lightline isn't enabled
" (pretty much the same layout as default lightline)
set statusline=%<%f\ %h%m%r%=%y
if exists('g:noscrollbar_loaded')
  set statusline+=\ %{noscrollbar#statusline()}
else
  set statusline+=\ %P
endif
set statusline+=%8(%l,%v%)\ 

augroup vimrc_appearance_and_formatting
  au!

  " I want these format options everywhere
  au FileType * set formatoptions=rq1j

  " maximize window in Windows
  

  " resize vim-windows when program window is resized
  au VimResized * :wincmd =

  " this makes the trailing space indicator invisible
  " while typing, otherwise it would drive me crazy
  au InsertEnter * :set listchars-=trail:■
  au InsertLeave * :set listchars+=trail:■

augroup END

" GUI Settings {{{
  if has("gui_running")
  if has("gui_gtk2")
    set guifont=Hermit\ Medium\ 10
  elseif has("gui_photon")
    set guifont=Hermit:s10
  elseif has("gui_kde")
    set guifont=Hermit/10/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-hermitr-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Hermit:h10:cDEFAULT
  endif
endif
  " }}}

" }}}
" ===========================================================================
" KEY MAPPINGS {{{
" ===========================================================================
" anything related to plugins is located
" under its respective PLUGIN SETTINGS section

" ---------------------------------------------------------------------------
" REMAPS OF DEFAULTS {{{
" ---------------------------------------------------------------------------
" it's good to remember these in case I'm stuck with vanilla vi/vim

" disabled
noremap  <F1>    <Nop>
inoremap <F1>    <Nop>
noremap  <Space> <Nop>
noremap  <S-CR>  <Nop>
noremap  <CR>    <Nop>

" go back to last buffer
noremap <Backspace> <C-^>

" Y yanks until EOL, more like D and C
" yy still yanks the whole line
nnoremap Y y$

" U as a more sensible redo
nnoremap U <C-R>

" Q to replay the q register
" I have never wanted to use Ex mode.
nnoremap Q @q

" [S]plit lines (sister to [J]oin line) {{{
" cc still changes the whole line
function! s:SplitLine()
  normal! i
^gk
  silent! substitute/\v +$//
  silent! nohlsearch
  call histdel("search", -1)
  normal! $
endfunction
" }}}
nnoremap S :call <SID>SplitLine()<CR>

" center when jumping {{{
function! s:Center()
  let prev_so = &scrolloff
  set scrolloff=999
  redraw
  let &scrolloff = prev_so
endfunction
" }}}
" new jump list mnemonic: previous, next
nnoremap <silent> <C-P> <C-O>:call <SID>Center()<CR>
nnoremap <silent> <C-N> <C-I>:call <SID>Center()<CR>

" easier scrolling
nnoremap <C-J> <C-D>
nnoremap <C-K> <C-U>

" easier fold managing
nnoremap <Tab> za
nnoremap <S-Tab> zM

" going to the exact column is more useful most of the time
nnoremap ` '
nnoremap ' `

" open current file's directory
if !exists("g:loaded_vinegar")
  nnoremap - :e <C-R>=fnameescape(expand('%:p:h'))<CR>/<CR>
endif

" open current working directory
nnoremap + :e .<CR>

nnoremap <expr><silent> \| !v:count ? "<C-W>v<C-W><Right>" : '\|'
nnoremap <expr><silent> _  !v:count ? "<C-W>s<C-W><Down>"  : '_'

" move by wrapped lines instead of line numbers, unless the motion is counted
" also set a mark for movements across 5 lines or more
nnoremap <expr> j (v:count >= 5 ? "m'" . v:count : '').(v:count? 'j' : 'gj')
nnoremap <expr> k (v:count >= 5 ? "m'" . v:count : '').(v:count? 'k' : 'gk')
vnoremap <expr> j (v:count >= 5 ? "m'" . v:count : '').(v:count? 'j' : 'gj')
vnoremap <expr> k (v:count >= 5 ? "m'" . v:count : '').(v:count? 'k' : 'gk')

" automatically jump to the end of pasted text
" useful for pasting multi-lines of text
xnoremap p p`]
nnoremap p p`]

" visually select the last paste or change
nnoremap gp `[v`]

" esc to stop inserting in Neovim terminal mode
if s:is_nvim
  tnoremap <Esc><Esc> <C-\><C-N>
endif

" }}}
" ---------------------------------------------------------------------------
" NORMAL MAPS {{{
" ---------------------------------------------------------------------------

" Emacs cancel blasphemy
inoremap <C-G> <Esc>
cnoremap <C-G> <C-C>
xnoremap <C-G> <Esc>

" from tpope's rsi
inoremap <C-A> <C-O>^
inoremap <expr> <C-E> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<Lt>C-E>":"\<Lt>End>"

" expand-o-brackets
inoremap {<Tab> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O

" change directories (minor time saver)
nnoremap cd :cd<Space>

" quickly manage buffers
nnoremap gb :ls<CR>:b<Space>
nnoremap gB :ls!<CR>:b<Space>

" resizing windows
noremap <C-Left>  <C-W><
noremap <C-Up>    <C-W>+
noremap <C-Down>  <C-W>-
noremap <C-Right> <C-W>>

" q to quit help {{{
" (from Junegunn's vimrc)
function! s:helpquit()
  if &buftype == 'help'
    nnoremap <buffer> q :bd<CR>
  endif
endfunction
augroup q_for_quit
  au!
  au BufEnter *.txt call s:helpquit()
augroup END
" }}}

" Source vimscript operator {{{
" Nice for quick vimscript testing.
function! s:SourceVimscript(type)
  let sel_save = &selection
  let &selection = "inclusive"
  let reg_save = @"
  if a:type == 'line'
    silent execute "normal! '[V']y"
  elseif a:type == 'char'
    silent execute "normal! `[v`]y"
  elseif a:type == "visual"
    silent execute "normal! gvy"
  elseif a:type == "currentline"
    silent execute "normal! yy"
  endif
  let @" = substitute(@", '\n\s*\\', '', 'g')
  " source the content
  @"
  let &selection = sel_save
  let @" = reg_save
endfunction
" }}}
nnoremap <silent> g: :set opfunc=<SID>SourceVimscript<CR>g@
vnoremap <silent> g: :<C-U>call <SID>SourceVimscript("visual")<CR>
nnoremap <silent> g:: :call <SID>SourceVimscript("currentline")<CR>

" %% for current buffer file name
" :: for current buffer file path
cnoremap %% <C-R>=fnameescape(expand('%'))<CR>
cnoremap :: <C-R>=fnameescape(expand('%:p:h'))<CR>/

" unimpaired.vim inspired
" toggle pastemode
set pastetoggle=cop
" toggle centering the cursor
nnoremap coz :let &scrolloff=999-&scrolloff<CR>:set so?<CR>

" }}}
" ---------------------------------------------------------------------------
" LEADER MAPS {{{
" ---------------------------------------------------------------------------

" leader the easiest key to reach
let mapleader = "\<Space>"
let maplocalleader = "\\"

" edit vimrc
nnoremap <silent> <Leader>v :edit $MYVIMRC<CR>
nnoremap <silent> <Leader>V :tabnew $MYVIMRC<CR>

" shortcuts
nnoremap <Leader>f :find<Space>
nnoremap <Leader>s :write<CR>
nnoremap <Leader>h :help<Space>

" save my pinky some stress
nnoremap <Leader><Space> :
nnoremap <Leader>w <C-w>

" circular windows
nnoremap <Leader><Tab> <C-W>w

" populate the location list with last search results
" useful for seeing the exact number of matches
nnoremap <Leader>/ :lvim //g %<CR>

" search for all numbers
nnoremap <Leader># /\v\d+<CR>

" search for all brackets
noremap <Leader>{ ?[{}]<CR>
noremap <Leader>} /[{}]<CR>

" toggle location & quickfix lists {{{
" (from vimwiki)
function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
    echohl ErrorMsg
    echo "Location List is Empty."
    return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction
" }}}
nnoremap <silent> <Leader>l :call ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>q :call ToggleList("Quickfix List", 'c')<CR>

" alternate between header and source files {{{
" <Leader>A or :A
" (credit to junegunn's vimrc)
function! s:A()
  let name = expand('%:r')
  let ext = tolower(expand('%:e'))
  let sources = ['c', 'cc', 'cpp', 'cxx']
  let headers = ['h', 'hh', 'hpp', 'hxx']
  for pair in [[sources, headers], [headers, sources]]
    let [set1, set2] = pair
    if index(set1, ext) >= 0
      for h in set2
        let aname = name.'.'.h
        for a in [aname, toupper(aname)]
          if filereadable(a)
            execute 'e' a
            return
          end
        endfor
      endfor
    endif
  endfor
endfunction
command! A call <SID>A()
" }}}
nnoremap <Leader>A :A<CR>

" quick scratch buffer
nnoremap <Leader>S :enew<CR>:setl bt=nofile bh=hide noswf<CR>:set ft=

" copy all to system clipboard
nnoremap \y ggVG"+y

" }}}
" ---------------------------------------------------------------------------

" }}}
" ===========================================================================
" FUNCTIONS, COMMANDS, MISC {{{
" ===========================================================================
" everything else goes here

" delete all buffers and open Startify (if possible)
function! s:RestartVim()
  if exists('g:loaded_startify')
    SClose
  else
    %bdelete
    setl buftype=nofile bufhidden=wipe
  endif
endfunction
command! -bar RestartVim call <SID>RestartVim()



" toggle syntax highlighting
" useful when Vim is crippled by its inefficient highlighting
function! s:ToggleSyntaxHighlighting()
  let s:folds = &foldlevel
  exec 'syntax '.(exists("g:syntax_on") ? 'off' : 'on')
  let &foldlevel=s:folds
endfunction
command! ToggleSyntax call <SID>ToggleSyntaxHighlighting()

" DoubleView {{{
" Vertically split the current buffer into two windows which will stay
" scroll-bound together.  Allows you to see twice as much as before!
" (disables the wrap setting and expands folds to work better)
" (PS: this is kind of janky, but I like it anyway)
function! s:DoubleView()
  let s:DV_so=&scrolloff
  set scrolloff=0 noscrollbind nowrap nofoldenable
  botright vsplit
  normal! Ljzt
  setl scrollbind
  wincmd p
  setl scrollbind
  let &scrolloff=s:DV_so
endfunction " }}}
command! DoubleView call <SID>DoubleView()

" Follow symlinks {{{
" Sources:
"  - https://github.com/tpope/vim-fugitive/issues/147#issuecomment-7572351
"  - http://www.reddit.com/r/vim/comments/yhsn6/is_it_possible_to_work_around_the_symlink_bug/c5w91qw
if s:is_windows
  function! MyFollowSymlink(...)
    let lit = a:0 ? a:1 : '%:p'
    let recur = a:0 > 1 ? a:2 : 10
    if !recur
      return
    endif
    let fpath = expand(lit)
    let ftail = expand(lit.':t')
    let dirstr = system('dir ' . fpath . '*')

    " check if current argument is a symlink
    if (match(dirstr, '<SYMLINK..\s\+' . ftail . ' [') == -1)
      " if not, check if parent dir is symlink, up to $recur directories
      call MyFollowSymlink(lit . ':h', recur-1)
    else
      " extract symlink path
      let substr = '.*<SYMLINK..\s\+' . ftail . ' \[\(.\{-}\)\].*'
      let sympath = substitute(dirstr, substr, '\1', "")
      " figure out current file's path
      let resolvedfile = filereadable(sympath) ?  sympath :
            \ findfile(expand('%:t'), sympath, '**')

      " 'follow' the symlink
      if bufexists(resolvedfile)
        exec 'buffer ' . resolvedfile . ' | bw '.fpath
      else
        silent exec 'file ' . resolvedfile . ' | bw '.fpath
        exec 'file ' . expand('%:p') . ' | w! | doau BufRead'
      endif
    endif
  endfunction
  " au BufReadPost * call MyFollowSymlink('<afile>:p')
else
  function! MyFollowSymlink(...)
    let fname = a:0 ? a:1 : expand('%')
    if fname =~ '^\w\+:/'
      " Do not mess with 'fugitive://' etc.
      return
    endif
    let fname = simplify(fname)
    let resolvedfile = resolve(fname)
    if resolvedfile == fname
      return
    endif
    let resolvedfile = fnameescape(resolvedfile)
    let sshm = &shm
    set shortmess+=A  " silence ATTENTION message about swap file (would get displayed twice)
    exec 'file ' . resolvedfile
    let &shm=sshm

    " Re-init fugitive.
    call fugitive#detect(resolvedfile)
    if &modifiable
      " Only display a note when editing a file, especially not for `:help`.
      redraw  " Redraw now, to avoid hit-enter prompt.
      echomsg 'Resolved symlink: =>' resolvedfile
    endif
  endfunction
  " au BufReadPost * call MyFollowSymlink('<afile>')
endif
" }}}
command! FollowSymlink call MyFollowSymlink()

" custom text objects
let s:separators = exists('g:loaded_targets') ? [ '`', '%']
      \ : [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '`' ]
for char in s:separators
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" Clear Trailing White spaces
cabbrev ctw s/\s\+$//e

" ...
augroup top_o_file
  au!
  au BufEnter d*_*y.txt normal! gg
augroup END

" }}}
" ===========================================================================
" PLUGIN SETTINGS {{{
" ===========================================================================

" don't load these settings without plugins
if isdirectory(expand(s:myvimdir . "/plugged"))

  " Fugitive {{{
  " TODO: Read docs on other Fugitive functions and use them
  nnoremap <Leader>gs :Gstatus<CR>
  nnoremap <Leader>gd :Gdiff<CR>
  nnoremap <Leader>gD :Gdiff HEAD<CR>
  nnoremap <Leader>gc :Gcommit<CR>
  nnoremap <Leader>gl :Git log<CR>
  nnoremap <Leader>gp :Git push<CR>
  nnoremap <Leader>gw :Gwrite<CR>
  nnoremap <Leader>gr :Gremove<CR>
  nnoremap <Leader>gg :Ggrep<Space>
  " hide fugitive buffers to reduce buffer list clutter
  augroup vimrc_fugitive
    au!
    au BufReadPost fugitive://* set bufhidden=delete
  augroup END
  " }}}

  " Dispatch {{{
  nnoremap <Leader>m :Make<CR>
  " }}}

  " Startify {{{
  augroup startify_maps
    au!
    " " I use <CR> to enter command line mode,
    " " so use o to open files instead.
    " au User Startified unmap <buffer> <CR>
    " au User Startified nmap <buffer> o <Plug>(startify-open-buffers)
    au User Startified setlocal relativenumber number
  augroup END
  let g:ctrlp_reuse_window = 'startify'
  let g:startify_files_number = 6
  let g:startify_session_delete_buffers = 1
  let g:startify_session_persistence = 1
  " }}}

  " surround {{{
  augroup unmap_surround
    au!
    au VimEnter * iunmap <C-G>s
    au VimEnter * iunmap <C-G>S
  augroup END
  " }}}

  " vim-exchange {{{
  " nnoremap gxx <Plug>(ExchangeLine)
  " nnoremap gX <Plug>(ExchangeClear)
  " nnoremap gx  <Plug>(Exchange)
  " xnoremap gx  <Plug>(Exchange)
  " }}}


  
"}}}
 
" airline"{{{
let g:airline_theme                            =  "gruvbox"
let g:airline_powerline_fonts                  =  1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" let g:airline_section_warning = airline#section#create([ "syntastic" ])
let g:airline#extensions#branch#empty_message  =  "No SCM"
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter
let g:airline#extension#tmuxline#enabled       =  1



"}}}


  " wimproved.vim {{{
  " toggle fullscreen
  nnoremap <F11> :WToggleFullscreen<CR>
  augroup wimproved
    au!
    " make Windows less ugly
    au GUIEnter * silent! WToggleClean
  augroup END
  " }}}

  " Rainbow Parenthesis {{{
  augroup rainbow_filetypes
    au!
    au FileType c,cpp,vim,sh,dosbatch,lisp RainbowParentheses
  augroup END
  " }}}

  " vim-easy-align {{{
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  vmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
  " }}}

  " vim-clang-format {{{
  let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

  " map to <Leader>cf in C++ code
  autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
  autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
  " if you install vim-operator-user
  autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
  " Toggle auto formatting:
  nmap <Leader>C :ClangFormatAutoToggle<CR>

 "}}}
  
  " Goyo {{{
  " toggle Goyo (distraction free editing)
  nnoremap <Leader>G :Goyo<CR>
  " }}}


  " indentLines"{{{
  "nnoremap <Leader>i :IndentLinesToggle<CR>
  " use custom filetype detection for better vim-plug compatibility
  "let g:indentLine_char = '|'
  "let g:indentLine_color_gui = '#83a598'
  "let g:indentLine_fileType = ['']
  "augroup ft_indentLine
    "au!
    "au FileType c,cpp IndentLinesEnable
  "augroup END

  " indent-guides
  "let g:indent_guides_start_level = 2
  "let g:indent_guides_start_size = 1
  
  
"}}}
  " ipmotion {{{
  " Skip over closed folds with { and }
  let g:ip_skipfold = 1
  "}}}

  " vim-wordmotion {{{
  " I use this plugin to make Vim treat words
  " more similarly to Evil mode for Emacs

  " original text objects, think 'object' or 'original'
  xnoremap io iW
  xnoremap ao aW
  onoremap io iW
  onoremap ao aW
  " }}}

  " targets.vim {{{
  xmap a" A"
  xmap a' A'
  xmap a` A`
  omap a" A"
  omap a' A'
  omap a` A`
  " }}}

  " vim-oblique {{{
  augroup ObliqueVimrc
    au!
    au User Oblique       normal! zz
    au User ObliqueStar   normal! zz
    au User ObliqueRepeat normal! zz
  augroup END
  " }}}

  " Dirvish {{{
  " disable netrw
  let g:loaded_netrw = 1
  let g:loaded_netrwPlugin = 1
  " open current file's directory
  nnoremap <silent> - :Dirvish %<CR>
  " open current working directory
  nnoremap <silent> + :Dirvish<CR>
  augroup my_dirvish_events
    au!
    " " I use <CR> to enter cmdline mode,
    " " so use o to open
    " au FileType dirvish
    "       \ nnoremap <buffer> <CR> :
    "       \|xnoremap <buffer> <CR> :
    "       \|nnoremap <buffer> o :call dirvish#open("edit", 0)<CR>
    "       \|xnoremap <buffer> o :call dirvish#open("edit", 0)<CR>
    "       \|nnoremap <buffer> h :call dirvish#open("split", 0)<CR>
    "       \|xnoremap <buffer> h :call dirvish#open("split", 0)<CR>
    "       \|nnoremap <buffer> l :call dirvish#open("vsplit", 0)<CR>
    "       \|xnoremap <buffer> l :call dirvish#open("vsplit", 0)<CR>
    " map gh to hide "hidden" files. (Unix only)
    au FileType dirvish nnoremap <buffer> gh
          \ :g@\v/\.[^\/]+/?$@d<CR>
    au FileType dirvish set nobuflisted
  augroup END
  " }}}

  " gtfo.vim {{{
  let g:gtfo#terminals = { 'win' : 'C:\WINDOWS\system32\cmd.exe /k' }
  " }}}

  " " switch.vim {{{
  " let g:switch_mapping = "<Leader>s"
  " "}}}

  " Tagbar {{{
  nnoremap <Leader>t :TagbarToggle<CR>
  " }}}

  " undotree {{{
  nnoremap <Leader>u :UndotreeToggle<CR>
  function! g:Undotree_CustomMap()
    nunmap <buffer> <Tab>
  endfunc
  " }}}

  " Sayonara {{{
  " close buffer
  nnoremap gs :Sayonara<CR>
  " close buffer, don't close window
  nnoremap gS :Sayonara!<CR>
  " prompt to close vim when closing the last file
  let g:sayonara_confirm_quit = 1
  " see: 'q to quit help' under KEY MAPPINGS/NORMAL MAPS
  function! s:helpquit()
    if &buftype == 'help'
      nnoremap <buffer> q :Sayonara<CR>
    endif
  endfunction
  augroup q_for_quit
    au!
    au BufEnter *.txt call s:helpquit()
  augroup END
  " }}}

  " CtrlP {{{
  " ignore .git folders to speed up searches
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
  let g:ctrlp_max_depth = 15
  " include hidden files
  let g:ctrlp_show_hidden = 1
  " open multiple files in ONE window
  let g:ctrlp_open_multiple_files = '1vr'
  " ctrl-o to open specifically
  let g:ctrlp_arg_map = 1
  " change default CtrlP mapping
  let g:ctrlp_map = '<Leader>p'
  " shortcuts
  nnoremap <Leader>p :CtrlP<CR>
  nnoremap <Leader>b :CtrlPBuffer<CR>
  nnoremap <Leader>- :CtrlPCurFile<CR>
  nnoremap <Leader>+ :CtrlPCurWD<CR>
  nnoremap <Leader><C-R> :CtrlPMRU<CR>
  nnoremap <Leader><C-L> :CtrlPLine<CR>
  nnoremap <Leader><C-P> :CtrlP<Space>
  " }}}

  " UltiSnips {{{
  " disable ListSnippits in favor of Supertab's 'tab literal'
  " it's <C-Tab> by default
  let g:UltiSnipsListSnippets='<C-}>'
  " }}}

endif

" }}}
" ===========================================================================
redir END
