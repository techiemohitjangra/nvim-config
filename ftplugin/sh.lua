-- run bash script
vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":rightbelow vsplit | term bash %; exit<CR>i",
    { noremap = true, silent = true })
