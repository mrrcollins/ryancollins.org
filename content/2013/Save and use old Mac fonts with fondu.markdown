Title: Save and use old Mac fonts with fondu
Author: mr.rcollins
Date: 2013-09-30 19:44
Slug: save-and-use-old-mac-fonts-with-fondu
Category: Software
Tags: fonts,mac

I recently received a help desk request to install a font that one of our schools had purchased back in the 90s. Not a problem, I thought. Copying the font to the machine would be easy. I went and mounted the disk image that contained the font, but when I tried to load it into [puppet](http://puppetlabs.com/) (software that manages our machines), the file was zero bytes. I thought that was odd, so I started looking. The font was a .suit file, which, for those unfamiliar with the Mac world, designates it as a suitcase file which contains a bunch of fonts. Unfortunately, the fonts are stored in the resource fork, not the data fork. What? Forks?

# Brief history of Mac OS file systems

In the beginning, Mac files could consist of two parts. A data fork and a resource fork. On disk they are in one file, but the operating system uses them in different ways. The data fork stores unstructured data, such as the text in a word processing file. The resource fork stores structured data, like icons and embedded images. You know when you put a Windows formatted USB drive into a Mac and it creates an .AppleDouble folder? That's there to store any resource forks for files. Although most things stored their data in the data fork (and this is the part that gets copied to media that doesn't support resource forks), fonts are stored in the resource fork. When copied to a non-Mac formatted medium the resource fork and the font go off into never never land.

# Enter fondu

Fondu is a commandline application that extracts fonts to TrueType font files which can be used with most systems. I installed it with [Homebrew](http://brew.sh/):

    brew install fondu
    
Once installed, I navigated to the folder with my .suit file in it and ran fondu on it:

    fondu FONTFILE.suit
    
And I was left with TrueType font files that I could easily distribute to the district's machines.