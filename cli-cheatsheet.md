# Command-line cheatsheet

This is meant to be a quick list of commands that are useful as you're getting started with the Unix/Linux command-line and various other tools.

In these examples, items in <code>*CAPITAL ITALIC*</code> represent items that should be replaced, usually with a file or directory name.

# Moving around
<code>cd *DIR*</code> &nbsp; **c**hange to a **d**irectory

`pwd` &nbsp; Print the **p**resent **w**orking **d**irectory (i.e., where you are)

`ls` &nbsp; **list** the contents of the current directory

# Files and directories
<code>touch *FILE*</code> creates FILE, or updates its modification time if it already exists

<code>rm *FILE*</code> removes FILE

<code>mkdir *DIR*</code> creates the directory DIR

<code>rmdir *DIR*</code> removes the directory DIR

<code>cp *SRC* *DST*</code> copies the file SRC to DST

# Provide
<code>provide ee200 *ASSIGNMENT* *FILE*</code> submits FILE for grading.

# Getting started with vim
Run `vimtutor` from a command prompt, and work through lesson 1.

# A more useful prompt
The default prompt ( e.g, `sunfire62{sbell03}33}` ) isn't very helpful.

You can get a better one by editing the file `\~/.cshrc`, and putting the following lines at the end:

```
# Use a nice prompt
# %n is your current username
# %m is the hostname
# %~ shows the current directory, and uses ~ for home
set prompt="%n@%m\:%~> "
```

For a fancier color version, use this:
```
# Color prompt
# You can change the last number in each 38;5;## triad to try different colors
# The first two numbers control background and bold
set prompt="%{\e[38;5;9m%}%n%{\e[38;5;15m%}@%{\e[38;5;3m%}%m%{\e[38;5;7m%}\:%{\e[38;5;6m%}%~%{\e[0m%}> "
```

