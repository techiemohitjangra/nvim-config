-- add keybind to build and run Zig project
vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":rightbelow vsplit | term zig build run; exit<CR>i",
    { noremap = true, silent = true, desc = "Build and run zig project" })

-- add keybind to build and test Zig project
vim.api.nvim_buf_set_keymap(0, "n", "<F6>", ":!zig build test<CR>",
    { noremap = true, silent = true, desc = "Build and run unit test" })

-- add keybind to build and test Zig project
vim.api.nvim_buf_set_keymap(0, "n", "<F9>", ":!zig build --release=",
    { noremap = true, silent = true, desc = "Release Build zig project" })
