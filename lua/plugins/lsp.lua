return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable("clangd")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("pyright")
    vim.lsp.enable("sourcekit")

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf }
        -- K - показать документацию при наведении
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        -- gd - перейти к определению (go to definition)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        -- gr - посмотреть ссылки (references)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        -- <leader>rn - переименовать символ (rename)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        -- <leader>ca - показать доступные действия с кодом (code action)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        -- <leader>d - показать диагностику (ошибки, предупреждения) в всплывающем окне
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
        -- <leader>f - отформатировать текущий файл
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
      end,
    })
  end,
}
