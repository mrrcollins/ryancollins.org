Title: Markdown to presentation
Author: mr.rcollins
Date: 2016-01-20 09:52
Slug: markdown-to-presentation
Category: Software
Tags: markdown,pandoc,presentations

Since my preferred interface is the command line, yesterday I was thinking how cool it would be to knock out a presentation from Markdown. I could work on the content, and not get distracted by the interface. Luckily, I didn't have to look any further than [Pandoc](http://pandoc.org/). Pandoc can take a multitude of formats and convert to other formats. For example, to create a presentation from a Markdown file, a simple ```pandoc -t revealjs -s presentation.markdown -o presentation.html```.

Before the presentation is viewable, you need to download the [reveal.js framework](https://github.com/hakimel/reveal.js/releases). Unzip it and rename the folder to **reveal.js** and put it in the same place as the html file created by [Pandoc](http://pandoc.org/). You can then open the html file up in your browser and present away! The easiest way to publish the presentation publicly would probably be in Dropbox. Share the link to the html publicly and you should be good to go (your mileage may vary, I haven't tested this yet).

The format of the Markdown folder is pretty simple:

```
% My Great Presentation
% By Ryan Collins

# Slide 1

This is the content for slide one.

. . .

Three dots with spaces between them will pause the presentation.

## Slide 1a

A header 2 will navigate *down* from the previous slide.

# Slide 2

Another header 1 will navigate *right*

# Slide 3

> - List item 1
> - List item 2

```

[Pandoc](http://pandoc.org/) will create a title slide from the % lines above automatically. You can also include graphics with the standard Markdown ```![My great graphic](link/to/graphic.png)```. I'm going to play around with it more, and I also hope to find time to check out the other html5 presentation formats that pandoc works with, including [DZSlides](http://paulrouget.com/dzslides/), [Slidy](https://www.w3.org/Talks/Tools/Slidy2/Overview.html#(1)), [Slideous](http://goessner.net/articles/slideous/), and [S5](http://meyerweb.com/eric/tools/s5/).
