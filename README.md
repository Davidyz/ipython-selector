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

Note that the functions are hardcoded. Ideally this plugin should dynamically
detect the installed python interpreters and whether IPython shell is installed
for each of them, but the current status is as far as I can go. This is limited
by my knowledge on ZSH.
