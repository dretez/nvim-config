-- [[ Setting options ]]
-- See `:help vim.opt`

vim.g.have_nerd_font = true

-- Keep the block cursor in insert mode
-- vim.o.guicursor = ''

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.signcolumn = 'yes'

vim.o.autoindent = true
vim.o.smartindent = true
-- Enable break indent
vim.o.breakindent = true

vim.o.wrap = false

vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.colorcolumn = '80'
vim.o.textwidth = tonumber(vim.o.colorcolumn)

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false
vim.o.ruler = false

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 50

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.o.timeoutlen = 200

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 20
vim.o.sidescrolloff = 10

vim.o.foldmethod = 'indent'
vim.o.foldenable = false

vim.o.autoread = true

-- Use C syntax for .h files
vim.g.c_syntax_for_h = true

vim.o.termguicolors = true

-- Colorscheme
local check, _ = pcall(vim.cmd.colorscheme, 'tokyonight')
if check == false then
  vim.cmd.colorscheme 'habamax'
end
