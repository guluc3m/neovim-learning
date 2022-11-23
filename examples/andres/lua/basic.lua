local options = {
	noremap = true,
}

vim.g.mapleader = " "

vim.keymap.set('n', ';', ':', options)
vim.keymap.set('n', '<leader>q', ':q<CR>', options)
vim.keymap.set('n', '<leader>Q', ':q!<CR>', options)

