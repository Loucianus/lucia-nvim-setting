-- maps.lua

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local options = { noremap = true, silent = true}

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Markdown
map('n', '<F8>', ':MarkdownPreview<CR>', options)

-- NERDTree mapping
map('n', '<F2>', ':NvimTreeToggle<CR>', options)
map('n', '<F3>', ':TagbarToggle<CR>', options)

-- Telescope
map('n', '<F9>', ':Telescope find_files<cr>', options)

-- Floating Terminal
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', options)
map('t', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', options)

-- map('i', '<tab>', '<c-n>', options)

-- lsp enhence
map('n', 'gh', ':Lspsaga lsp_finder<CR>', options)
map('n', '<leader>ca', ':Lspsaga code_action<CR>', options)
map('v', '<leader>ca', ':<C-U>Lspsaga range_code_action<CR>', options)
map('n', 'K', ':Lspsaga hover_doc<CR>', options)
map('n', '<C-n>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', options)
map('n', '<C-p>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', options)
map('n', 'gs', ':Lspsaga signature_help<CR>', options)
map('n', 'gr', ':Lspsaga rename<CR>', options)
map('n', 'gd', ':Lspsaga preview_definition<CR>', options)
map('n', '<leader>cd', ':Lspsaga show_line_diagnostics<CR>', options)
map('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', options)
map('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', options)


--dashboard
cmd [[
    nmap <Leader>ss :<C-u>SessionSave<CR>
    nmap <Leader>sl :<C-u>SessionLoad<CR>
    nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
    nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
    nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
    nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
    nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
    nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
]]

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
