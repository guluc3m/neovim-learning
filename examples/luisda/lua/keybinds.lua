-- leader key
vim.g.mapleader = ' '

-- easy escape from terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- jk to Esc (watch out Dijkstra)
vim.keymap.set("i", "jk", "<Esc>", {noremap = true})

-- prevent x from copying
vim.keymap.set("n", "x", '"_x', {noremap = true})
vim.keymap.set("n", "X", '"_X', {noremap = true})

