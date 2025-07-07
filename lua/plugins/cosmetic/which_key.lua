local function file_exists(name)
  local f = io.open(name, 'r')
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'UiEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    local wq = require 'which-key'
    wq.setup()
    -- Document existing key chains
    wq.add {
      { '<leader>H', group = '[H]arpoon' },
      { '<leader>H_', hidden = true },
      { '<leader>P', group = '[P]ersistence' },
      { '<leader>P_', hidden = true },
      { '<leader>c', group = '[C]ode' },
      { '<leader>c_', hidden = true },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>d_', hidden = true },
      { '<leader>h', group = 'Git [H]unk' },
      { '<leader>h_', hidden = true },
      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>s', group = '[S]earch' },
      { '<leader>s_', hidden = true },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>t_', hidden = true },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>w_', hidden = true },
    }

    -- WARN: Should be rewritten
    -- Minecraft key chains
    if file_exists(vim.fn.getcwd() .. '/gradlew') then
      wq.add {
        { '<leader>M', group = '[M]inecraft' },
        { '<leader>M_', hidden = true },
      }
    end
    -- visual mode
    wq.add { { '<leader>h', desc = 'Git [H]unk', mode = 'v' } }
  end,
}
