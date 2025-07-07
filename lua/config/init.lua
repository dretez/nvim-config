-- Setup `mapleader` and `maplocalleader` before anything else
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'config.keymaps'
require 'config.autocmds'
require 'config.lazy'
require 'config.options'
