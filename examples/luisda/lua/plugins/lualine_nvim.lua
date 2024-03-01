vim.opt.showmode = false  -- prevent duplication of mode in status bar

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            -- put your options here
            options = { theme = 'material' }
        }
    }
}
