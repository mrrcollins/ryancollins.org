Title: Resetting a .taskpaper file
Author: mr.rcollins
Date: 2016-01-18 20:44
Slug: resetting-a-taskpaper-file
Category: Software
Tags: taskpaper,bash

I use a couple of .taskpaper files for checklists of things that need to be done every day. In it, after a task is completed the task gets an @done tag added. But the next day I want to start fresh. I could do a find/replace, but sed at the command line works better:

```
alias rst="sed -i 's/@done\(.*\)//'"
```

Adding the above alias to my ~/.bash_profile adds the ability to reset a taskpaper file with a simple ```rst FILE.taskpaper```. Under OS X, the -i parameter requires an extension for a backup file. You can simply have '' to set it to nothing and then a back up file won't be created.

