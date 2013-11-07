Title: Following Twitter chats with ttytter.pl
Author: mr.rcollins
Date: 2013-11-06 21:19
Slug: following-twitter-chats-with-ttytter-pl
Category: Software
Tags: twitter,hashtag,perl

As some of you may know, I'm not a big fan of Twitter chats. They're very tedious to follow. Part of the blame is Twitter's fault. Why does my timeline show the newest posts at the top? To follow my time line, I have to read left to right, down, left to right, down, and then when I'm done with the tweet I move my eyes up to the next tweet. Totally unnatural, and exhausting. Or I could be getting old. I should say something about my lawn here...

There are sites that try to alleviate this tedium. [TweetChat](http://tweetchat.com/) is my favorite. The mobile site works well, and it automatically adds the hash tag. Unfortunately, it has two problems that make it less than perfect. The first is the bottom - up reading of tweets. The second is the lack of the ability to show conversations. Sometimes you want to know what started that rant during the Twitter chat.

Enter [TTYtter: an interactive console text-based command-line Twitter client and Perl platform](http://www.floodgap.com/software/ttytter/). I run it under Linux and OS X, and I'm sure you could run it under Windows. Follow the directions on the site to get your account set up, and then quit it. I'll show you how to use it to follow a Twitter Chat.

First, start it up with a few command line switches

    ttytter.pl -ssl -ansi -readline -notimeline -dostream

The *-readline* option may not work, you can leave it off for now. The important switch is the *-notimeline* switch. This turns off your main timeline. Once you are in ttytter.pl, you can start tracking a hashtag by simply entering:

    /#oetchat

This will start tracking that hash tag, it may take a few minutes before you start getting tweets. The tweets will come in prefaced with two characters. These characters are important! The tweets will look like this:

    b8> <OHSPRA> If you missed it, check out what happened tonight during the #oetchat that focused on blended learning. #OhEdChat
    b9> <OhioEdTech> #OETchat Nov. 6, 2013: Blended Learning http://sfy.co/jVBn #storify #oetchat #oetc14

To reply to a tweet, you'll use the command ```/reply``` and the two character designation of the line you want to which you want to reply.

    /reply b8 This is a great chat! #ohedchat

Unfortunately, you have to manually add the hashtag. Other commands that you'll want to use are ```/rt b8``` to retweet the above mentioned tweet and ```/thread b8``` which will show the conversation that contains that tweet.

And, the best part? Tweets come in at the bottom.