return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "go", "css", "html", "lua", "c",
      "java", "python", "javascript",
      "typescript", "json", "xml", "tsx"
    },
    sync_install = false,
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
