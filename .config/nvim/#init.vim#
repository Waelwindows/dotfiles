source ~/.config/nvim/plugins.vim
source ~/.config/nvim/lightline.vim

set number
set relativenumber
set clipboard+=unnamedplus
set noshowmode
set ignorecase
set smartcase

set showtabline=2

let mapleader=","

nnoremap <A-t> :NERDTreeToggle<CR>
nnoremap <Tab> %

"Common normal mode shortcuts
nnoremap ; :

inoremap jj <Esc>
inoremap <A-;> <Esc>:

"Buffer navigation
nnoremap <A-w> :hide<CR>
nnoremap <A-w> :if winnr('$') > 1 \|hide\|else\|silent! exec 'bd'\|endif<CR>
nnoremap <A-h> :bp!<CR>
nnoremap <A-l> :bn!<CR>

"Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
""Move
nnoremap <C-A-h> <C-w>H
nnoremap <C-A-j> <C-w>J
nnoremap <C-A-k> <C-w>K
nnoremap <C-A-l> <C-w>L

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

"Theme
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')

"Deoplete settings
"Automatically choose the first option
set completeopt=menu,preview
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
    call deoplete#custom#option({
    \ 'auto_complete': v:true,
    \ 'on_insert_enter': v:true,
    \ 'on_text_changed_i': v:true,
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ })

"Latex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'

"Easymotion settings
map <Leader> <Plug>(easymotion-prefix)

"Ultisnips settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"Vimtex
let g:vimtex_view_method = 'zathura'

"Deoplete racer
let g:deoplete#sources#rust#racer_binary = "/home/waelwindows/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path = "/home/waelwindows/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/"

"fzf settings
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"LSP
"" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
\ 'rust': ['ra_lsp_server'],
\ 'python': ['pyls'],
\ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


"File type settings
augroup my_filetypes
    autocmd!
    autocmd FileType tex setlocal shiftwidth=2 softtabstop=2 
    autocmd FileType tex :let g:auto_save=1
    autocmd FileType bar,baz setlocal noexpandtab shiftwidth=3 spell spellang=en_us
augroup END
