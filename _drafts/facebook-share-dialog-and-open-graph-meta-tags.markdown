---
layout: post
title: Problems with the facebook share? The wrong text or image shows up?
date:   2015-12-09  00:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet

series: facebook
series-nav-title: debug the facebook share dialog

seo_description: Problems with the facebook share dialog? You see wrong or no text and images? This article explains how to fix this problems by yourself.

image: http://rasta.online/library/images/facebook-share.png

---

Every CMS offers widgets and helpers to share your blog/website in popular social networks as facebook. To get the share-button in is usually very easy but a bad surprise often follows when we see which content and image shows up (or not) in facebooks share dialog. We will have a quick look at the basics of open graph parameters and how they need to be included to in the website or blog. Once this is set, we will use the facebook debugger tool to ensure we get the latest content included and we are happy with the results.

<!--more-->

[Open Graph Object Debugger]: https://developers.facebook.com/tools/debug/og/object/ "Go to debugger tool ..."
[Open Graph protocol]: http://ogp.me/ "More about the Open Graph protocol ..."

### The problem

If you are not sure what I'm talking about, just [click here](https://facebook.com/sharer.php?u={{site.url}}{{page.url}} 'Open facebook share diaog...') to share this page. You will see a preview image of this article, the article description and authorship. This article deals with problems in this dialog. The information there are part of your websites {% highlight html %}<head>...</head>{% endhighlight %} and need to be set correctly.

Even with this data set we may still don't see the right text and even more often no or a wrong image. The reason is that facebook reads these information only the first time anybody shares a page, saves it and from now serves these cached data to any new share. Even so when our websites is updated with a new image and description. The [Open Graph Object Debugger] allows us to clear this saved results and use the latest data instead.

#### Check your HEAD

If you use a CMS as Wordpress, Joomla!, Drupal, Typo3 or Plone the social-share addon of choice is suppossed to do this and we just need to check if everything is in place. If you [use a static site generator]({% post_url /2015-11-19-faster-cheaper-safer %} 'Read more about Jekyll and static site generators ...') or simple static html, you easily can include these meta-tags by yourself. You want to inspect the website source code (*right click* > *view source* ) and search for the following
{% highlight html %}
<!DOCTYPE html>
<html>
  <head>
      ...
    <!- Search for these meta tags -->
    <meta property="og:title" content="The main title for our post" />
    <meta property="og:image" content="absolute URL to the image shown with the share" />
    <meta property="og:description" content="The description is the long text in the share dialog, explaining your visitors what they can get in your blog.">
    <meta property="og:site_name" content="The name of your site or something catchy"/>
    <meta property="og:url" content="URL: this article" />
    <meta property="og:type" content="website or article?" />
    <meta property="og:locale" content="Language Code" /> 
    <!-- Author info -->
    <meta property="article:author" content="URL: facebook user or page" />
    <meta property="article:publisher" content="URL: facebook user or page" />
    <!-- End -->
    ...
  </head>
  <body>...</body>
</html>  
{% endhighlight %}

Compare [the share dialog](https://facebook.com/sharer.php?u={{site.url}}{{page.url}}) with this articles settings and it should get clear what each tag is doing.

{% highlight html %}
<!DOCTYPE html>
<html>
  <head>
      ...
    <!- Search for these meta tags -->
    <meta property="og:title" content="Problems with the facebook share? The wrong text or image shows up?" />
    <meta property="og:image" content="http://rasta.online/library/images/facebook-share.png" />
    <meta property="og:description" content="Problems with the facebook share dialog? You see wrong or no text and images? This article explains how to fix this problems by yourself.">
    <meta property="og:site_name" content="Duppy conqueror in the digital jungle."/>
    <meta property="og:url" content="http://Rasta.Online/education/software-development/2015/12/09/facebook-share-dialog-and-open-graph-meta-tags.html" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en_US" /> 
    <!-- Author info -->
    <meta property="article:author" content="https://www.facebook.com/www.rasta.online" />
    <meta property="article:publisher" content="https://www.facebook.com/www.rasta.online" />
    <!-- End -->
      ...
  </head>
  <body>...</body>
</html>  
{% endhighlight %}

We need to make sure that these meta-tags with the properties *og:title*, *og:description*, *og:image*, *og:site_name*, *og:url*, *og:type*, *og:locale*, *article:author*, *article:publisher* are included **exactly once** in the _<head>_. I've seen problems when you have the *og:title* or others twice included. On static html websites you simply write these tags direct into your source-code, if you [use a static site generator]({% post_url /2015-11-19-faster-cheaper-safer %} 'Read more about Jekyll and static site generators ...') just check [this blogs solution](https://github.com/Solomonic/theming.rasta_online/blob/master/_includes/open_graph.html 'Easy Open-graph tags inclusion ...'). If you work with a CMS as Wordpress, Joomla, Typo3, Drupal, Django or Plone first look for an addon/extension providing these tags for your system, there are plenty different available. I encountered problems in some Wordpress themes including these tags twice and I had to edit the layout files head.php to make it right. A good theme shouldn't have the problem, but if you are in the situation and can't figure it out, [ask for help](http://Rasta.Online/contact).

### The Debugger

Facebook luckily offers a free developer tool to debug problems and solve problems. This tool is the [Open Graph Object Debugger] and our weapon of choice.
