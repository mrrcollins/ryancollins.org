Title: Skills You Should Know (SYSK) - vi
Date: 2008-04-06 19:57
Author: mr.rcollins
Category: blog
Tags: linux, SYSK, vi
Slug: skills-you-should-know-sysk-vi

I'm starting a new category, that goes along with my blog post
<span style="font-style: italic">Yes I will lead</span>. The new
category is called Skills You Should Know - SYSK. Little bits of
information that through my experience aren't something that you may not
necessarily use every day, but may someday save you a ton of trouble.

Today's topic is <span style="font-weight: bold">vi</span>.
<span style="font-weight: bold">Vi</span> may be the only editor
installed on a new unix based system, and a few commands will get you to
the point where at least you can edit a few files before installing
something a little more user friendly such as pico (or nano).

Vi has two modes, command and insertion. It was designed this way
because sometimes the keyboard you would be using might not necessarily
have all the keys we take for granted today, especially when it comes to
the arrow keys. In command mode you can move the cursor around with the
arrow keys or hjkl keys. To do an editing, you'll need to switch to
insertion mode. Vi defaults to command mode when it is started.

<span style="font-weight: bold">i</span> - Switches to insertion mode  
<span style="font-weight: bold">\<ESC\></span> - Switches to command
mode

In a nutshell, you'll start the editor with a file:

`vi somefile`

Once the file is open, you'll press
<span style="font-weight: bold">i</span> to switch to insertion mode.
Make the changes to your file. Press
<span style="font-weight: bold">\<ESC\></span> to switch back to command
mode. To exit you'll press the following (these all start with the
colon):

<span style="font-weight: bold">:wq</span> - Write the file and then
quit  
<span style="font-weight: bold">:q!</span> - Quit the file without
saving the changes. A great way if you mess up and just want to not save
your changes

These preceding commands should at least get you started. For more info,
you may want to visit the following pages:  
[vi - Wikipedia, the free encyclopedia][]  
[Vi Cheat Sheet][]  
[Mastering the VI editor][]

  [vi - Wikipedia, the free encyclopedia]: http://en.wikipedia.org/wiki/Vi
  [Vi Cheat Sheet]: http://www.lagmonster.org/docs/vi.html
  [Mastering the VI editor]: http://www.eng.hawaii.edu/Tutor/vi.html
