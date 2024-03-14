-- add jinja block element
vim.keymap.set("n", "<leader>b", "i{% block %}o{% endblock %}khi il")

-- manually format django html file
vim.keymap.set("n", "<leader>f", ":!djlint % --reformat<CR><CR>")
