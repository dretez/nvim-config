-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  -- [[ Flavour ]]
  -- Plugins with superficial features, from making the ui more visually pleasing
  -- to integrating with Discord Rich Presence
  require 'dretez.plugins.colorschemes',
  require 'dretez.plugins.todo-comments',
  require 'dretez.plugins.presence',
  -- require 'dretez.plugins.bufferline',
  require 'dretez.plugins.status-line',

  -- [[ Code Writing ]]
  -- Plugins that help with staying in the flow when writing code
  require 'dretez.plugins.vim-sleuth',
  require 'dretez.plugins.comment',
  require 'dretez.plugins.hex',
  -- require 'dretez.plugins.autoclose',
  require 'dretez.plugins.autopairs',
  require 'dretez.plugins.indent_line',
  require 'dretez.plugins.mini',

  -- [[ Navigation ]]
  -- Plugins that help with general navigation, from files to macros
  require 'dretez.plugins.persistence',
  require 'dretez.plugins.which-key',
  require 'dretez.plugins.telescope',
  require 'dretez.plugins.harpoon',
  require 'dretez.plugins.neo-tree',

  -- [[ LSP ]]
  -- Plugins that add LSP features, from code highlighting to code completion
  require 'dretez.plugins.jdtls',
  require 'dretez.plugins.lspconfig',
  require 'dretez.plugins.formatter',
  require 'dretez.plugins.completion',
  require 'dretez.plugins.treesitter',
  require 'dretez.plugins.debug',
  require 'dretez.plugins.lint',

  -- [[ Git ]]
  -- Plugins that help integrating git
  require 'dretez.plugins.gitsigns',
  require 'dretez.plugins.neogit',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
