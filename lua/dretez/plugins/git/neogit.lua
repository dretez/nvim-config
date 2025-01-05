return {
  'NeogitOrg/neogit',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    require 'dretez.plugins.git.gitsigns',

    -- Only one of these is needed, not both.
    -- 'nvim-telescope/telescope.nvim', -- optional
    require 'dretez.plugins.navigation.telescope',
    -- 'ibhagwan/fzf-lua', -- optional
  },
  config = true,
}
