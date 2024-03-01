return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,        
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "haskell",
                "bash",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "yaml",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        }
    }
}
