return { -- Persistence is a simple lua plugin for automated session management.
  'folke/persistence.nvim',
  event = 'BufReadPost', -- this will only start session saving when an actual file was opened
  enabled = function()
    local home = os.getenv 'HOME'
    local whitelist = {
      home .. '/Projects/',
      home .. '/projects/',
      home .. '/.config/',
      home .. '/.config',
    }
    for _, i in ipairs(whitelist) do
      if string.find(vim.fn.getcwd(), i) == 1 then
        return true
      end
    end
    return false
  end,
  opts = {},
  config = function()
    local persistence = require 'persistence'
    persistence.setup()
    local function nmapset(key, method, desc)
      vim.keymap.set('n', '<leader>P' .. key, method, { desc = desc })
    end

    nmapset('s', function()
      persistence.load()
    end, '[P]ersitence: restore [s]ession for current workspace')
    nmapset('l', function()
      persistence.load { last = true }
    end, '[P]ersitence: restore [l]ast saved workspace')
    nmapset('d', function()
      persistence.stop()
    end, "[P]ersistence: [d]on't save session on exit")
    nmapset('l', function()
      persistence.list()
    end, '[P]ersistence: [l]ist sessions')
  end,
}
