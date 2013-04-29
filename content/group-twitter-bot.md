Title: Group Twitter bot
Date: 2009-01-16 14:48
Author: mr.rcollins
Category: blog
Tags: email, etech, php, twitter
Slug: group-twitter-bot

Chris Hamady had the idea that at the [eTech Ohio State Technology
Conference][] we should be able to use [Twitter][][][] to communicate
great things that individuals see throughout the conference. It needed
to be set up easy enough for people that have not been using Twitter to
use. After discussions with John Schinker, they contacted me and I came
up with the idea of a twitter bot that people would follow, and direct
messages to that bot would be sent to all the bot's followers. This way
most people can just follow the bot and get updates, and those that
wanted to send out an update would only need to send a direct message to
the bot with the update.

The way the bot works is off of the emails that Twitter sends out when a
Twitter account receives a notification of a new follower or a direct
message. The requirements for the bot are:  
• A twitter account (in this case it is etechohio09)  
• An email account with POP3 access (in this case a gmail account is
used. This email account address needs to be secret because there isn't
any checking on the validity of where an email came from so this would
allow people without even a Twitter account to spam the bot)  
• a unix based host with php at the command line (I use Ubuntu, but it
should work in OS X)  
• fetchmail also needs to be available

The process to set up the bot is as follows:  
1. An email account is set up at gmail. This account must of pop3
turned on, which you can do from the gmail settings.  
2. Create a Twitter account, using the above email account. In Twitter
be sure to go to Settings -\> Notices and have the notices for followers
and direct messages checked.  
3. Set up an account on the unix host for the bot.  
4. Login to the account on the unix host.  
5. Create the .fetchmailrc:

         nano -w .fetchmailrc

​6. Enter the following lines to that file:

         set logfile /home/UNIXACCOUNT/fetchmail.log

         poll "pop.gmail.com" proto POP3 timeout 100 no uidl
         no envelope user "BOTACCOUNT@gmail.com"
         password "BOTPASSWORD" fetchlimit 100 ssl

​7. Create the logfile:

         touch fetchmail.log

​8. Create the .forward file:

         nano -w .forward

​9. Enter the following line:

         |"/home/UNIXACCOUNT/twitterbot.php"

​10. Download [twitterbot.php][], and make it executable:

         chmod +x twitterbot.php

​11. Edit twitterbot.php and enter your Twitter username and password:

         nano twitterbot.php

​12. Start up fetchmail in daemon mode and your bot should be
functional.

         fetchmail -d 60

What will happen is that fetchmail will check the email account every 60
seconds. Any email will be downloaded and each message passed to
twitterbot.php. twitterbot.php will examing the headers for the twitter
command and then act accordingly. If it is a new follower, twitterbot
will start following that person. If it is a direct message, twitterbot
will then post that message to the bot's timeline for all its followers
to read.

The email class used for this twitterbot came from [phpclasses.org][],
modified to pull out a few of the X-headers that Twitter adds so the bot
can figure out the type of message and who is sending it.

  [eTech Ohio State Technology Conference]: http://www.etech.ohio.gov/go/conference
  [Twitter]: http://twitter.com/
  []: http://ryancollins.org/wp/wp-content/uploads/2009/01/twitterbotphp.zip
  [phpclasses.org]: http://phpclasses.elib.com/browse/file/8922.html
