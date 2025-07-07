-- Clear search highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- buffers
vim.keymap.set('n', '<leader>h', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<leader>l', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bb', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
vim.keymap.set('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>:b#|bd#<cr>', { desc = 'Delete Buffer' })
vim.keymap.set('n', '<leader>bD', '<cmd>%bd|e#<cr>', { desc = 'Delete all other Buffers and Window' })

-- Move Lines
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- [[ Screen ]]

-- Keep cursor in the middle of the screen when jumping half page up/down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump half page [D]own' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump half page [U]p' })

-- Keep cursor in the middle of the screen when searching
vim.keymap.set('n', 'n', 'nzz', { desc = 'Find [n]ext occurence' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Find previous occurence' })

-- Move screen in the direction of the jump when jumping to empty lines
vim.keymap.set('n', '}', '}zt', { desc = 'Go to next empty line' })
vim.keymap.set('n', '{', '{zb', { desc = 'Go to previous empty line' })

-- Paste and delete without copy
vim.keymap.set('x', '<leader>p', '"_dP', { desc = '[p]aste without copy' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = '[d]elete without copy' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = '[y]ank to clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = '[Y]ank line to clipboard' })

-- Make file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +100 %<cr>', { desc = 'Make file executable', silent = true })

-- Format title
vim.api.nvim_create_augroup('TitleCommentFormat', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  group = 'TitleCommentFormat',
  callback = function()
    if
      function()
        local valid = { 'c', 'cpp', 'h', 'java', 'javascript', 'typescript', 'scss', 'sass', 'php', 'rust', 'swift' }
        for _, ft in ipairs(valid) do
          if ft == vim.bo.filetype then
            return true
          end
        end
        return false
      end
    then
      vim.keymap.set(
        'n',
        '<leader>ft',
        "<cmd>s#^\\(.*\\)\\/\\ze\\zs\\*\\(.*\\)\\*#\\=repeat('*',(78-strwidth(submatch(1).submatch(2)))/2).toupper(submatch(2)).repeat('*',(78-strwidth(submatch(1).submatch(2)))/2)<cr><esc>",
        { desc = '[F]ormat [t]itle' }
      )
    end
  end,
})
