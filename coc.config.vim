" https://github.com/neoclide/coc.nvim

" extensions
let g:coc_global_extensions = ['coc-json', 'coc-highlight', 'coc-lists']

" extensions->coc-tsserver
" Note: for React to work as expected, you need your JSX filetype to be javascript.jsx and your TSX filetype to be typescript.jsx or typescript.tsx. In coc.nvim, these filetypes are mapped to javascriptreact and typescriptreact because that's what tsserver uses.
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Restart coc, when there shouldn't have any error but many error displaying. you can use this to refresh coc
nmap <silent> <space>r :<C-u>CocRestart<cr>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gtd <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>cr <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>cfs  <Plug>(coc-format-selected)
nmap <leader>cfs  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>cas  <Plug>(coc-codeaction-selected)
nmap <leader>cas  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ca  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-Up> <Plug>(coc-range-select)
xmap <silent> <C-Up> <Plug>(coc-range-select)
xmap <silent> <C-Down> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Remap for do codeAction of current line
nmap <leader>cff  :Format<cr>
xmap <leader>cff  :Format<cr>

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Find files
nnoremap <silent> <leader>sf  :<C-u>CocList files<cr>
" Search workspace symbols
nnoremap <silent> <leader>ss  :<C-u>CocList -I symbols<cr>
" Find recent used files
nnoremap <silent> <leader>se  :<C-u>CocList buffers<cr>
" Find history used files
nnoremap <silent> <leader>sh  :<C-u>CocList mru<cr>
" Search in project
nnoremap <silent> <leader>sip  :<C-u>CocList grep<cr>
" Search in current file
nnoremap <silent> <leader>sif  :<C-u>CocList words<cr>
" Find files with current cursor
nnoremap <silent> <leader>sfs  :exe 'CocList --input='.expand('<cword>').' files'<cr>
" Search workspace symbols with current cursor
nnoremap <silent> <leader>sss  :exe 'CocList -I --input='.expand('<cword>').' symbols'<cr>
" Find recent used files with current cursor
nnoremap <silent> <leader>ses  :exe 'CocList --input='.expand('<cword>').' buffers'<cr>
" Find history used files with current cursor
nnoremap <silent> <leader>shs  :exe 'CocList --input='.expand('<cword>').' mru'<cr>
" Search in project with current cursor
nnoremap <silent> <leader>sips  :exe 'CocList --input='.expand('<cword>').' grep'<cr>
" Search in current file with current cursor
nnoremap <silent> <leader>sifs  :exe 'CocList --input='.expand('<cword>').' words'<cr>
