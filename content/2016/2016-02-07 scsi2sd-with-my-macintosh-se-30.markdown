Title: SCSI2SD with my Macintosh SE/30
Author: mr.rcollins
Date: 2016-02-07 19:19
Slug: scsi2sd-with-my-macintosh-se-30
Category: Hardware
Tags: scsi,scis2sd

As I was working on my SE/30, I knew I didn't want to go with a SCSI hard drive. I started looking online and came across the [SCSI2SD](http://www.codesrc.com/mediawiki/index.php?title=SCSI2SD). I purchased mine with a 256MB SD card from [Inertial Computing on eBay](http://www.ebay.com/itm/SCSI2SD-3-5-includes-256MB-industrial-grade-Single-Level-Cell-microSD-card-/191783840220?hash=item2ca73529dc:g:z4AAAOSwFnFWBHDt). Now that it is up and running, I'm very happy with it. 

When using with an older Macintosh, you may have an issue when it comes to initializing and using a non-Apple drive. The first time, Apple HD SC Setup wouldn't find the drive. I then found this [forum post](https://68kmla.org/forums/index.php?/topic/24810-questions-about-scsi2sd-setup-in-mac-lc-iii/). I followed dougg3's directions when setting up the SCSI2SD.

* Set the vendor to the string " SEAGATE" (yes, there is a single space in front of SEAGATE for a total of 8 characters)
* Set the product ID to the string "          ST225N" (10 spaces in front for a total of 16 characters)
* Set the revision to the string "1.0 " (with a space after, for a total of 4 characters)

Apple HD SC Setup then saw the drive. The other thing I had to do was re-partition the drive after it set it up, since Apple HD SC Setup only create a 16MB partition and left the rest of the drive unpartitioned. I deleted that partition and then created a 256MB partition.
