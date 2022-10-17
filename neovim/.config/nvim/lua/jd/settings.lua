local set = vim.opt
local window = vim.wo

-- WINDOW
window.number = true
set.number = true
set.relativenumber = true
set.scrolloff = 5
set.cursorline = true
set.hidden = true

-- SHELL
set.shell = 'zsh'

-- TAB
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true

set.smarttab = true
set.smartindent = true
set.wrap = false

-- SEARCH
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.wildoptions = 'pum' --popup menu

-- Give more space for displaying messages.
set.cmdheight = 1

-- POPUP MENU
set.pumblend = 30

-- SPLIT
set.splitbelow = true
set.splitright = true

-- ENCODING
vim.scriptencoding = 'utf-8'
set.fileencoding = 'utf-8'
set.encoding = 'utf-8'

-- THEME
set.termguicolors = true

-- SUBSITUTE
set.inccommand = "split"

