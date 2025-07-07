return { -- Enable Discord Rich Experience for Neovim
  'andweeb/presence.nvim',
  enable = false,
  event = 'BufReadPre',
  opts = {
    main_image = 'file',
  },
}
