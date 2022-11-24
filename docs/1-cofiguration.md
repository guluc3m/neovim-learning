# Step 1: Configuration

You can configure nvim with vimscript and with Lua.  
Here we'll use Lua.

The main configuration file is `~/.config/nvim/init.lua`.  
This is run every time you open nvim.  

## Setup
To add other scripts to the configuration, they need to be in the `~/.config/nvim/lua/` folder.  
And you add those scripts by name using `require(\'<script>\')`.  

Let's create a new script for saving the configuration files:
```bash
cd ~/.config/nvim/lua
touch settings.lua
```

Go back to the init.lua file and add the following line:
```lua
require('settings')
```

## Configuration
You can check an in-depth guide of the configuration options [here](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/), but here we'll list the most common ones:

Configure options (vimscript "set"s):
```lua
vim.opt.<option> = <value>
```
You can always check the [official guide](https://neovim.io/doc/user/quickref.html#option-list)

Configure key mappings:
```lua
vim.keymap.set('<mode>', '<key>', '<map>', '<options>')
```
Where `mode` is the current mode (normal - `n`, insert - `i`, etc.), options is the other options (e.g. `noremap`).

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
The basic options we recomend are:
```lua
-- enable syntax highlighting
vim.opt.syntax = enable

-- file encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- show numbers
vim.opt.number = true

-- better matching (match lowercase w/ everything, unless uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight current line
vim.opt.cursorline = true

-- set tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- set leader key to space
vim.g.mapleader = ' '

-- save backups and other trash to another place so you don't see them
HOME = os.getenv("HOME")
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.directory = HOME .. "/.local/share/nvim/swap"
```