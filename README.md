# OSX.Dotfiles
My personal dot.files

# Usage

Symlink all dot.files and dot.directories into your home directory like so:

```
cd ~
git clone  --recursive https://github.com/elmar-hinz/dotfiles.git ~/.my.dotfiles 
ln -s .my.dotfiles/.bashrc .bashrc
ln -s .my.dotfiles/.bashrc.d .bashrc.d
# etc.
```

Just do this on the top level. Exclude `.gitignore` and `.gitmodules`.

By design there is no tool included to deploy. My tool is here: [OSX.Me](https://github.com/elmar-hinz/OSX.Me)

# The approach is pretty simple

`.bashrc` doesn't do much itself. It sources all files in `.bashrc.d/` and `~/.bashrc.private`.
Files in `.bashrc.d/` are ordered by a leading number. Aliases go into `.bashrc.d/99-aliases`.

# Crucial settings

`~/.bashrc.private` is sourced from `.bashrc`  if it exists. Private settings don't belong into a public repo.

# Details

Some directories are excluded by `.gitignore` if they have a caching nature. 

* `.cache/*`
* `.vim/view/`

Some symlinks are chained. Example:

```
~/.bash_history -> ~/.my.dotfiles/.bash_history
~/.my.dotfiles/.bash_history -> ~/.my.dotfiles/.cache/.bash_history
```





