---
layout: post
title: CMS ... Wordpress, Joomla!, Drupal, Mangento, Typo3 or Plone
date:   2015-11-17  04:40:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll

---

Wordpress, Joomla!, Drupal, Mangento, Typo3 and Plone are some of the most common Content Management Systems (CMS) today, delivering millions od websites every day. **But what is a CMS and which purpose does it serve?** Thanks to the open-source community small projects, start-ups or any businesses with very limited budgets are enabled to get online with low-cost websites. This article explains some very basic concepts and what kind of issues you have to expect when using any CMS ...

<!--more-->

_This is an introduction into a series of articles, covering existing web-technologies and encouraging smarter, faster and cheaper solutions for the future. This article is meant to give a common ground for all kind of readers, so experience users will already know this._

#####My first steps

The first website I ever made was in 2001 as a student of my local university. The task was to write a simple 5-pager website, including a navigation, some content with text, images, tables and a footer in the very bottom. Since I was a lazy dude I was looking for the most simple way to achieve this and found a software called "Microsoft Frontpage", the first WYSIWYG Editor I ever came in touch with. By using it I was able to build something decent looking within 3 days, just by clicking around ... and the Editor "translated" my actions into HTML & CSS code and generated my files. Ready for the upload to the internet, I felt like superman. I can make website!

#####What exactly is a website?

The site never made it online but I eventually understood what a website really is:
A HTML text-document (file with the ending .html), which may made its way to your browser through the internet OR is created by yourself on your own computer. One page is hardly a website, so we can connect a couple of the HTML files with each other through "links". The styling is a set of rules how the browser should display certain parts of the HTML text. These rules are written down in another text-file with the ending .css and THIS is actually the part which can drive you nuts as a themer. The browser does all the work and finally translates all these text-files into a color- and useful thing with images, videos and many kinds of real-time interaction we love so much and use every day.

#####What is a CMS?

**C**ontent **M**anagement **S**ystems are an approach for web-applications to seperate Layout and Content. With layout I mean the CSS styles and the repeated HTML structures as a logo, navigations and a footer. On the other hand we have a database storing all kinds of Content information like titles, descriptions, texts, creation and publishing dates, authorships, history and positions in the page-tree for each article within a website. Youtube have its very own CMS, in a video page you find parts looking the same for each video, this is Layout, while the video and its comments are Content. Any CMS builds mechanisms to merge the Content information and Layout to produce one specific HTML page when I open a specific URL and then send this text-file to my browser. There are scripts running on the server (= your hosting), calculating in most clever ways the resulting website everybody going to enjoy. We call this server-side applications, simply because the server have to work and compute for us to get results. Server-side application include all major CMS as well as everything cool in the internet allowing interaction. _So, a CMS is a server-side application, merging together Content stored in a online database and the Layout of a website._

#####Sounds complicated, so why are we doing this?

Imagine you have a website with 200 articles. When you decide to add a new article to the navigation, change one word in the footer or simply update the copyright year you will need to update the layout of 200 HTML pages. This is a very boring work, you still need to have full focus all the time or you mess up the website and it may takes hours until you got it perfect. Many web-developers made a living from updating static html pages and many, many still do this today. Once you have 5000, 50.000 or 500.000 articles on your website, static HTML pages become in fact un-manageable. With a CMS you usually log into a backend (often called admin panel or such) make any Layout update exactly one time and all of your articles will show these changes imediatly.

#####Get it, it's FREE!

Thanks to the open-source community, un-counted night-time hours of "moonshinnig" from geeks and nerds all around the world we got a big varity of different free CMS solutions by now in many different Programming Languages as PHP, Perl, Python or Ruby, serving the largest part of websites in the internet today. They became so popular because the software itself is free and Re-seller promised that everybody able to write a document with MS WORD can maintain the own website/blog without knowing a bit about HTML and with no need to hire an expert for making future updates.
**All is great then, right?** Problem solved, case closed?

###Actually .... problems to expect from your CMS

####Costs: It's not free!

The software is free, but not the website. Every website needs a server to be stored on, static HMTL or sophisticated CMS. The sophisticated server-side appliocation needs by its nature more space, a database and computing-power to do its magic. The hosting costs vary widely between each CMS and are a major determining factor how many people will use it. Wordpress as absolute market leader (50%-60% of all CMS in use are Wordpress) often ships with very effortable hosting-packages while others like Plone (1%-2% market share) come at a 10 higher hosting costs. How often a CMS is used doesn't proof it's quality in any matter but it demonstrate how well costs and results are in balance.

As a matter of fact are most website-companies, web-designer, themer and web-developer specialized in **one** CMS and will always recommend the own choice as the right one for every single project and customer.
_If your only tool is a hammer, every problem looks like a nail to you._
If a Wordpress professional discusses with the Plone professional, each of both can make valid points why the own product is superior to the other ones. Neither one will be right for every real world project and customer because the priorities and targets are different each time.

The real costs come into play, when you hire a professionals to do customizations, get complicated setups done or implement non-standard features. Professionals can be found starting at $3/hour in developing countries as India or charge up to $300++/hour in the first world, depending on the system, client and needed skill-set. Every professional need to find its balance between getting customers and getting paid, I usually recommend my students to become a skilled specialist with less competion and therefor higher hourly rates.

####Ease of use

Many clients seems to be disappointed when they realize that their new website-system is way more complicated then they expected. If you are the reseller of a CMS you will need to deal with the bugs or missing features of the product for your client. A word of warning: A customer who is not interested in the techie side, don't want to deal with html is very likely not very keen in learning to handle the CMS and find the ways around the pitfalls. This customer will always have the feeling that workflows are too complicated, because they rather want to put their energy into business, not managing the website beside the normal tasks. The more an application can do, the more complex it gets and the higher are the chances for bugs and error. **There is always a need for specialists.**

####Speed

All server-side application will need a some time to analyze your request, generate your HTML reponse page and send it back to you. The weaker the used hosting is, the longer it will take until the CMS page finally shows up. There are approaches for every system to improve speed by more efficient algorithms, advanced caching setups and resource compressions, but whatever a CMS implements, it will be **always** slower then a correct static HTML website with comparable content. 

**So what? My website is slower, does this make a difference?**

That depends on your goals. This very blog should load in around a second while the same content produced by a CMS in a standard setup would easily take 5s or more. Studies show that website visitors recognize the increase of speed by 0.1s clearly and will return more often to the faster websites then to the slower. Clever specialists can get the CMS through optimizations, minizations and setups to a speed closer to a static HTML page, but it requires big efforts and still will be slower. You can compare this basic dilema with two neighbors at Halloween who want to give out candy as fast as possible. One is standing right behind the door with candy in its hand waiting, while the other have to grab it from the kitchen first. Who will win?

###Conclusion

Wordpress and its fellow CMS are valuable tools in creating websites and publishing content, they serve most of the worlds website and proofed themself over and over again. Nevertheless is not one CMS the best tool for every task and all of it have plenty in-built disadvantages. Through their complexity they force people to specialize on one or very few systems, which actually is a disadvantage of the common customer. The Joomla! guy don't send customers to Drupal or comes up with an alternative way to his specialty. So if a customer don't know what CMS is best to choose in his situation and who to contact, it seems mere luck what he/she is getting in the end, depending on the persons asked.

In the follow up article I want to shed some light on a different professional approach for low-cost, high-speed web-projects, following best-pratices and may add a new tool to your digital toolbox. Stay tuned until we dive a little into pre-compiled websites and what they can offer. 
