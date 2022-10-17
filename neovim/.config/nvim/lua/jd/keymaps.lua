local keymap = vim.keymap.set
local opts = { noremap = true, silent = true}

-- leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ','



-- sensible defaults
keymap('', 'Q', '') -- disable
keymap('n', 'x', '"_x') -- delete char without yank
keymap('x', 'x', '"_x') -- delete visual selection without yank

-- insert mode
keymap('i', '<C-j>', '<Down>')
keymap('i', '<C-k>', '<Up>')
keymap('i', '<C-h>', '<Left>')
keymap('i', '<C-l>', '<Right>')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- Tabs
keymap('n', '<leader>t', ':tabedit<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts )

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w')
keymap('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap('n', '<Space>', '<C-w>w')
keymap('', 'sh', '<C-w>h')
keymap('', 'sk', '<C-w>k')
keymap('', 'sj', '<C-w>j')
keymap('', 'sl', '<C-w>l')

-- Resize window
keymap('n', '<C-w><left>', '<C-w><')
keymap('n', '<C-w><right>', '<C-w>>')
keymap('n', '<C-w><up>', '<C-w>+')
keymap('n', '<C-w><down>', '<C-w>-')

