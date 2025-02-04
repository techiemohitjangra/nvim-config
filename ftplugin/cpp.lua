-- this ensure these keybind and macros are not loaded for cpp files
if vim.bo.filetype == "cpp" or vim.bo.filetype == "c++" then
    -- add \ at the end of line, used for macros in c++
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>cm", "A\\<ESC>j0", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "v", "<leader>cm", ":s/$/\\\\/<CR>", { noremap = true, silent = true })

    -- add keybind to compile and execute C++ files
    vim.api.nvim_buf_set_keymap(0, "n", "<F9>", ":rightbelow vsplit | term g++ -Wall % -o %< && %<; exit<CR>i",
        { noremap = true, silent = true })

    -- comment docs
    -- Example:
    -- /* DESC:
    --  * function:
    --  * param:
    --  * return:
    --  * complexity:
    --  */
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>cd",
        "o/* Description: \nfunction: \nparam: \nreturn: \ncomplexity: \n<BS>/<ESC>5kA",
        { noremap = true, silent = true })
end
