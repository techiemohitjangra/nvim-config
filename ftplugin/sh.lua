if vim.bo.filetype == "bash" or vim.bo.filetype == "sh" then
    -- run bash script
    vim.api.nvim_buf_set_keymap(0, "n", "<F9>", ":rightbelow vsplit | term bash %; exit<CR>i",
        { noremap = true, silent = true })
end
