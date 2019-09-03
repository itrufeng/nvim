" support mouse
:set mouse=a

" Alt + * move line
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
if has('macunix')
  nmap ∆ :m .+1<CR>==
  nmap ˚ :m .-2<CR>==
  imap ∆ <Esc>:m .+1<CR>==gi
  imap ˚ <Esc>:m .-2<CR>==gi
  vmap ∆ :m '>+1<CR>gv=gv
  vmap ˚ :m '<-2<CR>gv=gv
elseif has('unix')
  nmap <A-j> :m .+1<CR>==
  nmap <A-k> :m .-2<CR>==
  imap <A-j> <Esc>:m .+1<CR>==gi
  imap <A-k> <Esc>:m .-2<CR>==gi
  vmap <A-j> :m '>+1<CR>gv=gv
  vmap <A-k> :m '<-2<CR>gv=gv
endif

" Shifting blocks visually
" https://vim.fandom.com/wiki/Shifting_blocks_visually
imap <Tab> >>_
imap <S-Tab> <C-D>
vmap <Tab> >gv
vmap <S-Tab> <gv

" move between different window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" quit
nmap <Leader>w :wq<Enter>
nmap <Leader>q :q!<Enter>
imap <Leader>w <Esc>:wq<Enter>
imap <Leader>q <Esc>:q!<Enter>
nmap <C-s> :w<Enter>

" resize window
map <Leader>- :resize -10<Enter>
map <Leader>+ :resize +10<Enter>
map <Leader>< :vertical resize -10<Enter>
map <Leader>> :vertical resize +10<Enter>
"" hightline current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" font
if has('macunix')
  set guifont=Hack\ Nerd\ Font:h14
elseif has('unix')
  set guifont=Hack\ Nerd\ Font\ 14
endif

" tab spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" line number
set nu

" Disable end of line
:set nofixendofline

" Auto reload file when file changed
:set autoread
au FocusGained * :checktime

" hide scroll
set guioptions-=L
set guioptions-=r

" support copy & paste by Ctrl C/V/X
:imap <C-v> <ESC>"+pa
:vmap <C-c> "+y
:vmap <C-x> "+d

" support copy & paste by Command C/V/X
:imap <M-v> <ESC>"+pa
:vmap <M-c> "+y
:vmap <M-x> "+d

" switch window
map <Leader>[ :bp<Enter>
map <Leader>] :bn<Enter>

" Toggle terminal
nnoremap <F11> :call ToggleTerm("term-slider", 1)<CR>
 
function! ToggleTerm(termname, slider)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " pane is visible
        if a:slider > 0
            :exe pane . "wincmd c"
        else
            :exe "e #"
        endif
    elseif buf > 0
        " buffer is not in pane
        if a:slider
            :exe "botright split +resize10"
        endif
        :exe "buffer " . a:termname
    else
        " buffer is not loaded, create
        if a:slider
            :exe "botright split +resize10"
        endif
        :terminal
        :exe "f " a:termname
    endif
endfunction

" split window
map <Leader>sv :vsplit<Enter>
map <Leader>sh :split<Enter>