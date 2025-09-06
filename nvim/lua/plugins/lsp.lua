return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },


  config = function()
    require("blink.cmp").setup()
    local capabilities = require('blink.cmp').get_lsp_capabilities()

    vim.lsp.config('*', { capabilities = capabilities })


    vim.lsp.config('tsserver', {
      capabilities = capabilities,
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    --    vim.lsp.enable('jdtls')
    vim.lsp.enable('gopls')
    vim.lsp.enable('pyright')
    vim.lsp.enable('bashls')
    vim.lsp.enable('ccls')
    --   vim.lsp.enable('clangd')
    vim.lsp.enable('lua_ls') -- auto start based on filetype
    vim.lsp.enable('html')
    vim.lsp.enable('cssls')
    -- vim.lsp.enable('jsonls')
    vim.lsp.enable('eslint')
    vim.lsp.enable('tsserver')
    vim.lsp.enable('solidity_ls_nomicfoundation')
    --  testing the dofiles changing
    --set the diagnostice config
    vim.diagnostic.config({
      virtual_text = true,
      underline = true,
      update_in_insert = true,
      severity_sort = true,
    })
    -- test
    --auto format on save
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if not client then return end
        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
            end,
          })
        end
      end,
    })
  end,



}
