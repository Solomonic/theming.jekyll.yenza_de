---
layout: post
title: Problems with the facebook share? The wrong text or image shows up?
date:   2015-12-11  00:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet

series: facebook
series-nav-title: debug the facebook share dialog

seo_description: This article explains how to set all needed information in open graph tags of your website and how to use the debugger tools to get the latest results.

image: http://rasta.online/library/images/facebook-share.jpg

---

Every CMS offers widgets and helpers to share your blog/website in popular social networks as facebook. To get the share-button in is usually very easy but a bad surprise often follows when we see which content and image shows up (or not) in facebooks share dialog. We will have a quick look at the basics of open graph parameters and how they need to be included to in the website or blog. Once this is set, we will use the facebook debugger tool to ensure we get the latest content included and we are happy with the results.

<!--more-->

[Open Graph Object Debugger]: https://developers.facebook.com/tools/debug/og/object/ "Open debugger tool ..."

### The problem

If you are not sure what I'm talking about, just [open the share dialog here](https://facebook.com/sharer.php?u={{site.url}}{{page.url}} 'Open facebook share diaog...'). You will see a preview image of this article, the article description and authorship. This article deals with problems in this dialog. The information displayed there are part of your websites {% highlight html %}<head>...</head>{% endhighlight %} and need to be set correctly to produce good resuls.

Even with the informations set, we may still don't see the correct text and even more often no or a wrong image. The reason is that facebook reads these information only the first time anybody shares a page, saves it and from now serves these cached information to any new share, even so when our websites is updated with a new image and description. The [Open Graph Object Debugger] allows us to clear this saved results and use the latest data instead.

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
    <meta property="og:title" content="{{page.title}}" />
    <meta property="og:image" content="{{page.image}}" />
    <meta property="og:description" content="{{page.seo_description:}}">
    <meta property="og:site_name" content="{{site.name}}"/>
    <meta property="og:url" content="{{site.url}}{{page.url}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en_US" /> 
    <!-- Author info -->
    <meta property="article:author" content="{{site.fb-url}}" />
    <meta property="article:publisher" content="{{site.fb-url}}" />
    <!-- End -->
      ...
  </head>
  <body>...</body>
</html>  
{% endhighlight %}

We need to make sure that these meta-tags with the properties *og:title*, *og:description*, *og:image*, *og:site_name*, *og:url*, *og:type*, *og:locale*, *article:author*, *article:publisher* are included **exactly once** in the _<head>_. I've seen problems when you have the *og:title* or others twice included. On static html websites you simply write these tags direct into your source-code, if you [use a static site generator]({% post_url /2015-11-19-faster-cheaper-safer %} 'Read more about Jekyll and static site generators ...') just check [this blogs solution](https://github.com/Solomonic/theming.rasta_online/blob/master/_includes/open_graph.html 'Easy Open-graph tags inclusion ...'). If you work with a CMS as Wordpress, Joomla, Typo3, Drupal, Django or Plone first look for an addon/extension providing these tags for your system, there are plenty different available. I encountered problems in some Wordpress themes including these tags twice and I had to edit the layout files head.php to make it right. A good theme shouldn't have the problem, but if you are in the situation and can't figure it out, [ask for help](http://Rasta.Online/contact). You will need to have control over these tags before you can use the [Open Graph Object Debugger] in an effective manner.

### The Debugger

Facebook luckily offers a [free developer tool](https://developers.facebook.com/tools/debug/og/object/ 'Open Graph Debugger') to debug problems with these open-graph meta tags and solve the caching problem. We need to have a facebook account to use it so if you have none, create it for development purpose and use a [disposable email service](https://www.trash-mail.com/en/ 'Disposable email service with all conventional mailbox functions!') for privacy protection. Once you are logged in are we ready to go.

**If you have the debugger open now** just paste the URL of you website/blog in the input field and click the ***Fetch new scrape Information*** button.

As result are we getting a page with all the **latest** data. Just scroll down and you will see errors if any, which tags were found and a preview of the share dialog. It's a good time now to phrase an attractive descriptions for your content and to play around to find an nice image. What you need to know about the picture:

- the minimum-size is 200 x 200px, everything **smaller is ignored** and the next big image is used instead. 
- for big image effect: use picture of **1200 x 630px** or bigger for high resolution devices or at least 600 x 315px
- to avoid unwanted cropping of the image, try a **ratio close to 1.91:1**

We want to check each post one by one, to ensure the correct images and text is showing. I for example had an issue, that the image used on _http://Rasta.Online/about_ was not updated besides the fact that the path was correct, the image well sized and available through the web. I **fetched new scrape information** couple of times but with no change. Finally I tried _http://Rasta.Online/about_***/*** and I got the updated results, everything works now fine. 

### Summary

Open Graph tags are often treated as _"this facebook thing"_ because it is the most common usecase. I see today a fast growing amount of other tools, also using these tags to generate previews in chats and messaging apps. So we don't do this for facebook, we do it for a more user-friendly internet. Find out more about the [Open Graph protocol](http://ogp.me/ "More about the Open Graph protocol ..."), and its possibilities.

_Stay tuned_
