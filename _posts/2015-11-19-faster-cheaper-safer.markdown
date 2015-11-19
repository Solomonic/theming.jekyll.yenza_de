---
layout: post
title: faster, cheaper, safer
date:   2015-11-19  00:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll

---

The commonly used CMS (Wordpress, Joomla!, ...) are all server-side applications which require sophisticated features from the hosting environment, as a database and activated PHP or Python compilers. If your website-project is of reasonable size, aimed to exposure, performance and SEO rather then direct interaction with visitors as in community sites or e-commerce, then you may don't need any paid hosting at all anymore. Sounds good? Let's dive into pre-compiled websites and what they have to offer ... 

<!--more-->

[GitHub Pages]: https://pages.github.com/ "Visit GitHub Pages"
[GitHub help]: https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/ "Set up a custom domain with GitHub Pages"

_This is the second part of a series of educational articles, covering existing web-technologies with the aim to encourage smarter, faster and cheaper solutions for small projects. The previous article explained the concept of CMS, feel free to [read it here]({% post_url /2015-11-17-cms-wordpress-joomla-drupal-django-typo3-plone %} 'Read the previous article')._

### The new tool- A different kind of CMS
A CMS is an application, merging together [Content data and Layout]({% post_url /2015-11-17-cms-wordpress-joomla-drupal-django-typo3-plone %} 'Read about this in the previous article') to a website. It is not only possible with a huge server-side application, a Web-developer can use a static site generator to compile any complex and nested site-structures from data- and configuration-files on the own computer (a.k.a. localhost) and upload the resulting static website folder to the host-server. The compiling is not done on the server in real-time, it is done beforehand and this make all the difference for the hosting requirements and final page speed.

My weapon of choice is [Jekyll]({{ site.jekyll_doc %}}/home/ 'Visit the Jekyll Documentation to learn more'), so I will focus on its advantages and disadvantages I encountered while using it. [Jekyll](http://jekyllrb.com/ 'Visit Jekyll website,,') already powers very trusted sources as this blog or [GitHub Pages] and even allows your project to be hosted by [GitHub Pages], 100% free and direct from a github repository. Anyway, this article will not focus on the [extra features of one hosting service]({{ site.jekyll_doc %}}/github-pages/ 'integrate with GitHub Pages'), it will discuss the broader possibilies of site-generators on the example of [Jekyll]({{ site.jekyll_doc %}}).


#### So how does it work?

Our pre-compiling CMS is actually a text transformation engine which is feeded by text written in your favorite markup language, be that Markdown, Textile, or direct HTML. All content information are stored in standard text-files instead of a database, that increases the re-usability of the content and will ease every kind of data migrations. 

The text-transformation process uses the sweet, sweet [Liquid Template engine](https://github.com/Shopify/liquid/wiki) and therefor you can tweak ANY output with ease to perfection, you also can configure how the site URLs look and of course what data gets displayed. There is no overhead in the html, lean&clean, its easy to extend even by non-programmers and delivers **exact** results. All configurations and tweaks are done through editing text files, and the static web site is the final product.

#####Get it work ...

For everyone with a [Unix like Operating system](https://en.wikipedia.org/wiki/Unix-like 'Unix like OS on wikipedia') or a [Mac OS X](https://en.wikipedia.org/wiki/OS_X 'MacBook & Co.') it is a task of a few minutes drinking coffee and watch the installation progress to get everything up and ready, just follow the instructions [in the Jekyll Documentation](http://jekyllrb.com/docs/installation/ 'How to install Jekyll on your localhost').

{% highlight bash %} ~ $ gem install jekyll
{% endhighlight %}

 The Windows Warriors could consider for professional use an [easier and cheaper Operating System](https://duckduckgo.com/?q=cool+and+free+operating+systems) and buy a PlayStation for gaming instead **OR** [make it work anyway](http://jekyll-windows.juthilo.com/ 'Jekyll on Win OS'). Once ready we can start our project, lets call it FantasticContent.online. This will serve as fictional brand in the follow ups, where we include this tool into a sophisticated software strategy, including version control as well as task and team management.

{% highlight bash %}
/* create new project 'FantasticContent.online' */
~ $ jekyll new FantasticContent.online 
~ $ cd FantasticContent.online
{% endhighlight %}

Jekyll will start a development server on your computer and also monitor all changes if you start it with the _serve_ parameter. This is very useful, so you can develop, test and preview the entire project in real time by opening [localhost:4000](http://localhost:4000) in your browser.

{% highlight bash %}
~/FantasticContent.online $ jekyll serve
{% endhighlight %}

####What do you got?

Our FanatasticContent.online folder should now contain a file-structure similar to:

{% highlight bash %}├── _config.yml /* file contains site-wide configurations */ 
├── _drafts /* folder for un-published posts */
| ├── unpublished-content-here.textile 
| └── versioning-works-great.markdown 
├── _includes /* re-usable snippets to generate footer, header, navigations ... */
| ├── footer.html
| └── header.html 
├── _layouts /* the layout files */
| ├── default.html 
| └── post.html 
├── _posts /* folder for all posts, categories and tags will map each to SEO friendly URLs* /
| └── 2015-11-19-faster-cheaper-safer.markdown
├── _data /* well-formated files(.yml, .cvs, .json) can hold additional site data */
| └── members.yml
├── _sass /* yeah, sass is auto-compiled */
| ├── _base.scss
| └── _layout.scss
├── _site /* contains the resulting compiled website */
├── .jekyll-metadata /* hands off */
└── index.html /* the landing page */
{% endhighlight %}

Other pages and folders, including new one you create for images, contact or static content are simply copied by Jekyll into the *_site* folder when generating the result. With access to the styles via sass, to the templates in *_layouts* and *_includes* and to the data in  *_posts* and in form of folders and pages (as index.html) you have everything you need to get going. More information you find in the [documentation](http://jekyllrb.com/docs/home/ 'Browse Jekyll documentation ...') and feel free to [browse this blogs more populated folder structure](https://github.com/Solomonic/theming.rasta_online 'Browse on github ...')

**Important:** You NEVER want to make any changes direct in the ***_site*** folder, everything in there is gone next time Jekyll re-generate the website.

#### Teamwork:Organisation is the key
- version control text-files via github for Layout and Content
- blob data (images) goes into library folder, backed up via TimeMachine/ Windows Backup
- Editors just work .markdown files (online editor: http://dillinger.io/), no html, no internet required
- local test versions for Developers, test new features on localhost, test css, preview changes
- Mr. Releaser: preview changes, get approval, upload at a scheduled date the latest version of the tested, reviewed and approved website

### Pro:Hosting
- easy to change Hoster
- only library need to be moved to new server, plus the lastest version of the git clone
- use fishing offers, migrate with reasonable effort to new location

### SEO
- with smart urls with categories
- useful naming conventions
- permalinks
- sitemaps

### Development
- fast prototyping
- perfect for A/B testing, marketing
- mid tech-level required to setup
- low tech-level required for maintance or content creation

