Title: Publishing using Sphinx to Github
Author: mr.rcollins
Date: 2015-06-23 11:43
Slug: publishing-using-sphinx-to-github
Category: software
Tags: website,sphinx,github

I've been playing around with [Sphinx](http://sphinx-doc.org/index.html) as a digital publishing tool. It can take multiple files written in reStructuredText (similar to Markdown, which is plain text with minimal markup) and create not only a website, but also PDFs and ePubs (and more, list is on the website). An example is the [Sublime Text Unofficial Documentation](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/). If you click on the **Read the Docs** link in the bottom left of the window, you can see the documentation in other formats.

[Read the Docs](https://readthedocs.org/) will automatically create a website and other files from a Github repository, but you can also publish yourself to Github without using another service. My problem came from an issue with Github ignoring the folder *_static*, which is where Sphinx puts assets for the website. The solution is simple enough, have a *.nojekyll* file in the root of the website. The question was how to do that automatically. What I did was add a new target to the Makefile[1]:

    github:
        $(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
        touch $(BUILDDIR)/html/.nojekyll
        ghp-import $(BUILDDIR)/html/
        git push -u origin gh-pages
        @echo
        @echo "Published to Github"

Now when I type ```make github```, the website will be rebuilt, a *.nojekyll* file will be created, the website will be imported into the gh-pages branch and that branch will be pushed to Github.


[1]: This assumes you have already set up authentication to push a branch to Github and have installed ghp-import.
