Title: Finding your Pi on the network
Author: mr.rcollins
Date: 2016-01-29 17:19
Slug: finding-your-pi-on-the-network
Category: Software
Tags: dhcp,staticip

When you're playing around with the Raspberry Pi, there are multiple times when you won't have a screen attached to the Pi but you'll want the IP address to use with SSH. What I did was set up static IP addresses on my DHCP server (in this case the [ASUS RT-AC66U](http://www.amazon.com/gp/product/B008ABOJKS/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B008ABOJKS&linkCode=as2&tag=ryancolorg-20&linkId=PW7LZ45JSG62K4MP)$). 

Click on *LAN* on the left side, and then select the *DHCP* tab:

![Manual IP Management](http://cdn.ryancollins.org/pics/2016/EnableStaticIP.jpg)

Enter the MAC address of the network port on the Pi and select an IP address that isn't being used. You'll probably want to enter the MAC address of the wifi dongle too, if you use that. The ASUS is nice because the drop down will contain the MAC addresses of the devices that have connected to it, so you should be able to go through that list until you find the correct entries. To get the MAC addresses if this method doesn't work, ssh to the pi and run ```ifconfig | grep HWaddr```. It will then show the network interfaces and their MAC addresses.

Once you have it set up, it's really nice playing around with your Pis. It doesn't matter what SD card you put in, as long as the Pi is set for DHCP, it will always be assigned the IP address you set.

$ - Affiliate link to Amazon. [Non-affiliate link](http://amzn.com/B008ABOJKS).
