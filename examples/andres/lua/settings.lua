require('impatient')

vim.opt.visualbell = true

vim.opt.syntax = enable
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.mouse = nil

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true

vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

HOME = os.getenv("HOME")
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.directory = HOME .. "/.local/share/nvim/swap"

-- set t_Co=256                                                " Support 256 colors
-- 
-- filetype plugin indent on                                             " Makes indenting smart
-- set autoindent                                              " Good auto indent
-- set laststatus=2                                            " Always display the status line
-- 
-- set clipboard=unnamedplus                                   " Copy paste between vim and everything else
-- set incsearch
-- set hlsearch
-- 
-- set guifont=Hack
-- 
-- set directory=$HOME/.config/nvim/.swap// 
-- set backupdir=$HOME/.config/nvim/.backup//
-- set nowb
-- 
-- filetype plugin on                                          " For NERDCommenter to work
-- 
-- cmap w!! w !sudo tee %
