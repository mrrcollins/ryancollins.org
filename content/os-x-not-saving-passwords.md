Title: OS X not saving passwords?
Date: 2009-04-08 10:33
Author: mr.rcollins
Category: blog
Tags: keychain, osx, passwords, Security
Slug: os-x-not-saving-passwords

About a month ago I noticed that passwords weren't being saved in apps
in OS X like Safari, Omniweb, etc. I didn't bother trying to figure out
the problem, until today when I would go to a site in Safari and it
would ask to save the password. I said yes everytime, but it still
didn't save it. Finally I tracked down this blog post, [OS X Keychain
Not Saving Passwords…][]:

> I struggled with this one for about a month before I finally dug into
> what was wrong and how to fix it. It all started when I reinstalled
> because I couldn’t get BootCamp installed because of volume
> fragmentation. Since then, my applications, specifically Mail.app and
> Adium, weren’t remembering passwords even if I checked the little
> “remember” box.

Basically, for some reason, the keychain file at
\~/Library/Keychains/login.keychain was now owned by root instead of by
me. To check and fix from the commandline (**\$** is the command
prompt):  

`$ ls -l ~/Library/Keychains/login.keychain -rw-r--r--  1 ryan  admin  781380 Apr  8 11:17 (*deleted...*)`  
My username is **ryan**. If it says anything else, use the following to
change the ownership:  
`$ sudo chown ryan ~/Library/Keychains/login.keychain`  
It will ask for the administrator password, and then change the
ownership of the file. I don't think repair permissions in Disk Utility
would fix this problem.

<div class="zemanta-pixie">
![][]

</div>

  [OS X Keychain Not Saving Passwords…]: http://blog.davidohara.net/2007/12/19/os-x-keychain-not-saving-passwords/
  []: http://img.zemanta.com/pixy.gif?x-id=f8ef38bf-09d8-8d82-8772-2a925bcfed47
