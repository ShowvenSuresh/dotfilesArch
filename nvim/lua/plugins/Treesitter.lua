return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "go", "css", "html", "lua", "c", "java", "python", "javascript", "typescript", "json", "xml" },
      sync_install = false,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
