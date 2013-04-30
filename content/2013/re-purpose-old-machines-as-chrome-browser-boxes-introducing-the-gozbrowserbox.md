Title: Re-purpose old machines as Chrome Browser boxes - Introducing the GozBrowserBox
Date: 2013-03-13 17:23
Author: mr.rcollins
Category: blog
Tags: chrome
Slug: re-purpose-old-machines-as-chrome-browser-boxes-introducing-the-gozbrowserbox

I've been going back and forth on when to formally announce the
GozBrowserBox project. On one hand, I'm sure it's ready to be used, but
on the other hand, I'm afraid I forgot something! Anyway, without
further ado...

Introducing the GozBrowser Box
==============================

![](http://mrrcollins.github.com/GozBrowserBox/loginscreen.jpg?raw=true)[GozBrowserBox](https://github.com/mrrcollins/GozBrowserBox)
is a set of scripts that will take an Ubuntu installation and set up a full
screen browser box. It works very well
with lower end machines and makes them more useful. There are three
configurations:

-   Standalone: For Intel machines with at least 512MB of RAM, this
    configuration will set up the machine to launch Chrome full screen
    running on the local machine.
-   Browser server: For Intel machines with a couple GBs of RAM, this
    configuration sets up the machine like the standalone machine above,
    but also allows remote access for clients.
-   Browser client: For PowerPC machines (like eMacs, iBooks, etc) or
    Intel machines with at least 256MB of RAM (it may work with less, I
    haven't had a chance to test it). This configuration requires some
    network configuration to resolve the machine name *browser*.

All three configurations use Chrome to it's fullest, including Flash and
sound.

INSTALLING GOZBROWSERBOX WILL TOTALLY WIPE OUT THE MACHINE IT IS BEING INSTALLED ON WITHOUT WARNING. USE AT YOUR OWN RISK!!!
----------------------------------------------------------------------------------------------------------------------------

Check it out over on [Github](https://github.com/mrrcollins/GozBrowserBox)!
