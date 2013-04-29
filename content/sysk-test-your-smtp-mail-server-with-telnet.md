Title: SYSK - Test your SMTP mail server with telnet
Date: 2008-04-08 09:24
Author: mr.rcollins
Category: blog
Tags: email, smtp, telnet
Slug: sysk-test-your-smtp-mail-server-with-telnet

<span title="Network packet trace of SMTP connection" target="_blank" style="float: right">![Network
packet trace of SMTP connection][]  
<small>[![Creative Commons License][]][] [photo][] credit:
[TalkingTree][]</small></span>When troubleshooting email, it may be
necessary to see what the email server is spitting out, just to make
sure everything is working. The easiest way to do that is to use the
**telnet** command. Telnet allows you to connect to various services on
remote or local machines through the command line. Today we are going to
be using it to send some email. You'll first need to bring up the
command-line on your respective operating system. First see if telnet is
installed. Type:  
`telnet`  
And you should see something like this:  
` Welcome to Microsoft Telnet Client`

`Escape Character is 'CTRL+]'`

`Microsoft Telnet>?`  
Or this:  
`telnet>`  
Since that works, type **quit** to exit telnet. Next, we need to open a
connection to our mail server. We will need to know the name or ip
address of the mail server:  
`telnet mail.example.com 25`  
(The 25 is the port number that SMTP runs on.) You should then get a
response back from your mail server:  

` Trying 10.0.0.18... Connected to mail.example.com. Escape character is '^]'. 220 mail.example.com ESMTP Postfix`  
The server is now waiting for a command. We need to say Hello. *(\* For
the remaining examples I'm going to use the domain example.com. You'll
need to replace that with your local domain name. \*)*  
`helo example.com`  
Which returns:  
`250 mail.example.com`  
The mail server now needs to know who is sending the email:  
`mail from: myname@example.com`  
Returns:  
`250 Ok`  
Who are you sending the mail to?  
`rcpt to: recipient@example.com`  
Returns:  
`250 Ok`  
Now it is time to tell it the message:  
`data`  
Returns:  
`354 End data with .`  
Enter your message:  
` Subject: test message This is a test message .`  
To end the message, you need to put a period at the beginning of the
line and hit the return key. Now your message is on its way!  
Now type quit to exit  
`quit`

  [Network packet trace of SMTP connection]: http://farm1.static.flickr.com/41/94148302_553669184a_m.jpg
  [Creative Commons License]: http://ryancollins.org/wp/wp-content/plugins/photo_dropper/images/cc.png
  [![Creative Commons License][]]: http://creativecommons.org/licenses/by-nc-sa/2.0/
    "Attribution-NonCommercial-ShareAlike License"
  [photo]: http://www.photodropper.com/photos/
  [TalkingTree]: http://www.flickr.com/photos/95484254@N00/94148302/
    "TalkingTree"
