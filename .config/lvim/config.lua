--[[
lvim is the global options object

Linters should be
filled in as strings with either a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedarker"

-- vim options
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true

-- vimspector
vim.g.vimspector_enable_mappings = "HUMAN"
lvim.keys.normal_mode["<F2>"] = ":VimspectorReset<cr>"
lvim.keys.normal_mode["<space><F5>"] = ":w | !npm run build<cr> | <Plug>VimspectorContinue"
lvim.keys.normal_mode["<F5>"] = "<Plug>VimspectorContinue"

-- nvim
lvim.builtin.nvimtree.setup.actions.open_file.resize_window = true
lvim.builtin.nvimtree.setup.renderer = {}
lvim.builtin.nvimtree.setup.respect_buf_cwd = nil



-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- install additional plugins
lvim.plugins = {
    {"folke/lua-dev.nvim"},
    {"rafcamlet/nvim-luapad"},
    {"tpope/vim-surround"},
    {"tzachar/cmp-tabnine", run='./install.sh', requires = 'hrsh7th/nvim-cmp', event = "InsertEnter"},
    {"jose-elias-alvarez/nvim-lsp-ts-utils"},
    {"ray-x/lsp_signature.nvim"},
    {"puremourning/vimspector"}
}

-- add additional lsp config
require "lester.lsp-config"
require "lester.lsp-signature"

-- personal key mappings
require "lester.key-mappings"
