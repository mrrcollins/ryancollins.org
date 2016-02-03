Title: Searching bash history when it's in multiple files
Author: mr.rcollins
Date: 2016-02-03 09:02
Slug: searching-bash-history-when-it-s-in-multiple-files
Category: Software
Tags: bash,history

When I look for previous commands that I have ran in bash, I use ```history | grep COMMAND```. That works well when you're history is in one file, but I now save my [history in multiple files from each shell](http://ryancollins.org/2016/01/21/saving-bash-shell-history-for-multiple-shells/) and my simple command doesn't work. 

With my history files saved in ~/.bash_history_log/ I needed a different solution. The one I came up with is ```grep -ri COMMAND ~/.bash_history_log/*```.  That seems awfully long, lets make it shorter. You can't pass arguments to bash aliases, but you can to functions. In .bash_profile (or .bashrc, which ever runs for you by default) I added the following function:

```

function searchhistory() {
    grep -ri "${1}" ~/.bash_history_log/*
}
alias shistory=searchhistory

```

And now a simple ```shistory COMMAND``` is all it takes to find that command I ran a long time ago.
