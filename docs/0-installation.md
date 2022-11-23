# Installing neovim

Download nvim from your package manager.  

## APT
```bash
sudo apt install neovim
```
## DNF
```bash
sudo dnf install neovim
```
## Pacman
```bash
sudo pacman -S neovim
```

Also install [Lua](https://www.lua.org/start.html#installing).  
You have to specify the version, for Ubuntu at time of writting it's:
```bash
sudo apt install lua5.4
```

Let's start by creating the configuraion files:
```bash
mkdir -p ~/.config/nvim/lua
cd ~/.config/nvim
touch init.lua
```

## Launching
You can launch it as such:
```bash
nvim
```