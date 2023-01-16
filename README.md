# ipython-selector

This plugin allows you to run ipython REPL shell using different Python version
with a simpler syntax.

Without this plugin you need to do:

```bash
python3.x -m IPython
```

With this plugin you can do:

```bash
ipython3.x
```

## Alias

This plugin also creates an alias of `ipython` to link it to the default python
version. This helps avoiding the `ipython` executable being overwriten by
installs from a different python version. For example, when you have a
systemwide ipython install that is from the system package manager (binded to
the default python version, say 3.10) and installed an ipython package for a
different python version, say 3.9, as `~/.local/bin/ipython`, the command
`$ ipython` might invoke `ipython` for Python3.9 rather than 3.10.

Note that the functions are hardcoded. Ideally this plugin should dynamically
detect the installed python interpreters and whether IPython shell is installed
for each of them, but the current status is as far as I can go. This is limited
by my knowledge on ZSH.
