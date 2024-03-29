local lsp = require('lsp-zero')

lsp.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
  'rust_analyzer',
})

lsp.configure('rust_analyzer', {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
        disabled = {"unresolved-proc-macro"},
        enableExperimental = true,
      },
    }
  }
})

lsp.set_preferences({
  sign_icons = { }
})

vim.opt.signcolumn = 'no'

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
--
local cmp_mappings = lsp.defaults.cmp_mappings({
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  print('server attached')
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.nvim_workspace()
lsp.setup()
