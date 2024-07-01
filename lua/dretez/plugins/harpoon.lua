return {
  'ThePrimeagen/harpoon',
  -- event = 'VeryLazy',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {},
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>Ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon: [a]dd buffer' })
    vim.keymap.set('n', '<leader>Hr', function()
      harpoon:list():remove()
    end, { desc = '[H]arpoon: [r]emove buffer' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<A-1>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<A-2>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<A-3>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<A-4>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-A>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-D>', function()
      harpoon:list():next()
    end)
  end,
}
