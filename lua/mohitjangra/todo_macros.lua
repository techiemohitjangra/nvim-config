-- list item done
-- vim.keymap.set("n", "md", vim.fn.keytrans("€ü0f[€ýalrx€ýaddGp"))

-- vim.keymap.set("n", "mi", vim.fn.keytrans("^i- [ ] "))

-- add empty items in next line
-- vim.keymap.set("n", "ma", vim.fn.keytrans("o- [ ] "))

-- add empty items in previous line
-- vim.keymap.set("n", "mA", vim.fn.keytrans("O- [ ] "))

vim.api.nvim_exec([[
    augroup FileTypeMappings
        autocmd!
        autocmd FileType markdown lua vim.keymap.set("n", "md", vim.fn.keytrans("€ü0f[€ýalrx€ýaddGp"))
        autocmd FileType markdown lua vim.keymap.set("n", "mi", vim.fn.keytrans("^i- [ ] "))
        autocmd FileType markdown lua vim.keymap.set("n", "ma", vim.fn.keytrans("o- [ ] "))
        autocmd FileType markdown lua vim.keymap.set("n", "mA", vim.fn.keytrans("O- [ ] "))
    augroup END
]], false)
