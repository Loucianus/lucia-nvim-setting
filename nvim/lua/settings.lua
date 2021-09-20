local o = vim.o
local wo = vim.wo
local bo = vim.bo

local opt = vim.opt
local cmd = vim.cmd

o.dir = '/tmp'
o.helplang = 'cn'

-- Make line numbers default
wo.number = true 

-- Tab
-- bo.tabstop = 4
-- bo.expandtab = true
cmd [[
    set autoindent
    set expandtab
    set shiftwidth=4
    set smartindent
    set softtabstop=4
    set tabstop=4
]]
-- Sava undo history
opt.undofile = true

-- Colorscheme
cmd [[colorscheme gruvbox]] 
o.background = 'dark'

-- LSP Auto Complete 
o.completeopt = 'menuone,noinsert,noselect'
o.shortmess='c'

-- Iocns
require'nvim-web-devicons'.get_icons()
require'nvim-web-devicons'.setup {}

-- Floating Terminal
require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.7,
        width = 0.6,
    },
})

