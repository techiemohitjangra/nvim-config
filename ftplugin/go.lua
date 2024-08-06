vim.api.nvim_buf_set_keymap(0, "n", "<leader>pe", "oif err != nil{<CR>}<Esc>O", { noremap = true, silent = true })
