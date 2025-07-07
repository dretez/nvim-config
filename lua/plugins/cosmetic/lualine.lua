return { -- Custom status line
  'nvim-lualine/lualine.nvim',
  lazy = true,
  event = 'UiEnter',
  -- event = { 'BufReadPre', 'BufNewFile', 'BufWritePost' },
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
