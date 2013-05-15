#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'mr.rcollins'
SITENAME = u'RyanCollins.org'

# SITEURL = 'http://ryancollins.org'

TIMEZONE = 'America/New_York'

DEFAULT_LANG = u'en'

# My changes

USE_FOLDER_AS_CATEGORY = (False)

MARKUP = (('rst', 'md', 'markdown'))

ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'

AUTHOR_URL = ('author/{slug}/')  
AUTHOR_SAVE_AS = ('author/{slug}/index.html')

CATEGORY_URL = ('category/{slug}/') 
CATEGORY_SAVE_AS = ('category/{slug}/index.html')  
TAG_URL = ('tag/{slug}/') 
TAG_SAVE_AS = ('tag/{slug}/index.html')

PAGE_URL = ('{slug}/')
PAGE_SAVE_AS = ('{slug}/index.html')

#FEED_RSS = 'feed/index.html'
FEED_ALL_RSS = None

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

THEME = 'themes/notmyidea-goz/'

PLUGIN_PATH = 'plugins'
PLUGINS = ['summary']

# End My changes

# Blogroll
#LINKS =  (('Pelican', 'http://getpelican.com/'),
#          ('Python.org', 'http://python.org/'),
#          ('Jinja2', 'http://jinja.pocoo.org/'),
#          ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('@mr_rcollins', 'https://twitter.com/mr_rcollins'),
        ('mrrcollins', 'https://github.com/mrrcollins'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True
