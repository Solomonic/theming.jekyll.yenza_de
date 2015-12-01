---
layout: post
title: Free software strategy blueprint
date:   2015-11-26  00:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll

series: jekyll
series-nav-title: open source blueprint

seo_description: Combine free but powerful tools to an online-business. Learn how to organize teams and support their work
---

We are going to introduce a software strategy for a fictional brand called FantasticContent.Online to demonstrate how different free tools can be combined to a rock solid base for many kinds business relying on teamwork. We will have a look how to create a professional product and present it  in the internet, how to organzize teams and make the life easy for the marketeers. Ready? Let's go ....

<!--more-->

_This is the third part of a series of educational articles, covering existing web-technologies with the aim to encourage smarter, faster and cheaper solutions for different kinds of online projects._

### The Company

Welcome to FantasticContent.Online, the global acting cooperation of creators struggeling to build a business without a dime in the pocket. We produce digital distributable content as videos, music, games or apps and use established channels to reach our customers. Maybe we produce content for video-portals, write articles for online-news, upload our music into cloud-streaming or create an Android app. No matter what we do, the competition is hard but we come prepared, are motivated and our creators have loads of talent.

Our business goal is to gain a fan-base and convert a part of it into paying customers. We prefer free access to our content-products to reach the widest posible range of viewers/listeners/users, encouraging to share and publish under the CreativeCommon License. We want to be on the right side of history, so we don't team up with copyright bullies and actually want to give something back to the community. We have no heavy advertisement budget available, so we will use social engagement to gain positive attention and motivate others to support us. 

FantasticContent.Online is the brand and website we are going to establish besides our content distribution-channel. This will enable us to build up a community of supporters, sell special services or mechandise and promote events. The website alone will not drive the business in the beginning but is a point of reference and adds credibility. Therefor are we going for a cheap solution first, adding features as needed in the process when we are able to invest profits. We assume that smartphones soon will be the top amout of devices to serve our website, followed by tablets, laptops, desktops and gaming consoles. We want one fitting solution for all devices and indexes in the best possible manner in all search engines.

### The teams

#### Communications and Management

[Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)) is an [agile software development](https://en.wikipedia.org/wiki/Agile_software_development) process or a way of organizing teamwork to increase productivity, quality and to react _agile_ on changing requirements. Scrum usually utilizes daily 15min stand-up meetings where all team members tell the rest of the team what 1) they have done yesterday 2) what they are they going to do today 3) Are problems in sight? [The agile principles](http://www.agilemanifesto.org 'Read the agile manifesto ...') where often presented as the only right approach for any project, but my professional experience does not support this as truth and neither so for many of my colleague as [the excellent article](http://opensource.com/business/15/11/open-development-method 'Read full article: Scrum is dead: breaking down the new open development method ') of [Ahmad Nassri](http://opensource.com/users/ahmadnassri) shows.

Our setup will rather consider decentralized team-members working asynchron from different locations and timezones, then a well organized team in a shared office. So Scrum is not really fitting, but anyway are some of its tools very useful for supporting global teamwork as the [Kanban](https://en.wikipedia.org/wiki/Kanban 'read about Kanban on wikipedia ....') boards on [trello.com](http://trello.com 'Work together on task lists ...') for coordinating tasks and organizing projects of any size. A classic Kanban board actually contains three lists, one for open tasks-to-do, one for tasks the team is working on right now and one for the finished tasks. Each task is named and described on a card, it can contain attachments as images, can have a date, can be commented and rated by team members and is flexible to organize with colored labels. Team members updating these tasks status by moving cards between the lists and notifications where sent out. This visualisation helps a lot to see whats going on in a team, shortens communication lines and enables team-leaders to balance work load and identify problems early. The [free online tool](http://trello.com 'Work together on task lists ...') offers [a lot useful features](https://trello.com/tour) as real-time notification, filters, time-lines, access-management and unlimited team members cooperating on one board for one goal. Nevertheless is it well received by people with little technical understanding because ... it is fun to use and implements a good UX strategy.

The center piece of our team communication is a messaging app and amazing tool called [Slack](https://slack.com/is 'Get convinced by #slack...'), this will replace emails for us and give our teamwork some slickness, transparency and efficiency. Slack allows teams to create unlimited amounts of **#channels** and send direct messages to them. A channel can represent a certain topic, a project or department and collects all related communication in the same place. We can have open channels which each team member can join and read all older messages or private channels which allow only invited members for confidential topics. All communications are searchable as well as the shared files, this is extremly useful if a new team members needs to get instructed into an ongoing project or if you just forgot what the customer actually wanted. Slack also allows to integrate our Social Networks for the marketing, updates on the Cloud hosting for the Content Creators, Github for the techies as well as the Hangout for video calls. There are free and native apps for Mac, Windows and Linux as well as the mobile versions for iOS, Android and Windows Phone. The feature-set is pretty neat and can be upgraded later by a payed version once we made money.


#### Team Techies

The odds are pretty good that the techie team is yourself, you found your way here and kept reading. Let's talk then Rasta.
We will go for simple solutions, so there is no engeneering degree needed, just curiousity and the wish to find and combine the most useful tools around. The work of this team starts with the initial setups of all tools, prepare and test the workflows and to introduce these to other teams. Many of us hate to write documentations, trust me it's still better to write it one time down instead of explaining the same thing over and over again and get complains from Creators and Business. Once the setup is done, your life will become very easy.

The basis of FantasticContent.Online brand will be a website we are going to build with the [Jekyll framework]({{site.jekyll_doc}} 'Visit the Jekyll documentation ...') which I already discussed in the [previous article]({% post_url /2015-11-19-faster-cheaper-safer %} 'Read the previous article ...') of this series. It allows us to use the hosting service of [GitHub Pages](https://pages.github.com/), which actually outsources all our server-troubles for free. No need for server- or security-updates, no wories about broken hardware and backup-safety on highest standard, FantasticContent.Online will take this deal.

An other big advantage of [GitHub Pages](https://pages.github.com/) is that it allows us to use [GitHub](https://github.com/ 'Visit github.com ...') [Repositories](https://en.wikipedia.org/wiki/Repository_(version_control) 'What is a software repository?') as a through-the-web backend for our website, including sophisticated user-right management and real-time updates on the website without any 3rd party software. We can log into github, edit files, push them and the changes are imediatly online. So even the compiling is outsourced, so hardware is mainly used reading and writing on websites. If you build your own PC please [use a Operating System that supports you](https://duckduckgo.com/?q=unix+like+os&t=ffab&ia=about 'Good and free ...') instead of Windows, a Mac will also do the job any day.

Once our prototyping reaches a state where we start to include non-techies for creating and managing content, we will need to have clear defined release steps, which are easy to follow but prevent that someone by accident breaks the website. The best strategy will vary, depending on team skills, update frequency, amount of members and content type. In the minimum configuration we will need one role
for creators and one for the person in charge of merging and releasing the latest version of website, lets call it Releaser. The creators can work in a cloned/forked repository with the very own [GitHub Pages](https://pages.github.com/) hosted domain to preview the changes. Done and ready they send a pull request to the Releaser for the technical quality control and merge to the live site. This is a flexible approach which could handle big teams with high production rates but seems also reasonable in small setups with very view team members. 

As a developer I still will prefer to run Jekyll on my localhost, have direct access to error messages and use my very own tools for editing and version control. Other people will do something else and that is a freedom I've seen with no CMS so far. Content can be accessed with most different tools now, adaptable and open to whatever is needed and whatever clever comes up next. So is it possible to write and create off-the-grid in areas with no or unstable internet connection and push it online later when possible. Creators can write first-hand experience from the wildernis when they are there, instead of remembering things back in a internet-cafe, I guess that can be an real advantage.

The techies are usually also responsible that the website have the right setup to get indexed well in search engines. We will use [Google Webmaster Tools](https://www.google.com/webmasters/ 'Find a good SEO setup, identify& fix problems for search engines ...') to to test our SEO setup and always keep an eye on new problems or improvements. SEO need to be part of our prototype and is mainly done with a set of _META_ data in the websites _HEAD_, providing a _unique_ title, description, ... for each article. Creators need to write extra descriptions for the search results, directed to human readers, providing a good, short and understandable summary what to expect from each article. There are many _SEO Experts_ offering services which are trivial and can be easily done by ourselfes OR using hacks and tricks to increase rankings. Neither one is an option we want, the second is maybe tempting but usually gets punished by the search engine within a quite short time. I will release a short-series on _healthy_ SEO strategies and structured Content soon, so keep an eye open for news if tou are interested in this topic. 

#### Team Creators

- Content creators
- Designer
- Cloud storage: Dropbox, Google Drive

#### Team Marketing & Business

- analytics
- structured Data
- MailChimp (CRM)
- kickstarter





