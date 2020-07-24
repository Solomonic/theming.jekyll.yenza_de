---
layout: post
title: JAM Day 0 - What are we going to do?
date:   2019-11-09  13:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jam

series: jam-stack
nav_title: JAM Day 0 - Goals and Tools

seo_description: On Day 0 of our JAMstack journey we are going to define our goals and look at the tools we are using.

image: http://rasta.online/library/images/JAM2019.png

---

After reading a couple of articles about the current developments in the **JAM** Stack (**J**avascript, **A**PI, **M**arkdown) I got really excited about getting my hands dirty and build a little project. Since the usual tutorials often lack the requirements of real-world applications I got the idea of creating an functional online shop, utilizing shiny new tools as **StackBit** which are available for free. 

<!--more-->
[CMS]: https://en.wikipedia.org/wiki/Content_management_system "Content Management System"
[Forestry]: https://forestry.io/ "Static Content CMS"
[Gatsby]: https://www.gatsbyjs.org/ "JavaScript based Static Site Generator for React"
[GitHub]: https://www.github.com/ "Mange your code repositories"
[GitHub Pages]: https://pages.github.com/ "GitHub hosted Pages"
[Hugo]: https://gohugo.io/ "Super Fast Go based Static Site Generator"
[my GitHub account]: https://github.com/Solomonic "Solomonic"
[Netlify]: https://www.netlify.com/ "Continuous deployment and serverless functions"
[Netlify CMS]: https://www.netlifycms.org/ "Static Content CMS"
[Jekyll]: https://jekyllrb.com/ "Static Site Generator working with github pages"
[SaaS]: https://en.wikipedia.org/wiki/Software_as_a_service "Software as a Service"
[SnipCart]: https://snipcart.com/ "Javascript based Shopping cart solution"
[StackBit]: https://www.stackbit.com/ "Bundles your JAM Stack"
[Planty theme]: https://github.com/snipcart/stackbit-theme-planty/ "Planty theme on github"
[Create with StackBit]: https://app.stackbit.com/create?theme=https://github.com/snipcart/stackbit-theme-planty&ssg=jekyll "Create a new project with Planty Theme"

My target will be to spend the lowest amount of money and time while building a custom branded, fully operational, automatic deployable shop which is suitable for startup and small business purpose, but extendable for future growth. 
But first things first, lets make a battle plan.

### Objective: Herbal Tea Shop

Me and my family like a rather natural diet, we avoid processed foods and enjoy quite a variety of herbal teas. Over the years we gained our experiences and now entertain the idea for a little side-hustle of promoting and selling those teas online. This is an experiment with a rather big chance of failing, so we aim low in regards of investments and just give it a try.

Before we are going to make real money we will be able to manage our products, prices and customers with familiar office tools, so we are not looking for any warehouse management or CRM solution, we just want to present the products and give the buyers an option to order. Neither will we start out with employees, so even user permission management is not an important concern in the beginning. 

We will need to make the site multilingual though and provide prices in different currencies as essential part of our marketing strategy, so it will be more complicated as a plain vanilla tutorial.


### The Tools

_Disclaimer:_ This is not a paid promotion of any of the following services, I just want to show what I use for my particular project and which experiences I'm going to have with each. In the basic level all tools are free, if I hit a wall and need to pay-to-play I will state that very clearly and look for an alternative solution.  

#### [StackBit]

[StackBit] will be the backbone for our new shop. It is a very easy and fast way to bundle all the JAM Stack in one UI and bootstrap a new website literally in minutes. It gives you the option to use a pre-build or any custom themes, let you choose your *S*tatic *S*ite *G*enerator and a [CMS]. The code and data will live in a [GitHub] repository and deployed with [Netlify].

This tool has a sleek dashboard which allows you to create and manage your **JAM** projects. It will do the work of wiring the components together without any complicated integrations and provides you with the links and API key you may need.

I started registering with [my GitHub account] and gave [StackBit] the required authorizations and was on my way of creating my project by pressing the **+ New Project** button, easy as cake so far.


#### Theming

First you are required to choose one from a list of currently ten professional looking themes or adding a [GitHub] link to a custom theme. You have a **Live Preview** for each theme and for blogging, a portfolio, documentation or most other purposes is the selection already reasonably well. This step also shows a preview of over 20 upcoming themes which you can't select yet but gets you and idea what is planned for the near future.

There is a *Vanilla theme* as well which is most likely the best starting point if you want to make a fully customer specific theme.

#### Custom [Planty theme]

I didn't find anything shop like though, so I explored the **Custom Theme** option and searched the web for JAMstack themes.
I found the [Planty theme] by [SnipCart]. The theme looks nice and is ready for getting integrated with a JavaScript based Shopping Cart. In the ReadMe of the repository  is a shiny [Create with StackBit] button which creates a new project in [StackBit] with [Planty theme] already set as the custom theme. Here you also can clear this theme-URL and add your own repository-URL or paste the StackBit sample repo if you just want to explore how to make custom themes.  

#### Site Generator

In the next step you have to choose your site generator. Currently you have the options of [Jekyll], [Hugo] and [Gatsby], while more options like VuePress and Hexo are already announced. I've choosen [Jekyll], I like that it also can run with [GitHub Pages] and it is the one I have the most experience with.

**Continue to CMS**

#### CMS

Here we can currently choose between 6 Options: [Forestry], [Netlify CMS], **Contentful**, **DatoCMS**, **Sanity** or **No CMS**.
My [Planty theme] supports [Forestry] and [Netlify CMS] but since I actually don't know either, I want to test them out first and choose **No CMS** for now. Anyway, since I try to understand how the content flow actually works I figure its a good option to work without it first and add it manually later on.

#### Repository

Currently the **repository** with the website data has to be on [GitHub], GitLab and Bitbucket Integrations are announced though. Since this would be my first choice anyway I'm good with that and move on to Deployment.

#### Deployment

Deployments are right now just done with [Netlify]. I just created a free account with my [GitHub] login, authorized it and seem to be good to go. [GitHub Pages] and **GitLab Pages** are announced but for now we'll see how well [Netlify] does the job.

#### Connect Accounts

First of all I have to enter a name for the project and I call it **Rasta-Herb-Teas** and then connect it to my [GitHub] account. A few clicks later everything seems to be alright. [StackBit] will now create a _public_ repository with the name **rasta-herb-teas** for my user.

#### Create project

I see a message that my site is currently deploying and less then 2 Minutes later	I got the notification of success. My site is now live available at `https://rasta-herb-teas-BUILD_ID.netlify.com/`, this link can be shared.

When I follow the link I see indeed a working site build with my template, plus a [StackBit] management overlay that allows me to rebuild from here or go directly to the [Netlify] project or [GitHub] repository. That's neat!


### Conclusion

The actual creation process of bootstrapping a working website with a selected theme and dummy content takes indeed just a few minutes and can be done even from a mobile phone without a problem. After all it's just choose and click, the only typing are your password and project name.

For the very first project it took me clearly longer since I had to register and authorize the components. I spend by far the most time choosing a template but it felt self-explanatory all the time. Until now [StackBit] gets a clear thumbs up, it did what it promised and looked good while doing it. 

You can spin up a fresh professional prototype which is online available while talking with a customer. This allows you to get into the specific details in the very first meeting and is the easiest and fastest bootstrapping I've seen so far. 

### Whats next?

This article just aimed to outline the project and tools. In the follow up I want to apply a branding and work with the products, so it already get the looks and feels of a real shop. I strive to find a strategy how to deal with multilingual contents and try to figure out which CMS best fits my needs.

Stay tuned!


