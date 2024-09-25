-- add keybind to build Zig project
vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":!zig build<CR>", { noremap = true, silent = true })
