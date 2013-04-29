Title: Following lots of people on Twitter? You need ReadTwit
Date: 2010-01-12 08:06
Author: mr.rcollins
Category: blog
Tags: rss, twitter
Slug: following-lots-of-people-on-twitter-you-need-readtwit

<div style="float:right;">
[![10th November 314/365][]][]  
<small>[![Creative Commons License][]][] [photo][] credit:
[fifikins][]</small>

</div>
A couple of months ago I decided to expand my use of Twitter, and began
following more and more people in the education community. This was
awesome, until I realized I could not keep up with the barrage of data
that I was being given. In November I started brainstorming ideas on how
to keep up. I noticed in any of my twitter clients that they were not
grabbing all the tweets that had been posted from the last time I
checked. The reason being is the API only gives you the last 200 tweets,
and for me that was about 40 minutes worth.

My first course of action was to write some software that would grab the
tweets from my [@mr\_rcollins][] timeline, parse the info and store it
in a MySQL database. Besides pulling out the data I was interested in of
each tweet, I also stored the complete tweet. This became impractical,
since in a month the complete tweets themselves occupied 4.2GB! I
stopped storing the complete tweets which left me with a 20MB database
after a 5 weeks of collecting, which was a lot more manageable.

The next step was to start parsing the tweet's text for urls, resolve
any shortened urls, and dump them into another table for me to peruse.
While I got that software working, I came across [ReadTwit.com][]. This
is a great service that will take your timeline, parse out the urls,
resolve shortened links, and give you a RSS feed that you can subscribe
to in your favorite RSS reader (I use [Google Reader][]. Now I just go
through Reader like normal, and am able to tag/star important sites that
are posted to my Twitter timeline.

  [10th November 314/365]: http://farm3.static.flickr.com/2763/4091878747_a0282c9255_m.jpg
  [![10th November 314/365][]]: http://www.flickr.com/photos/25925793@N00/4091878747/
    "10th November 314/365"
  [Creative Commons License]: http://ryancollins.org/wp/wp-content/plugins/photo-dropper/images/cc.png
  [![Creative Commons License][]]: http://creativecommons.org/licenses/by/2.0/
    "Attribution License"
  [photo]: http://www.photodropper.com/photos/
  [fifikins]: http://www.flickr.com/photos/25925793@N00/4091878747/
    "fifikins"
  [@mr\_rcollins]: http://twitter.com/mr_rcollins
  [ReadTwit.com]: http://readtwit.com
  [Google Reader]: http://google.com/read
