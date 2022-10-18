local keymap = vim.keymap.set
local opts = { noremap = true, silent = true}

-- leader to space
keymap("","<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Fast exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "lk", "<ESC>", opts)

keymap("", "<C-e>", ":NvimTreeToggle<CR>", opts)
keymap("", "<leader>e", ":NvimTreeToggle<CR>", opts)


-- sensible defaults
keymap('', 'Q', '') -- disable
keymap('n', 'x', '"_x') -- delete char without yank
keymap('x', 'x', '"_x') -- delete visual selection without yank
keymap('v', 'p', '"_dP', opts) -- keep previous yank when pasting

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G', opts)


keymap('n', '<leader>q', ':q<CR>', opts )

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w', opts)
keymap('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- Move window
keymap('', '<C-h>', '<C-w>h', opts)
keymap('', '<C-Left>', '<C-w>h', opts)
keymap('', '<C-k>', '<C-w>k', opts)
keymap('', '<C-Up>', '<C-w>k', opts)
keymap('', '<C-j>', '<C-w>j', opts)
keymap('', '<C-Down>', '<C-w>j', opts)
keymap('', '<C-l>', '<C-w>l', opts)
keymap('', '<C-Right>', '<C-w>l', opts)

-- Resize window
keymap('n', '<S><C-Left>', '<C-w><', opts)
keymap('n', '<S><C-Right>', '<C-w>>', opts)
keymap('n', '<S><C-Up>', '<C-w>+', opts)
keymap('n', '<S><C-Down>', '<C-w>-', opts)


-- NORMAL MODE
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- INSERT MODE

-- VISUAL MODE
-- Move text up and down
keymap("v", "<A-Up>", ":m .+1<CR>==", opts)
keymap("v", "<A-Down>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK MODE
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

