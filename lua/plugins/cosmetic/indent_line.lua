return { -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  lazy = true,
  event = { 'BufReadPost', 'BufNewFile' },
  main = 'ibl',
  opts = {},
}
