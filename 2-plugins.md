# Step 2: Plugins
Plugins allow you to extend Neovim's capabilities, and add new features.

## Package manager
We recomend using the [lazy.nvim](https://github.com/folke/lazy.nvim) package manager to manage all plugins.

To "install" it (download it if it's not already there) and bootstrap it in, add the following to your `~/.config/nvim/init.lua`:
```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
```

In order to keep things clean, we'll save all plugin configuration in a `plugins` folder, and create a dummy `init.lua` file:
```bash
mkdir ~/.config/nvim/lua/plugins/ && cd ~/.config/nvim/lua/plugins/
echo return {} > init.lua
```

And add this line to your `nvim/init.lua` to import your folder:
```lua
require("lazy").setup("plugins")
```

To add any new plugin, just create a new file inside the `plugins` folder.  
You can tipically find this code in the instalation instructions of the plugin, but they all follow the same overall scheme due to how lazy.nvim works:
```lua
-- example_nvim.lua
return {  -- this will be passed to the require("lazy").setup() function
    "plugin_guy/example.nvim",  -- github repo of the plugin
    opts = {},  -- [optional] plugin configuration
    dependencies = {}  -- [optional] plugin dependencies
}
```

Note: when installing new plugins, lazy.nvim will show an UI. To exit that UI, just use `:q`.

## Plugins
We recomend looking through plugins and slowly integrating them if you think it will benefit your workflow/experience.  
As with most things, it's often better to slowly build your tools as you adquire new knowledge than entering nvim blindly with a bunch of plugins you don't know how to use (looking at you, [LazyVim](https://www.lazyvim.org/)).

Here are some of our recomendations:

### Ease of use
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatic brackets.
- [Comment.nvim](https://github.com/numToStr/Comment.nvim): Easy commenting/uncommenting.
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim): Browse TODOs, FIXMEs, etc.
- [which-key.nvim](https://github.com/folke/which-key.nvim): Shows possible key bindings (when needed; configurable).
- [AutoIndent.nvim](https://github.com/VidocqH/auto-indent.nvim): Automatic indentation for INSERT mode.
- [move.nvim](https://github.com/fedepujol/move.nvim): Easily move lines up and down.
- [trouble.nvim](https://github.com/folke/trouble.nvim): Show warnings and errors.

### Files
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): Fuzzy search files (with previews!).
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua): File viewer.

### Autocompletion & more
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) Code autocompletion.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Better syntax highlighting.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Language Server Protocol support. Symbols, errors, etc.
- [wilder.nvim](https://github.com/gelguy/wilder.nvim): Command line autocompletion.

### Fancy stuff
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Better, more configurable status bar.
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim): Fancy start screen.
- [nvim-notify](https://github.com/rcarriga/nvim-notify): Fancy notifications.
- [Catppuccin for (Neo)vim](https://github.com/catppuccin/nvim): Fancy colorschemes (also available for other applications!).
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim): Fancy tabs.

### Integrations
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim): Basic Git integrations (see which lines are modified, etc.).
- [neogit](https://github.com/NeogitOrg/neogit): Full Git TUI.
- [vimtex](https://github.com/lervag/vimtex): $\LaTeX$ integration.
