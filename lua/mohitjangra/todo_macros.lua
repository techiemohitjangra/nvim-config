-- list item done
vim.keymap.set("n", "md", vim.fn.keytrans("��0f[��alrx��addGp"))

-- turn line into list item
vim.keymap.set("n", "mi", vim.fn.keytrans("^i- [ ] j"))

-- add empty items
vim.keymap.set("n", "ma", vim.fn.keytrans("o- [ ] "))
