# My Vimrc Without Plugins

My vimrc without installing any plugins

# How to Use

Clone this repository, assuming it is cloned to a folder `/path/to/vimrc/`
Start vim with parameter `-u` to specify the vimrc folder:

```shell
vim -u /path/to/vimrc
```

If you don't want to append the `-u` parameter everytime you starting vim, there are two options

1. `alias vi2="vim -u /path/to/vimrc"`.
2. Or you could `mv` the `path/to/vimrc/` folder to `$HOME/.vim`.

You could check `$HOME` out by running the command `:echo $HOME` in vim.
