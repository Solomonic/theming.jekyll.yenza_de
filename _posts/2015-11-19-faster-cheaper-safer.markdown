---
layout: post
title: faster, cheaper, safer
date:   2015-11-19  00:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll

series: jekyll
series-nav-title: faster, cheaper, safer

seo_description: Exposure and Performance is most important? You might not need to pay hosting anymore when using a pre-compiled website and perform best in SEO and pageload time.

image: http://jekyllrb.com/img/logo-2x.png
---

The commonly used CMS (Wordpress, Joomla!, ...) are all server-side applications which require sophisticated features from the hosting environment, such as a database and activated PHP or Python compilers. Your website-project is of reasonable size, aimed for exposure, performance, and SEO rather than direct interaction with visitors as in community sites or e-commerce? Then you might not need any paid hosting at all anymore. Sounds good? Let's dive into pre-compiled websites and what they have to offer ... 

<!--more-->

[GitHub Pages]: https://pages.github.com/ "Visit GitHub Pages"
[GitHub help]: https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/ "Set up a custom domain with GitHub Pages"

_This is the second part of a series of educational articles, covering existing web technologies with the aim to encourage smarter, faster and cheaper solutions for small projects. The previous article explained the concept of CMS. Feel free to [read it here]({% post_url /2015-11-17-cms-wordpress-joomla-drupal-django-typo3-plone %} 'Read the previous article')._

### The new tool- A different kind of CMS
A CMS is an application, merging together [Content data and Layout]({% post_url /2015-11-17-cms-wordpress-joomla-drupal-django-typo3-plone %} 'Read about this in the previous article') into a website. It is not only possible with a huge server-side application. A Web-developer can use a static site generator to compile any complex and nested site-structures from data and configuration files on their own computer (a.k.a. localhost) and upload the resulting static website folder to the host-server. The compiling is not done on the server in real-time. It is done beforehand, and this make all the difference for the hosting requirements and final page speed.

My weapon of choice is [Jekyll]({{ site.jekyll_doc %}}/home/ 'Visit the Jekyll Documentation to learn more'), so I will focus on its advantages and disadvantages I encountered while using it. [Jekyll](http://jekyllrb.com/ 'Visit Jekyll website,,') already powers very trusted sources such as this blog or [GitHub Pages] and even allows your project to be hosted by [GitHub Pages], 100% free and direct from a github repository. Anyway, this article will not focus on the [extra features of one hosting service]({{ site.jekyll_doc %}}/github-pages/ 'integrate with GitHub Pages'). It will discuss the broader possibilies of site-generators using [Jekyll]({{ site.jekyll_doc %}}) as an example.


#### So how does it work?

Our pre-compiling CMS is actually a text transformation engine which is fed by text written in your favorite markup language, be that Markdown, Textile, or direct HTML. All content information are stored in standard text-files instead of a database, which increases the re-usability of the content and will ease every kind of data migration. 

The text-transformation process uses the sweet, sweet [Liquid Template engine](https://github.com/Shopify/liquid/wiki) and therefor you can tweak ANY output with ease to perfection. You also can configure how the site URLs look and of course what data gets displayed. There is no overhead in the html, lean&clean, it's easy to extend even by non-programmers and delivers **exact** results. All configurations and tweaks are done through editing text files, and the static web site is the final product.

#####Get it working ...

For everyone with a [Unix like Operating system](https://en.wikipedia.org/wiki/Unix-like 'Unix like OS on wikipedia') or a [Mac OS X](https://en.wikipedia.org/wiki/OS_X 'MacBook & Co.') it is a task of a few minutes while drinking coffee and watching the installation progress to get everything up and ready. Just follow the instructions [in the Jekyll Documentation](http://jekyllrb.com/docs/installation/ 'How to install Jekyll on your localhost').

{% highlight bash %} ~ $ gem install jekyll
{% endhighlight %}

 The Windows Warriors could consider for professional use an [easier and cheaper Operating System](https://duckduckgo.com/?q=cool+and+free+operating+systems) and buy a PlayStation for gaming instead **OR** [make it work anyway](http://jekyll-windows.juthilo.com/ 'Jekyll on Win OS'). Once ready, we can start our project. Let's call it FantasticContent.online. This will serve as fictional brand in the follow-ups, where we include this tool into a sophisticated software strategy, including version control as well as task and team management.

{% highlight bash %}
/* create new project 'FantasticContent.online' */
~ $ jekyll new FantasticContent.online 
~ $ cd FantasticContent.online
{% endhighlight %}

Jekyll will start a development server on your computer and also monitor all changes if you start it with the _serve_ parameter. This is very useful, so you can develop, test and preview the entire project in real time by opening [localhost:4000](http://localhost:4000) in your browser.

{% highlight bash %}
~/FantasticContent.online $ jekyll serve
{% endhighlight %}

####What do you get?

Our FanatasticContent.online folder should now contain a file-structure similar to:

{% highlight bash %}├── _config.yml /* file contains site-wide configurations */ 
├── _drafts /* folder for un-published posts */
| ├── unpublished-content-here.textile 
| └── versioning-works-great.markdown 
├── _includes /* re-usable snippets to generate footer, header, navigations ... */
| ├── footer.html
| ├── header.html
| └── my_snippet.html 
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

Other pages and folders, including new ones you create for images, contact or static content are simply copied by Jekyll into the *_site* folder when generating the result. With access to the styles via sass, to the templates in *_layouts* and *_includes* and to the data in  *_posts* and in forms of folders and pages (as index.html), you have everything you need to get going. You can find more information in the [documentation](http://jekyllrb.com/docs/home/ 'Browse Jekyll documentation ...') and feel free to [browse this blog's more populated folder structure](https://github.com/Solomonic/theming.rasta_online 'Browse on github ...')

**Important:** You NEVER want to make any changes directly in the ***_site*** folder, everything in there is gone next time Jekyll regenerates the website.

#### Accessibility

##### Layout
I consider the learning curve as very steep, so with very little experience a developer or designer is able to control any major aspect of the result. I'm fluent in several template languages for serveral CMS and haven't found anything easier than the [Liquid Template engine](https://github.com/Shopify/liquid/wiki). You can get by with very few coding skills as long as you can use these expressions:

{% highlight html %}
<!-- build an index list of all posts-->
<ul>
  <!-- Loop all posts -->
  {% raw %}{% for post in site.posts %}{% endraw %}
    <!-- check condition: author available for ths post -->
    {% raw %}{% if post.author %}{% endraw %}
    <li>
      <a href="{% raw %}{{ post.url }}{% endraw %}">{% raw %}{{ post.title }}{% endraw %}</a>
    </li>
    {% raw %}{% endif %}{% endraw %}
  {% raw %}{% endfor %}{% endraw %}
</ul>
<!-- include re-usable snippets from _includes folder-->
{% raw %}{% include footer.html %}{% endraw %}
{% endhighlight %}

##### Rapid prototyping
A developer with the understanding of any [OOP](https://en.wikipedia.org/wiki/Object-oriented_programming 'Whats that?') will love [Frontmatter]({{site.jekyll_doc}}/frontmatter/ 'More in the documentation ...'). You have 2 object-types by default: [posts]({{site.jekyll_doc}}/posts/ 'Learn more about posts ...') and [pages]({{site.jekyll_doc}}/pages/ 'Learn more about posts ...'). Both have a [certain set of properties]({{site.jekyll_doc}}/variables/ 'Learn more about variables ...') but can be extended with any new property just by adding it to the header of its text file. A default post head will look like

{% highlight yaml %}
---
layout: post
title: faster, cheaper, safer
date:   2015-11-19  00:00:00 +0700
---
{% endhighlight %}

If we want to add the author property, we just update it to:
{% highlight yaml %}
---
layout: post
title: faster, cheaper, safer
date:   2015-11-19  00:00:00 +0700

author: Jens Krause
---
{% endhighlight %}

The testing and use of the new property in the layout is fairly simple
{% highlight html %}
{% raw %}{% if post.author %}{% endraw %}
  <a href="{% raw %}{{ post.url }}{% endraw %}">{% raw %}{{ post.author }}{% endraw %}</a>
{% raw %}{% endif %}{% endraw %}
{% endhighlight %}

If this is not enough for your prototype, create your very own [content types with custom collections]({{site.jekyll_doc}}/collections/ 'Learn more about custom types and collections ...'). I don't know about you, but I could build a wide range of applications with it.

##### Content management
Let's assume we have a group of people responsible for the content of the website. We call them Editors, and we expect a low technical understanding. Their job is actually to create content and therefore to give life and blood to FantasticContent.Online. Visitors will be attracted by their work and not how lean the website is done or if it loads 0.2s faster or slower. We want to make the Editor's job as easy as possible, so they can focus on the important things such as creating fantastic content. 

Editors will require training to use any system, so instead of teaching the correct use of the CMS, it should be possible to teach them how to create markdown files and submit them into a prepared release cycle. There are markdown readers for any OS available and even [good online tools](http://dillinger.io/ 'Online markdown editor and reader ...') which will support the content-team with the creation and updating of the files. I suggest that the understanding and ability to create those markdown files is more rapid and connected with fewer problems than handling content creation in any CMS. Most editors prefer to write offline anyway, so to ask for a well-formated file is very reasonable. 

This approach can be very valuable especially in areas with slow and unreliable internet connections, since the content itself can be created offline and submitted by email, ftp or github as soon as the connection is available again, saving a lot of bandwidth in the process compared with the usual through-the-web creation of a traditional CMS.

### SEO and marketing

I have only worked for a very short time with static site generators so I'm not able to back up the following assumptions with real world data, but nevertheless we are able to make some qualified guesses for what we can expect with **S**earch **E**ngine **O**ptimization or, in better words, the indexing behavior. I don't know exactly how a search engine indexes but could identify setups which work very well and have helped several of my customers to get the top-spot for the desired keywords. It never hurts, if

- we have good content (**most important**)
- the URLs are well-formed _(bad: domain.com/index.php?id=99, good: domain.com/a-title-with-my-keywords)_
- we have a title and a description for each article in the HEAD
- we provide a sitemap.tgz for the crawler bots
- we use valid HTML 
- we use Webmaster tools to identfy and fix problems
- meta keywords: I could not identify significant influence of them, but sure ...

The URL magic is pretty good when the website is generated. It follows by default the form
{% highlight html %} domain.com/CATEGORY1/CATEGORY2/YEAR/MONTH/DAY/TITLE-OF-POST.html {% endhighlight %}

This blog post has the following Frontmatter variables set:

{% highlight yaml %}
---
layout: post
title: faster, cheaper, safer
date:   2015-11-19  00:00:00 +0700

author: Jens Krause

categories: education software-development
tags: internet jekyll
---
{% endhighlight %}

The resulting URL and site structure is very SEO and readable.
{% highlight html %} rasta.online/education/software-development/2015/11/19/faster-cheaper-safer.html {% endhighlight %}

You can also change the general URL mapping for all posts or set static *permalink*s for special posts. We have every freedom we need, always just one Frontmatter variable away. Generating a sitemap is no problem, and every other identified positive SEO behavior seems very possible. Once set up, I believe it will have excellent indexing. I will start to collect data over the next weeks and include it in the follow-up SEO articles but my expectations are high. 

An popular approach to gather data about the vistor preferences and improve towards a better [user experience (UX)](http://www.forbes.com/sites/forbestechcouncil/2015/11/19/good-ux-is-good-business-how-to-reap-its-benefits/ 'Importance of UX on Forbes.com...') is split-testing, or **A/B** campaigns. Usually is the same content presented with 2 different layouts, to see which is better received and lead to higher conversion rates. With the pre-compiled websites, it is very easy to implement those within one domain, just generate the same website 2 times with the different layouts, upload both sites in folder A and folder B and set your splitter algrorithm in front to do the splitting. 

Even more interesting in this matter is how two or more domains with the very same content, same technical background and same SEO perform against each other with different layouts. Good **U**ser E**X**perience **D**esign (UXD) leads to better business and is essential to the financial success of a project. Big companies pay really big money for UX analysis and improvements. Believe me, I charged very well, and it was still always worth it. 


### Hosting, re-usability and security

Besides the free hosting options with certain hosters, we gain a new freedom when it comes to content. It is in any case much easier to move to newer and faster servers if you just need to move your assets such as images and a bunch of html files. Hosting providers often offer very cheap services for the first year and increase their prices in the second and following years. This strategy works well because customers go for the low price first, while all their work in the CMS will be really hard to move to another location. This migration usually costs way more than a year of hosting, so they got you don't they?
Nope, backup your images and upload them with the latest generated version of your project to the new server, done. Neither Layout nor Content are chained to the hoster anymore and you want them backed up anyway at any time.

Content data is now stored in well-formatted text files in an accessible central location instead of a local database. This is **very** useful for any kind of automated content re-use as in RSS, MailChimp Campaigns or new and more exciting possibilities.

You don't really need to worry about security aspects of your project. A static page cannot be hacked in the usual sense. A hacker could interfere with your ftp/sftp connection, but it is unlikely, and more importantly, you don't need to worry that the CMS itself allows exploits. 

### Summary

As a professional, I see the approach of a pre-compiled CMS as superior to certain server-side applications. To be able to deploy different layout versions of the same content very cheap and very fast opens up a big field of scientific and business opportunities. My own personal prognosis, in November 2015, is that variations of pre-compiled CMS will take a huge market share as soon there is a free Windows GUI or Android App deploying automated lean websites into a free cloud hosting. Many server-side CMS **just** show content the customer actually doesn't want to touch. This seems like a lot of trouble since hosting, setup, and maintenance are way more expensive and the content is stuck in one database, which is pretty worthless without the CMS itself.

The biggest drawback of this approach is clearly the missing real-time interaction. Nevertheless, it is very easy to include any kind of widgets for Ajax embeddings or something similar, so 3rd-party services can be utilized to overcome these disadvantages. A good example, for starters, is to use the facebook comments and likes to gain feedback, include a google form for an interactive site-search, and link to a MailChimp newsletter system and basic CRM. More details in the follow-up for the strategic setup of FantasticContent.Online, including amazing other tools we have available for free these days. 

 _Stay tuned ..._
