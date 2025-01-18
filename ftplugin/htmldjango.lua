if vim.bo.filetype == "htmldjango" then
    -- add jinja block element
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>b", "i{% block %}o{% endblock %}khi il",
        { noremap = true, silent = true })

    -- manually format django html file
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>f", ":silent !djlint % --reformat<CR><CR>",
        { noremap = true, silent = true })
end
