-- add \ at the end of line, use for macros in c and c++
vim.keymap.set("n", "<leader>cm", "A\\j0")

-- add keybind to build C/C++ project
vim.keymap.set("n", "<F5>", ":!build.sh<CR>")

-- comment docs
-- Example:
-- /* DESC:
--  * function:
--  * param:
--  * return:
--  */
vim.keymap.set("n", "<leader>cd", 'o/* Description: \nfunction: \nparam: \nreturn: \n<BS>/<ESC>4kA')
