Title: Uploading my current IP address so I can find my Pi
Author: mr.rcollins
Date: 2016-02-02 09:55
Slug: uploading-my-current-ip-address-so-i-can-find-my-pi
Category: Software
Tags: ip,ssh,ifconfig

For some reason my autossh job is failing to set up the reverse tunnel so I can find and connect to my Pi when the Pi is roaming. Until I figure out why that is happening, I wrote this bash script which will upload the wifi interface's current IP address to a remote server.

```

#!/bin/bash

echo `ifconfig wlan0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'` | \
	ssh USER@REMOTE.SERVER "cat > ~/myip.txt"

```

I already have ssh passwordless logins in set up because of autossh. If you don't have that set up, then you'll need to do that first or this won't work. I then add a cron job to run this script every minute. 
