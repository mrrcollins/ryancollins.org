Title: Set your Raspberry Pi up for Wifi roaming
Author: mr.rcollins
Date: 2016-01-27 09:52
Slug: set-your-raspberry-pi-up-for-wifi-roaming
Category: Software
Tags: pi,raspberrypi,wifi

I've had a Raspberry Pi 2 just sitting around for several months, waiting for a purpose. Since I haven't come up with a purpose, I decided to make it a portable headless Linux box that will travel with me, connect to Wifi automatically, and eventually, hopefully, set it up as a [Piratebox](https://piratebox.cc/). First things first, lets get it connecting.

It was easier than I thought it was going to be to set it to automatically connect. Basically, I modified /etc/network/interfaces to add a roam configuration for wpa supplicant.

```

# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

auto lo
iface lo inet loopback

iface eth0 inet manual

allow-hotplug wlan0
iface wlan0 inet manual
    # wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
    wpa-roam /etc/wpa_supplicant/wpa_roam.conf

allow-hotplug wlan1
iface wlan1 inet manual
    #wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
    wpa-roam /etc/wpa_supplicant/wpa_roam.conf

```

I just added the two lines that start with wpa-roam and commented out the default wpa_supplicant.conf lines. Next up was to create the ```/etc/wpa_supplicant/wpa_roam.conf``` file:

```

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
        ssid="home"
        key_mgmt=NONE
}
network={
        ssid="iPhoneHotSpot"
        key_mgmt=WPA-PSK
        psk="PASSWORD"
}

```

Adjust the parameters for your networks. Plugging the Pi into the network and manually running ```sudo ifdown wlan0;sudo ifup wlan0``` is how I tested it.

Finally, the pi needs to see if it doesn't have a network connection, and if it doesn't, bring wlan0 and then back up and see if it will connect. My wifi dongle (the [Edimax EW-7811Un](http://amzn.com/B003MTTJOY)) is on wlan0, so you may need to modify. I set a crontab (```sudo crontab -e```) with the following line:

```

* * * * * /bin/ping -q -c2 8.8.8.8 || (/sbin/ifdown --force wlan0 ;/sbin/ifup wlan0 )

```

Every minute the Pi will send out two pings to Google's DNS servers, and if it doesn't get a reply, it will take the connection down and bring it back up. Now I have a Pi that will autoconnect to wifi. 


