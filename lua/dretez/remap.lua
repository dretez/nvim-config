-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear search highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Shortcut to open Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Netrw' })

-- Move Lines
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bb', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
vim.keymap.set('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
-- vim.keymap.set('n', '<leader>bd', LazyVim.ui.bufremove, { desc = 'Delete Buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>:bd<cr>', { desc = 'Delete Buffer and Window' })

-- Keep cursor in the middle of the screen when jumping half page up/down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump half page [D]own' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump half page [U]p' })

-- Keep cursor in the middle of the screen when searching
vim.keymap.set('n', 'n', 'nzz', { desc = 'Find [n]ext occurence' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Find previous occurence' })
