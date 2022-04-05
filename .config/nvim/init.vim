:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smarttab
:set guicursor=
:set noerrorbells
:set hidden
:set ignorecase
:set smartcase
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile
:set incsearch
:set scrolloff=8
:set signcolumn=yes

call plug#begin()
" Support plugins
Plug 'nvim-lua/plenary.nvim'

" Colorschemes
Plug 'gruvbox-community/gruvbox'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Autocompletion
Plug 'hrsh7th/nvim-cmp' " the completion plugin
Plug 'hrsh7th/cmp-buffer' " buffer completion
Plug 'hrsh7th/cmp-path' " path completion
Plug 'hrsh7th/cmp-cmdline' " command line completion
Plug 'hrsh7th/cmp-nvim-lsp' " language completion
Plug 'saadparwaiz1/cmp_luasnip' " snippet completions

" Snippets
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'rafamadriz/friendly-snippets' " a bunch of snippets to use

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

lua require("lester")

colorscheme gruvbox

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>

" remove highlighting after search.
nnoremap <cr> :noh<CR><CR>:<backspace>
