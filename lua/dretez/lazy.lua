-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  -- [[ Flavour ]]
  -- Plugins with superficial features, from making the ui more visually pleasing
  -- to integrating with Discord Rich Presence
  require 'dretez.plugins.colorschemes',
  require 'dretez.plugins.todo-comments',
  require 'dretez.plugins.presence',
  require 'dretez.plugins.bufferline',
  require 'dretez.plugins.lualine',

  -- [[ Code Writing ]]
  -- Plugins that help with staying in the flow when writing code
  require 'dretez.plugins.vim-sleuth',
  require 'dretez.plugins.comment',
  require 'dretez.plugins.hex',
  require 'dretez.plugins.autoclose',
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
  require 'dretez.plugins.nvim-cmp',
  require 'dretez.plugins.treesitter',
  require 'dretez.plugins.debug',
  require 'dretez.plugins.lint',

  -- [[ Git ]]
  -- Plugins that help integrating git
  -- require 'dretez.plugins.gitsigns',
  require 'dretez.plugins.neogit',
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
