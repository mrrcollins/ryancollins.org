Title: A PirateBox to call my own
Author: mr.rcollins
Date: 2013-06-05 19:28
Slug: a-piratebox-to-call-my-own
Category: Hardware
Tags: piratebox, mk802, debian

In a couple of weeks I will be taking part in the Great Ohio Bike Adventure (GOBA), a week long bike ride through several towns in Ohio. As I was planning on how to power everything, somehow I was reminded of the PirateBox. 

A [PirateBox](http://daviddarts.com/piratebox/?title=PirateBox) is a self contained hotspot that runs a webserver, allowing anyone within range to connect to it and upload or download files. It also has a chat box on the front page for simple chatting needs and a simple image board. The PirateBox grew out of David Darts need to share files with his classes at NYU.

I first stumbled upon the idea either from [Alan Levine](http://cogdogblog.com/2011/06/01/piratebox-storybox/) or [Ars Technica](http://arstechnica.com/tech-policy/2011/01/piratebox-an-artistic-provocation-in-lunchbox-form/) and promptly forgot about it. With low cost computers easily accesible, I thought, why not make a PirateBox for GOBA and see what happens. As I was planning to order a Raspberry Pi (most PirateBoxes are made with a wireless router, but I like doing things the hardway) I was reminded of my [Mini MK802 Android 4.0 ](http://www.amazon.com/MK802-Android-Google-Player-Allwinner/dp/B008BFXOZE/ref=sr_1_1?ie=UTF8&qid=1370475494&sr=8-1&keywords=mk802) that I already had. Here was a computer a little larger than a pack of gum with 1GB of RAM and wifi. I installed [Debian](http://romanrm.ru/en/a10/debian) on it (requires a network adapter since you have to use SSH to control it) and then used [these directions](http://piratebox.aod-rpg.de/dokuwiki/doku.php/piratebox_lighttpd) to finish setting it up. On caveat, you have to apt-get install python since that isn't in the Debian image. 

After a restart, it didn't show up as a hotspot, so I started digging and came across [these directions on setting up an access point on a Raspberry Pi](http://blog.sip2serve.com/post/38010690418/raspberry-pi-access-point-using-rtl8192cu). After I replaced the hostapd program with the one from the website and changed the /opt/piratebox/conf/hostapd.conf config file to match the directions, the PirateBox was in business. I also added a 16GB flash drive for shared file storage. It's formatted FAT32 so I can easily update it from my computer.

I've been carrying it around with me, although I don't think anyone has connected to it that I hadn't told yet. On my trip to Cedar Point I'll be bringing it along to see what bored people standing in line will do with it. It currently has some creative commons works on it (Cory Doctorow book, some Jonathan Coulton songs) and I'll need to load more before I go. One problem that I have with it is that as soon as I leave wifi, my iPhone latches onto the PirateBox and then nothing works. I end up turning off wifi for now, at least until I come up with a better idea. One other thing I need to do is come up with a better name. I can't have PirateBox showing up in the wifi settings when I'm in the school.

Now I'm brainstorming what else I can do with it. I have a 1GHz machine with 1GB of RAM (it's only using 56MB of RAM) running in my pocket at all time. What neat things can I do with it?


