if vim.bo.filetype == "json" then
    vim.api.nvim_buf_set_keymap(0, 'n', "<leader>f", ":silent %!jq .<CR>", { noremap = true, silent = true })
end
