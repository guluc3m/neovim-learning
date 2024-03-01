# Step 0: Installing neovim

This tutorial follows Neovim 0.9.5, and most of the plugins won't work for versions lesser than 0.8. It is recomended to download the latest version.  

[Full official instalation instructions here](https://github.com/neovim/neovim/blob/master/INSTALL.md).  

## Installing through package manager
You can download Neovim from your package manager, but make sure **the version is the latest one**, or at least $\geq$ 0.8.  
If it's not, it is recomended to [build from source](#building-from-source).

### APT (Ubuntu/Debian)
Note: At the time of writing APT's Neovim version is 0.7.2, so it's not recomended to download it this way.
```bash
sudo apt install neovim
```
### DNF (Fedora)
```bash
sudo dnf install neovim
```
### Pacman (Arch/Manjaro)
```bash
sudo pacman -S neovim
```

## Building from source
[Full official instructions here](https://github.com/neovim/neovim/blob/master/BUILD.md)

First install the requirements ([platform-specific requirements here](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites)).  
The main requirements are:
- Git
- Clang / GCC 4.9+
- CMake 3.13+
- Ninja-build

Then download Neovim from source and move to the `stable` tag:
```bash
git clone https://github.com/neovim/neovim
cd neovim && git checkout stable
```

Finally install (installs to `/usr/local/`):
```
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```
If you're in Debian/Ubuntu, it's preferable to run `cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb` instead of the `make install`.


## Lua
If it doesn't come with Neovim (you can check with the `lua -v` comand), install [Lua](https://www.lua.org/) ([oficial instrucions here](https://www.lua.org/start.html#installing)).  
According to [Neovim's official webpage](https://neovim.io/doc/user/lua.html#:~:text=Lua%205.1%20is%20the%20permanent%20interface%20for%20Nvim%20Lua), Lua 5.1 is the minimum required version.  

You can also install it through your package manager.  
For APT, you have to specify the version, e.g.: `sudo apt install lua5.4`.


## Initial configuration
Let's start by creating the basic configuration folder structure in `~/.config/nvim/`:
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
