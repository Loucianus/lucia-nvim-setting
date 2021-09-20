-- maps.lua

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local options = { noremap = true, silent = true}

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '


-- NERDTree mapping
map('n', '<F2>', ':NvimTreeToggle<CR>', options)
map('n', '<F3>', ':TagbarToggle<CR>', options)

-- Telescope
map('n', '<F9>', ':Telescope find_files<cr>', options)

-- Floating Terminal
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', options)
map('t', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', options)

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
