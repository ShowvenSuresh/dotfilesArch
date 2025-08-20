return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  opts = {},
  config = function()
    -- custome keymap to open and close neotree
    vim.keymap.set('n', '<leader>o', ':Neotree filesystem reveal right<CR>',
      { desc = 'open the filesystem to the right' })
    vim.keymap.set('n', '<leader>i', ':Neotree filesystem close<CR>', { desc = 'open the filesystem to the right' })
  end,
}
