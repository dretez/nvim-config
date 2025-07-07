return {
  'stevearc/oil.nvim',
  event = { 'VimEnter' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    collumns = {
      'icon',
      -- 'permissions',
      'size',
      'mtime',
    },
    float = {
      max_width = 0,
      max_height = 0,
    },
  },
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
    }
  end,
}
