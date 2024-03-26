-- source current file (over ridden by []Find Existing Buffer from telescope)
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so %")
end, { noremap = true, silent = true })
