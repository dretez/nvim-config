return {
  'tpope/vim-sleuth',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile', 'BufWritePost' },
} -- Detect tabstop and shiftwidth automatically
