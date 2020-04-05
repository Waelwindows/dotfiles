call plug#begin('~/.config/nvim/plugged')
"Theme
Plug 'patstockwell/vim-monokai-tasty'

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'cespare/vim-toml'

"Lightline and buffers
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'

"Completeion manager
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"Deoplete clients
"Plug 'sebastianmarkow/deoplete-rust'

"Easy motion for easy navigation
Plug 'easymotion/vim-easymotion'

"Latex
Plug 'lervag/vimtex'

"Snippets
Plug 'sirver/ultisnips'

"Autoclose brackets/parenthesis
Plug 'cohama/lexima.vim'

"Autosave
Plug 'vim-scripts/vim-auto-save'

"LSP
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

"Rich presence
"Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}

"fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"tags
Plug 'ludovicchabant/vim-gutentags'
call plug#end()
