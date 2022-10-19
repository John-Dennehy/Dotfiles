local window = vim.wo
window.number = true

local options = {
  completeopt = { "menuone", "noselect" },
  number = true,
	relativenumber = false,
	scrolloff = 5,
	cursorline = true,
	hidden = true,
	signcolumn = "yes",
	timeoutlen = 1000,
	showtabline = 2,

	swapfile = true,
	undofile = true,
	writebackup = false,
	timeoutlen = 200,

	shell = 'zsh',

	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,

	smarttab = true,
	smartindent = true,
	wrap = false,

	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	wildoptions = 'pum', --popup menu

	cmdheight = 1,

	pumblend = 30,
	pumheight = 10,

	splitbelow = true,
	splitright = true,

	fileencoding = 'utf-8',
	encoding = 'utf-8',

	termguicolors = true,

	inccommand = "split",

	backup = false,
	clipboard = "unnamedplus",
}

for key, value in pairs(options) do
  vim.opt[key] = value
end


