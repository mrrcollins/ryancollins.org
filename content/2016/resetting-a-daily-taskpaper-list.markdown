Title: Resetting a daily taskpaper list
Author: mr.rcollins
Date: 2016-01-22 10:05
Slug: resetting-a-daily-taskpaper-list
Category: Software
Tags: taskpaper,bash

I have a couple [daily taskpaper lists](http://eduk8.me/2016/01/managing-checklists-in-google-keep-or-using-taskpaper-with-drafts-for-ios/) that by the end of the have an @done on each line and I need to reset it for the next day. Instead of trying to do a search and replace everyday, I added a bash alias to .bash_profile (or .bashrc):

```
alias rst="sed -i '' 's/@done\(.*\)//g'"
```

The extra ```''``` after the -i is because OS X's sed requires an extension for backups. Set it to nothing and OS X won't create backups.
