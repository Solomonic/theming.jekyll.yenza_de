---
layout: post
title: CMS ... Wordpress, Joomla!, Drupal, Django, Typo3 or Plone
date:   2015-11-17  04:40:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll

series: first
series-nav-title: CMS? What is that?

seo_description: What is a website? For what do we need CMS? This article explains the basics of internet and shows commonly used solutions as Wordpress, Joomla!, Drupal, Django, Typo3 and Plone.

image: http://rasta.online/library/images/many_cms.png
---

Wordpress, Joomla!, Drupal, Django, Typo3 and Plone are some of the most common Content Management Systems (CMS) today, delivering millions of websites every day. **But what is a CMS and what purpose does it serve?** Thanks to the open-source community, small projects, start-ups, or businesses with very limited budgets are able to get online with low-cost websites. This article explains some very basic concepts and what kind of issues you can expect when using any CMS...

<!--more-->

_This is an introduction into a series of articles, covering existing web-technologies and encouraging smarter, faster and cheaper solutions for the future. This article is meant to give a common ground for all kind of readers, so experience users will already know this._

#####My first steps

The first website I ever made was in 2001 as a student of my local university. The task was to write a simple 5-page website, including navigation, some content with text, images, tables and a footer in the very bottom. Since I was a lazy dude, I was looking for the simplest way to achieve this and found a software application called "Microsoft Frontpage", the first WYSIWYG Editor I ever came in contact with. By using it, I was able to build something decent-looking within 3 days, just by clicking around... and the Editor "translated" my actions into HTML & CSS code and generated my files. Ready to upload it to the internet, I felt like superman. I can make website!

#####What exactly is a website?

The site never made it online, but I eventually understood what a website really is:
A HTML text-document (file with the ending .html), which may make its way to your browser through the internet OR is created by yourself on your own computer. One page is hardly a website, so we can connect a couple of the HTML files with each other through "links". The styling is a set of rules how the browser should display certain parts of the HTML text. These rules are written down in another text-file with the ending .css and THIS is actually the part which can drive you nuts as a themer. The browser does all the work and finally translates all these text files into something useful, with color, images, videos, and many kinds of real-time interaction that we love so much and use every day.

#####What is a CMS?

**C**ontent **M**anagement **S**ystems are an approach for web-applications to seperate Layout and Content. With layout I mean the CSS styles and the repeated HTML structures such as a logo, navigations, and a footer. On the other hand, we have a database storing all kinds of Content information like titles, descriptions, texts, creation and publishing dates, authorships, history, and positions in the page-tree for each article within a website. Youtube has its very own CMS. In a video page, you will find parts looking the same for each video. This is considered the Layout, while the video and its comments are the Content. The CMS provides the mechanisms to merge the Content information and Layout in order to produce one specific HTML page that is sent to my browser whenever I open a specific URL. There are scripts running on the server (your hosting), calculating in the most clever ways the resulting website that everybody is going to enjoy. We call these server-side applications, simply because the server has to work and compute for us to get the results. Server-side applications include all major CMS as well as everything cool on the internet allowing interaction. _So, a CMS is usually a server-side application, merging together Content stored in an online database with the Layout of a website._

#####Sounds complicated, so why are we doing this?

Imagine you have a website with 200 articles. When you decide to add a new article to the navigation, change one word in the footer, or simply update the copyright year you will need to update the layout of 200 HTML pages. This is very boring work because you need to fully focus all the time or you will mess up the website and it may takes hours until you get it perfect. Many web-developers made a living from updating static html pages and many, many still do to this day. Once you have 5,000, 50,000 or 500,000 articles on your website, static HTML pages become in fact un-manageable. With a CMS you usually log into a backend (often called admin panel or such), make your Layout updates exactly one time and all of your articles will display these changes immediately.

#####Get it, it's FREE!

Thanks to the open-source community, countless night-time hours of "moonshining" from geeks and nerds all around the world, we have a big varity of different free CMS solutions now and in many different Programming Languages such as PHP, Perl, Python or Ruby, serving the majority of websites on the internet today. They became very popular because the software itself is free and advertised as the easiest access into the online world. There is no need to learn HTML, that convinced at least all of my early customers.
**All is great then, right?** Problem solved, case closed?

###Actually .... problems to expect from your CMS

####Costs: It's not free!

The software is free, but not the website. Every website needs a server to be stored on, whether it's static HMTL or a sophisticated CMS. By nature, the sophisticated server-side appliocation needs more space, a database, and computing power to do its magic. The hosting costs vary widely between each CMS and are a major determining factor for how many people will use it. Wordpress as the absolute market leader (50%-60% of all CMS in use are Wordpress) often ships with very affordable hosting packages, while others like Plone (1%-2% market share) require about 10 times higher hosting costs. How often a CMS is used doesn't prove its quality in any way, but it does demonstrate how well the costs and results are balanced.

As a matter of fact, most website companies, web designers, themers, and web developers are specialized in **one** CMS and will always recommend their own choice as the right one for every single project and customer.
_If your only tool is a hammer, every problem looks like a nail to you._
If a Wordpress professional discusses with the Plone professional, both can make valid points why their own product is superior to the other. Neither one will be right for every real world project and customer because the priorities and targets are different each time.

The real costs come into play when you hire a professional to do customizations, setup complicated environments, or implement non-standard features. Professionals can be found starting at $3/hour in developing countries such as India or charge up to $300+/hour in the first world, depending on the system, client and needed skillset. Every professional needs to find their balance between getting customers and getting paid. I usually recommend my students to become a skilled specialist with less competion and therefore charge higher hourly rates.

####Ease of use

Many clients seems to be disappointed when they realize that their new website-system is way more complicated than they expected. If you are the reseller of a CMS, you will need to deal with the bugs or missing features of the product for your client. A word of warning: a customer who is not interested in the techie side and doesn't want to deal with HTML is very likely not very keen on learning to handle the CMS and find the ways around the pitfalls. This customer will always have the feeling that workflows are too complicated, because they would rather put their energy into business instead of managing the technical website tasks. The more capable an application is, the more complex it gets, and the chances are higher for bugs, errors and confusion. **There is always a need for specialists.**

####Speed

All server-side applications will need a some time to analyze your request, generate your HTML reponse page and send it back to you. The weaker the hosting server is, the longer it will take until the CMS page finally appears. There are approaches for every system to improve speed by more efficient algorithms, advanced caching setups and resource compressions, but no matter what a CMS implements, it will be **always** slower then a correct static HTML website with comparable content. 

**So what? My website is slower, does this make a difference?**

That depends on your goals. [This article was tested with 272ms loading time](http://tools.pingdom.com/fpt/#!/wTly2), but results always vary over time and with location. I would expect a CMS in a standard setup to be at least 1s slower, way more with some of them. Studies show that website visitors clearly recognize the increase of speed by 0.1s and will prefer and return more often to the faster websites. Clever specialists can modify the CMS with optimizations, minimizations, and setups to obtain a speed very close to a static HTML page, but it requires big efforts and still will be slower. You can compare this basic dilemma with two neighbors at Halloween who want to give out candy as fast as possible. One is standing right behind the door with candy in their hand waiting, while the other has to grab it from the kitchen first. Who will win?

###Conclusion

Wordpress and its fellow CMS are valuable tools in creating websites and publishing content. They serve most of the world's websites and have proved themselves over and over again. Nevertheless, there is not one CMS that is the best tool for every task and all of them have plenty of built-in disadvantages. Through their complexity they force people to specialize on one or very few systems, which actually is a disadvantage to the common customer. The Joomla! guy won't send customers to Drupal and would rather find an alternative approach using his specialty. So if a customer doesn't know which CMS is the best choice in their situation or who to contact, it seems mere luck what they are getting in the end, depending on who they asked.

_In the follow-up article, I want to shed some light on a different professional approach for low-cost, high-speed web projects, following best pratices, and it may end up adding a new tool to your digital toolbox. Stay tuned until we dive a little into pre-compiled websites and what they can offer._
