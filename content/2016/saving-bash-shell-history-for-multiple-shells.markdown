Title: Saving bash shell history for multiple shells
Author: mr.rcollins
Date: 2016-01-21 09:11
Slug: saving-bash-shell-history-for-multiple-shells
Category: Software
Tags: bash

The history from the commands typed into bash are very useful from time to time, especially when I think "Oh, I'll remember that command next time I need it", and then I don't. The problem with bash's history are twofold:

* It only saves history when the terminal exits cleanly, so if your connection drops or you have to kill the current process, you lose your history.
* If you are running multiple terminals, or using a terminal multiplexer like tmux (my favorite!) or screen, the last bash to exit overwrites any other history with its history.

So, after [a little searching](http://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows) I've found a solution that works for me for now.

```
# Save history
#Set history suffix to the current terminal
HISTSUFFIX=`tty | sed 's/\///g;s/^dev//g'`
# All terminals' histories will be stored in separate files
# in .bash_history_log. That folder will need to be created.
HISTFILE="$HOME/.bash_history_log/bash_history_$HISTSUFFIX"
# Time stamp the commands in the history file
HISTTIMEFORMAT="%y-%m-%d %H:%M:%S "
# Don't save duplicate commands
HISTCONTROL=ignoredups:ignorespace
# Control the size of the file
HISTSIZE=1000
HISTFILESIZE=5000
# Bash will append to the history file
shopt -s histappend
# Bash will append to the history file after each time
# the prompt is shown. This way it's always saved.
PROMPT_COMMAND='history -a'
```

Put that in your .bashrc and you're good to go. Comments are welcome!
