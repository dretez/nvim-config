return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    collumns = {
      'icon',
      -- 'permissions',
      'size',
      'mtime',
    },
    view_options = {
      show_hidden = false,
    },
    float = {
      max_width = 0,
      max_height = 0,
    },
  },
}
