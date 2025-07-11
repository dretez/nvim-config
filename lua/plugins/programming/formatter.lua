return { -- Autoformat
  'stevearc/conform.nvim',
  enabled = true,
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile', 'BufWritePost' },
  keys = {
    {
      '<leader>fb',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    stop_after_first = true,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'autopep8' },
      javascript = { 'prettierd', 'prettier' },
      css = { 'prettierd', 'prettier' },
      scss = { 'prettierd', 'prettier' },
      html = { 'prettierd', 'prettier' },
      asm = { 'asmfmt' },
      c = { 'clang-format' },
      cpp = { 'clang-format' },
      sh = { 'beautysh' },
    },
  },
}
