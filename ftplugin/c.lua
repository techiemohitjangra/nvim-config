-- add \ at the end of line, use for macros in c and c++
vim.api.nvim_buf_set_keymap(0, "n", "<leader>cm", "A\\<ESC>j0", { noremap = true, silent = true })

-- add keybind to build C/C++ project
vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":!build.sh<CR>", { noremap = true, silent = true })

-- comment docs
-- Example:
-- /* DESC:
--  * function:
--  * param:
--  * return:
--  */
vim.api.nvim_buf_set_keymap(0, "n", "<leader>cd", 'o/* Description: \nfunction: \nparam: \nreturn: \ncomplexity: \n<BS>/<ESC>5kA',
    { noremap = true, silent = true })
