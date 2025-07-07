-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup(
    'kickstart-highlight-yank',
    { clear = true }
  ),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Update files on autoread
vim.api.nvim_create_autocmd({
  'BufEnter',
  'CursorHold',
  'CursorHoldI',
  'FocusGained',
}, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { '*' },
})
