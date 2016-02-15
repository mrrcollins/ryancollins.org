Title: Distraction free writing tools and hardware
Author: mr.rcollins
Date: 2016-02-15 15:59
Slug: distraction-free-writing-tools-and-hardware
Category: Hardware
Tags: distractionfree

After I stumbled across the [Hemingwrite - A Distraction Free Digital Typewriter by Hemingwrite](https://www.kickstarter.com/projects/adamleeb/hemingwrite-a-distraction-free-digital-typewriter) Kickstarter, I started looking at different ways to accomplish the same task but without spending $500 on a device. I've always had an interested in different writing setups, and would love to be a writer. For some reason, my lack of grammar and my legendary skill at procrastination has not resulted in the next great American novel. Here are some of my setups I've been trying.

# Macintosh SE/30 running System 6 with Microsoft Word

I have [written](http://ryancollins.org/2016/02/05/bringing-my-apple-macintosh-se-30-back-to-life/) a [few](http://ryancollins.org/2016/02/06/the-macintosh-se30-lives/) [posts](http://ryancollins.org/2016/02/07/scsi2sd-with-my-macintosh-se-30/) on my Macintosh SE/30 and about bringing it back to life. It works really well as a distraction free system, it's very fast, quiet, and reliable. Pulling documents off of the machine is as simple as copying them to a floppy drive.

# IBM Thinkpad T51e running Ubuntu at the console and using vim

This isn't that bad of a machine, the keyboard is really nice. Unfortunately, I can run multiple consoles and can still chat and surf (all at the console) but it's harder to not be distracted. It's really nice in the fact that I can use Dropbox or git on it, and reconfiguring the console font gave me a pretty nice font.

# Atari 800 running The Last Word

Writing on my Atari 800 is fun! The keyboard is really nice, and The Last Word is a fantastic word processor. Pulling files off is a little bit of a pain (saving to a disk image and then extracting the file from that disk image) and I haven't figured out a good way to send files to it for editing. 

# Atari MegaSTe running Protext

I love the keyboard on the Mega STe, but writing in Protext wasn't the best. I don't know if it was the weird interface or what, but it just wasn't a nice experience. I will probably go back to ST Writer the next time I write with it.

# Raspberry Pi with a Nook Simple Touch display

My newest experiment is using a Nook Simple Touch as the display. That was one feature of the Hemingwrite that I really liked, the use of an e-ink display. E-ink is the display used in the black and white e-readers,and has a very low power usage profile. The other advantage is the fact that it works well in bright light situations, such as outside.

I have this working as a prototype in my house. The Raspberry Pi is connected to my wifi, and running tmux at the console. With a rooted Nook Simple Touch, I connected to the local wifi and ran vx-connectbot which connected to my Pi. After connecting, I ran tmux -a, which then connected the vx-connectbot session with the console session, and I used the keyboard connected to the Pi but the display was on the Nook Simple Touch. I had to configure some vx-connectbot settings to get a good experience, but it worked really well. Next up is to figure out how to package the parts into something that would be portable.
