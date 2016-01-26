Title: Fixing my .taskpaper reset alias for bash
Author: mr.rcollins
Date: 2016-01-26 09:01
Slug: fixing-my-taskpaper-reset-alias-for-bash
Category: Software
Tags: bash,taskpaper

There was a little problem with my alias to reset a .taskpaper list by removing all of the @dones. It didn't remove any spaces before the @done, so each line would gain a space every day. This fixes it:

```

alias rst="sed -i '' 's/ *@done\(.*\)//g'"


```

Now it removes one or more spaces that could be before @done.

