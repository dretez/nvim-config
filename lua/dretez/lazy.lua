-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  require 'dretez.plugins',
}, {
  defaults = {
    lazy = true,
  },
  install = {
    missing = true,
    colorscheme = { 'tokyonight_storm' },
  },
  performance = {
    cache = {
      enabled = true,
      path = vim.fn.stdpath 'cache' .. '/lazy/cache',
      disable_events = { 'VimEnter', 'BufReadPre' },
    },
    reset_packpath = true,
    rtp = {
      reset = true,
      paths = {},
      disable_plugins = {
        'netrtPlugin',
        'tutor',
      },
    },
  },
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
