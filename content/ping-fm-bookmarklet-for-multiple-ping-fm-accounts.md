Title: Ping.fm bookmarklet for multiple Ping.fm accounts
Date: 2010-03-01 19:53
Author: mr.rcollins
Category: blog
Tags: facebook, ping.fm, twitter
Slug: ping-fm-bookmarklet-for-multiple-ping-fm-accounts

![][]Since [Ping.fm][] doesn't allow you to add multiple Twitter
accounts to one Ping.fm account, I've resorted to have two accounts with
them, one for my personal accounts (Twitter, Facebook, MySpace) and one
for my professional accounts ([Twitter][], [Facebook][], LinkedIn). To
update my status for either Ping.fm account I use the special email
addresses they offer and my email client.

My problem was when I wanted to post the current page I'm reading to
either account. Ping.fm offers a bookmarklet, but it uses the current
logged in ping.fm account, so I would have to continually log in and log
out. I decided to put together my own bookmarklet that starts up a new
mail message in my default email client addressed to the correct Ping.fm
account. To get started, drag the following link to your bookmark bar:

[Ping.fm][1]

Once there, right click on the link, select edit and replace
**YOURPRIVATEPINGADDRESS** with your private Ping.fm email address (just
the part to the left of the @). Would you like to do it with GMail? Drag
this link:

[Ping.fm][2]

And once again, right click on the link, select edit, and replace
**YOURPRIVATEPINGADDRESS** with your private Ping.fm email address.

You can drag the links multiple times, editing the email address and the
name of the link so you can associate each one with a different Ping.fm
account.

  []: http://ryancollins.org/dl/Write__%28no_subject%29-20100301-195317.jpg
    "email"
  [Ping.fm]: http://ping.fm/
  [Twitter]: http://twitter.com/mr_rcollins
  [Facebook]: http://ryancollins.org/facebook
  [1]: javascript:window.location='mailto:YOURPRIVATEPINGADDRESS@ping.fm?body=is%20reading%20\"'+encodeURIComponent(document.title)+'\"%20-%20('+encodeURIComponent(window.location)+')'
  [2]: javascript:window.location='https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=YOURPRIVATEPINGADDRESS@ping.fm&body=is%20reading%20\"'+encodeURIComponent(document.title)+'\"%20-%20('+encodeURIComponent(window.location)+')'
    "GMail Ping.fm"
