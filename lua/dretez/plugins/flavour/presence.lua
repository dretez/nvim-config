return { -- Enable Discord Rich Experience for Neovim
  'andweeb/presence.nvim',
  enable = true,
  event = 'BufReadPre',
  opts = {
    main_image = 'file',
  },
}
