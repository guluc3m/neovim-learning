# Step 1: Configuration

You can configure nvim with vimscript and with Lua.  
Here we'll use Lua.

The main configuration file is `~/.config/nvim/init.lua`. This is run every time you open nvim.  

## Setup
To add other scripts to the configuration, they need to be in the `~/.config/nvim/lua/` folder.  
And you add those scripts by name using `require('<script>')`.  

Let's create a new script for saving the configuration files:
```bash
cd ~/.config/nvim/lua
touch settings.lua
```

Go back to the `init.lua` file and add the following line:
```lua
require('settings')
```

You can create more scripts for keybindings, colors, etc.


## Configuration
You can check an in-depth guide of the configuration options [here](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/), but here we'll list the most common ones:

Configure options (vimscript "set"s):
```lua
vim.opt.<option> = <value>
```
You can always check the [official guide](https://neovim.io/doc/user/quickref.html#option-list).

Configure key mappings:
```lua
vim.keymap.set('<mode>', '<key>', '<map>', {<options>})
```
Where `mode` is the current mode (normal - `n`, insert - `i`, etc.), `key` is the key combination to set, `map` is what the key combination will map to, and `options` is a Lua table (key-value pairs) of other options (e.g. `noremap`).

Configure the global variables (vimscript's "let"s):
```lua
vim.g.<variable> = '<value>'
```

Run vim commands:
```lua
vim.cmd([[<cmd>]])
```

To set a color scheme:
```lua
vim.cmd([[colorscheme <scheme>]])
```


You can find our configurations in the `examples/` directory of this repo.  

## Basic options
Some basic options you can pick and choose from are:
```lua
-- enable syntax highlighting
vim.opt.syntax = enable
```
```lua
-- copy/paste to system clipboard
vim.opt.clipboard = 'unnamedplus'
```
```lua
-- file encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
```
```lua
-- window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true
```
```lua
-- show numbers
vim.opt.number = true
vim.opt.relativenumber = true  -- for people with problems
```
```lua
-- cursor blink
vim.o.guicursor = table.concat({
  "n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100"
}, ",")
```
```lua
-- show whitespace
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
```
```lua
-- better matching (match lowercase w/ everything, unless uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true
```
```lua
-- highlight current line
vim.opt.cursorline = true
```
```lua
-- minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10
```
```lua
-- set tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
```
```lua
-- set leader key to space
vim.g.mapleader = ' '
```
```lua
-- save backups and other trash to another place so you don't see them
HOME = os.getenv("HOME")
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.directory = HOME .. "/.local/share/nvim/swap"
```
```lua
-- save undo history
vim.opt.undofile = true
```