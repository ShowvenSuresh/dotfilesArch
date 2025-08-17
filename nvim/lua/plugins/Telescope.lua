return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { { 'nvim-lua/plenary.nvim' },
    { 'BurntSushi/ripgrep' },
  },
  config = function()
    -- custome key bindings for telescope fuzzy find
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })
  end,

}
