local set = vim.opt
local api = vim.api

-- encoding
vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'

-- visual
set.ambiwidth = 'double'
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true
set.smartindent = true

set.visualbell = true
set.number = true
set.showmatch = true
set.matchtime = 1

-- search
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
api.nvim_set_keymap('n', '<Esc><Esc>', ':nohl<CR>', { noremap = true, silent = true })

-- manipulation
vim.g.mapleader = ' '
set.clipboard:append{'unnamedplus'}
set.ttimeout = true
set.ttimeoutlen = 50

set.undofile = true
set.undodir = vim.fn.stdpath('cache') .. '/undo'

-- keymap
local keymap = vim.keymap
keymap.set('n', 'j', 'gj', { noremap = true })
keymap.set('n', 'k', 'gk', { noremap = true })
keymap.set('n', '<Down>', 'gj', { noremap = true })
keymap.set('n', '<Up>', 'gk', { noremap = true })
keymap.set('n', 'gj', 'j', { noremap = true })
keymap.set('n', 'gk', 'k', { noremap = true })
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

-- plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
set.rtp:prepend(lazypath)

-- plugins
require("lazy").setup("plugins")

