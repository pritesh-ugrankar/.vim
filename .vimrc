" → Preamble "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Personal VIMRC Settings. 
"Might not work on other versions.
"This works perfectly on linux.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Settings "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting options start.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make vim not compatible with Vi
set nocompatible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set pathogen
execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set syntax on
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set filetype related settings
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set Numbers
set nu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Dont crazy indent copy-pasted stuff in terminal vim.
"Hit <F2> when in insert mode and paste. Hit <F2> again when done.
set pastetoggle=<F2>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Allow to open a new file even when I have unwritten changes in the existing file. 
"Also, undo buffers and marks are preserved while the buffer is open.
set hidden
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case while searching
set ignorecase
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight as I type the words while searching.
set incsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"If I Search/SEArch/sEaRcH etc , then highlight Search/SEArch/sEaRcH 
"else highlight the word search without any regard for case.
set smartcase
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make cursor jump to the matching bracket.
set showmatch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Autoindent
set autoindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Do smart autoindenting when starting a new line.
"Generally enabled after setting autoindent
set smartindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the line and column number of the cursor position, separated by a comma.
"Displays Top/Bot/File %
set ruler
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Disable beeping
set noerrorbells
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Flash the screen (visual bell)
set visualbell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the mode (Insert/Visual etc) in the lower left corner of the screen.
set showmode 
"Set the following command in case you are using airline/lightline
"set noshowmode 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the command I am running.
set showcmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable mouse in "a"ll aspects
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set history and undolevels
set history=1000
set undolevels=1000
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tab completion cycle-through shows up in the statusline
set wildmenu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set backspace to behave better
set backspace=2
set backspace=indent,eol,start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Search Highlight
set hlsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Change the current working directory whenever you open a file, switch buffers,
"delete a buffer or open/close a window.
"Note: When this option is on some plugins MAY NOT work.
set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"important settings for line wrapping
"do not remove these two lines below.
set textwidth=170
set formatoptions-=t
"important settings for line wrapping
"do not remove these two lines above.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NEVER EVER SET nowrap. It will mess things up.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Damian Conway's clever hack. 
"Make the color column visible only when the line actually crosses over.
"Does not seem to work with Centos (7.2) vim.
set colorcolumn=0
call matchadd('ColorColumn', '\%81v', 100)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encodings
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8
scriptencoding utf-8
setglobal fileencoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set fold method to "marker"
"Fold text between {{{ and }}}
set foldmethod=marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Set swapfiles directory
"set directory=%HOMEPATH%\\vim\\vimswap//
""Set backup files directory
"set backupdir=%HOMEPATH%\\vim\\vimbkup//
""Set undo directory
"set undodir=%HOMEPATH%\\vim\\vimundo//
""Note - You have to create the directories first. Vim wont create them for you.
"Otherwise, you can just set vim to NOT have any of these
set nobackup
set noswapfile
set noundofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set command to clear registers.
function! ClearRegisters()
	let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
	let i=0
	while (i<strlen(regs))
		exec 'let @'.regs[i].'=""'
		let i=i+1
	endwhile
endfunction
command! ClearRegisters call ClearRegisters()
"end of function and the command to clear registers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set $ to appear when you type cw etc.
set cpoptions+=$
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Virtual Edit 
"set virtualedit=all 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set list chars
set listchars=tab:>>,eol:+,nbsp:&
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set terminal to 512 colours. Not helpful at all in Windows command console.
set t_Co=512
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background 
set background=light
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorscheme
colorscheme github
let g:rehash256=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show statusline
set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline options
set statusline=\ %F\ »\ %h%m%r\ %y%=\ %n\ »\ %-10.(%l,%c%V%)\ →\ %P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show a → when long lines wrap over
"set showbreak=→
set showbreak=↪
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn off menu bar
set guioptions-=m
"Turn off tool bar
set guioptions-=T
"Turn off right scrollbar
set guioptions-=r
"Turn off left scrollbar
set guioptions-=l
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Leader Key:
let mapleader = ","
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End of Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
 "→ Mappings "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings start here.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Normal Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map '' to flip between the tabs
nnoremap '' <ESC>:tabnext<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map j so that it will move DOWN line by line for long wrapped lines.
nnoremap j gj
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map k so that it will move UP line by line for long wrapped lines.
nnoremap k gk
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Function Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Following key map shows/removes search match highlight when <F3> is pressed.
nnoremap <F3> :set hlsearch!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Edit vimrc
nnoremap <F4> :edit $MYVIMRC <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Source vimrc
nnoremap <F5> :source $MYVIMRC <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set/unset list
nnoremap <F6> :set nolist!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set/unset cursor line highlighting
nnoremap <F7> :set nocul!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set mapping for NeoComplCache Enable
nnoremap <F8> :NeoCompleteEnable<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set scrollbind so that the split screens move up/down together
nnoremap <F9> :set scrollbind!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch between the current and previous buffer easily
nnoremap <F10> <ESC>:b#<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map <F11> to Quit WITHOUT SAVING.  
nnoremap <F11> <ESC>:q!<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Map space to za to better toggle folds: 
nnoremap <SPACE> za
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Painful setting forcing the use h j k l only in NORMAL Mode"
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <left> <Nop>
nnoremap <Right> <Nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Insert Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map jk to escape in Normal Mode and save the file contents as well
inoremap jk <esc>:w<CR><ESC>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Painful settings disabling the arrow keys in INSERT mode" 
"Map jk to escape in Normal Mode and save the file contents as well
inoremap <left> <Nop>
inoremap <Right> <Nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Visual Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map ;; to escape in Visual Mode
vnoremap ;; <esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note:- Do NOT EVER remove this mapping. This is awesome.
"Search visually selected text, forwards/backwards
vnoremap <silent> * :<C-U>
 		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
       		\gvy/<C-R><C-R>=substitute(
       		\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
       		\gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
       		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
       		\gvy?<C-R><C-R>=substitute(
       		\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
       		\gV:call setreg('"', old_reg, old_regtype)<CR>    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Select Mode Mappings 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"The select mode allows users to select text using mouse, but if any key (e.g.jk
"mapped to <ESC>), is pressed, it will remove the selected text. The following
"mapping makes "jk" and ";" behave correctly. 
snoremap jk <ESC>:echo "Out of the [Select Mode]. Nothing was copied though."<CR>
snoremap ; <ESC>:echo "Out of the [Select Mode]. Nothing was copied though."<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"When you type : to escape the select mode your text gets replaced with
"the : sign. The following mapping fixes that.
snoremap : <ESC>:

" Mappings end here.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Aliases "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev recieve receive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev percieve perceive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev investirage investigate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev clariion CLARiiON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev vmax Symmetrix VMAX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev serail Serial No:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev navi naviseccli -h
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev syma symaccess -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symco symconfigure -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symd symdev -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symmd symmaskdb -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev szmp show zone member pwwn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev sza show zoneset active \| inc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev sfdi show fcns database \| inc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symr symrdf -g 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Plugins"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Neocomplete
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\|\h\w*->\h\w*\|\h\w*::\|\h\w*::\h\w*'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic']
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "E"
let g:syntastic_warning_symbol = "W"

"End of plugins. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " }}}                                                                     

