local lsp = require("lsp-zero")


lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'clangd',
  'pyright',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- lsp.on_attach(function(client, bufnr)
lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = '[G]oto [D]efination', table.unpack(opts)})
  vim.keymap.set("n", "gr", function() require('telescope.builtin').lsp_references() end, { desc = '[G]oto [R]eference LSP', table.unpack(opts)})
  vim.keymap.set("n", "gI", function() require('telescope.builtin').lsp_implementations() end, { desc = '[G]oto [I]mplementaion LSP', table.unpack(opts)})
  vim.keymap.set("n", "<leader>D", function() vim.lsp.buf.type_definition() end, { desc = 'Type [D]efinition', table.unpack(opts)})
  vim.keymap.set("n", "<leader>ds", function() require('telescope.builtin').lsp_document_symbols() end, { desc = '[D]ocument [S]ymbols LSP', table.unpack(opts)})
  vim.keymap.set("n", "<leader>ws", function() require('telescope.builtin').lsp_workspace_symbols() end, { desc = '[W]orkspace [S]ymbols LSP', table.unpack(opts)})

  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = 'Hover Documentaion', table.unpack(opts)})

  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, { desc = '[W]orkspace [S]ymbols', table.unpack(opts)})
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { desc = 'Open [D]iagnostics', table.unpack(opts)})
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, { desc = '', table.unpack(opts)})
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, { desc = '', table.unpack(opts)})
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, { desc = '[C]ode [A]ction', table.unpack(opts)})
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { desc = '[G]oto [R]eference', table.unpack(opts)})
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, { desc = '[R]e[N]ame', table.unpack(opts)})
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { desc = 'Signature Documentation', table.unpack(opts)})

  vim.keymap.set("n", "gD", function() vim.lsp.buf.definition() end, { desc = '[G]oto [D]eclaration', table.unpack(opts)})
  vim.keymap.set("n", "<leader>wa", function() vim.lsp.buf.add_workspace_folder() end, { desc = '[W]orkspace [A]dd Folder', table.unpack(opts)})
  vim.keymap.set("n", "<leader>wr", function() vim.lsp.buf.remove_workspace_folder() end, { desc = '[W]orkspace [R]emove Folder', table.unpack(opts)})
  vim.keymap.set("n", "<leader>wl", function() print(vim.lsp.buf.list_workspace_folders()) end, { desc = '[W]orkspace [L]ist Folders', table.unpack(opts)})
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

