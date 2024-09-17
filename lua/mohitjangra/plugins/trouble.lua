return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>tw",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>tn",
            "<cmd>Trouble diagnostics next jump=true<cr>",
            desc = "Next Diagnostic (Trouble)",
        },
        {
            "<leader>tp",
            "<cmd>Trouble diagnostics prev jump=true<cr>",
            desc = "Previous Diagnostic (Trouble)",
        },
        {
            "<leader>tq",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
        {
            "<leader>tl",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>ts",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>tc",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
    },

    -- config = function()
    --     local trouble = require('trouble')
    --     trouble.setup {
    --         -- icons = true,
    --         -- your configuration comes here
    --         -- or leave it empty to use the default settings
    --         -- refer to the configuration section below
    --     }
    --     vim.keymap.set('n', '<leader>tt', function() trouble.toggle() end,
    --         { silent = true, noremap = true })
    --     vim.keymap.set("n", "<leader>tw", function() trouble.toggle("workspace_diagnostics") end,
    --         { silent = true, noremap = true })
    --     vim.keymap.set("n", "<leader>td", function() trouble.toggle("document_diagnostics") end,
    --         { silent = true, noremap = true })
    --     vim.keymap.set("n", "<leader>tq", function() trouble.toggle("quickfix") end, { silent = true, noremap = true })
    --     vim.keymap.set("n", "<leader>tl", function() trouble.toggle("loclist") end, { silent = true, noremap = true })
    --
    --     vim.keymap.set("n", "<leader>tu", function() trouble.next({ skip_groups = true, jump = true }) end,
    --         { silent = true, noremap = true })
    --     vim.keymap.set("n", "<leader>tu", function() trouble.previous({ skip_groups = true, jump = true }) end,
    --         { silent = true, noremap = true })
    --
    --     vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end,
    --         { silent = true, noremap = true })
    -- end
}
