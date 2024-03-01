# Useful vim/neovim stuff

By default, neovim works the same as vim, so everything works the same.  
If you're new to vim, here's a [quick cheatsheet](https://github.com/rajayonin/cheatsheets/blob/main/vim.md) to learn.  
Here we'll add some usefull stuff you can use in vim (and neovim).

## Digraphs
To input utf-8 characters in files, vim allows you to use key combinations.  
By using 'Ctrl+k' you enter the mode, and then insert the two-key combination for the specific symbol.  

You can check with ':digraph' the different symbols.  

## Running programs inside vim
You can execute terminal programs inside vim using ':! <cmd>'.  
You can also refer to the current file using '%'.  

e.g: to run the current python script: ':!python %'.

