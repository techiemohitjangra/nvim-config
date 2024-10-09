-- add keybind to run python3 program
vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":rightbelow vsplit | term python3 %; exit<CR>i",
    { noremap = true, silent = true, desc = "Execute python3 program" })
