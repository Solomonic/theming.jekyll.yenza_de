---
layout: post
title: JAM Day 1 - Content Management, Products & Categories
date:   2019-12-16  13:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jam

series: JAM
series-nav-title: Day 1 - Content Management

seo_description: On Day 1 of our JAMstack journey we explore Content management vs. CMS in detail 

image: http://rasta.online/library/images/JAM2019.png

---

 On Day 1 of our JAMstack journey we explore working with **Products** and compare the CMS options **Forestry** and **Netlify CMS** with a bareback setup which skips the CMS altogether.

<!--more-->
[Forestry]: https://forestry.io/ "Static Content CMS"
[Netlify CMS]: https://www.netlifycms.org/ "Static Content CMS"
[StackBit]: https://www.stackbit.com/ "Bundles your JAM Stack"
[Planty theme]: https://github.com/snipcart/stackbit-theme-planty/ "Planty theme on github"

To gather experience on which route to take I decided to spin up 3 vanilla Instances with [StackBit] and the [Planty theme], the first with [Forestry], the second with [Netlify CMS] and the last without CMS, relying on the ability to push into a repo myself.

I set myself a couple of tasks to figure out if i can do the job for me and my requirements or not. The [Planty theme] comes with dummy products and category collections, so we can get our hands dirty immediately.
I want to:
- a) be able to manage all existing content (_editing, deleting, moving, renaming_)
- b) access all files I'll may need, let's say _.sass_ files, _includes_ and images
- c) create a new _Product_ and assign it to a _Category_ , so it will show in the shop
- d) create new _Categories_, assign products and show these products in a new _category collection_ 

### Content Management vs. [Forestry] CMS

[Forestry] seem to be the most popular option, so I started here. After the registration process it was up and running in a few minutes. I logged in and the look and feel of it is nice, surely something you can present to an average customer as suitable UI. The navigation is kept simple and through clicking around you are getting pretty fast a good idea what to find where. For many uses this is indeed a proper solution if your project is in need of web-based UI.

There are drawbacks though, which led me to the conclusion **not** to use it. The first thing I noticed that the response of saving content until deployed could take several minutes. Every time when you save something, a commit goes to your connected repo, a build is queued and finally executed. In the free plan is the queue rather fast filled and that can have a serious effect on your work efficiency. This is by no means a deal breaker for me, but the _Category management_ was. To do tasks _a)-c)_ was easy, then I ran into a wall. 

I was able to create new Categories, but not to assign them to any product. The form fields in the CMS where not updated, even after triggering additional builds to regenerate the cached config files. I was able to come up with a solution which updates the cache of the form fields, but I spend at least an hour figuring out what was going on and come up with a working fix in the build. This issue was rather frustrating and I hoped avoid it by using [Netlify CMS] instead. 

### Content Management vs [Netlify CMS]

[Netlify CMS] was the second option as CMS with my chosen Theme. The UI is less pretty then Forestry but will get the job done and is decent enough. Tasks _a)-c)_ are no problem.

Actually the form fields here allowed you to have access to nested properties, which are not exposed through its competitor. This gives you a greater access and control over your content but comes at the cost of cluttering up the space and ease of use. 

[Netlify CMS] is a no-nonsense approach which seems mostly suited for managing complex content types.

I was very keen to see what happens when I create a new Category and if it is possible to assign it to the products ... nope ... exactly the same issue. To investigate and fix the issue I actually had to pull, edit and push the Repo changes back, working with favorite Editor. 

### Conclusion ... No CMS

There was a moment when I realized that the CMS approach is not the way to go for me. I had to spend more time and energy to fix minor CMS related issues then on solving the tasks of building up any Ecommerce content. A CMS in this context is nothing more then a web-based file editor, which commits into a github repository to save changes. Those commit messages don't hold any information what was changed, so to roll back to any given point in the history you'll need to find the correct commit by looking through all of them.

I have a comfortable Editor setup on my computer and I'm fully able and willing to use github directly and write meaningful commit messages every time I want to push changes. There is nothing I'm not able to do, even more I can do it more comfortable and work faster, since I just rely on my local builds to see changes instead of waiting for my build to be processed.

I'm also used to tag and release certain states of my work, to define stable versions and give easy access to rollback points. This is in my normal workflow and a feature I don't want to miss. I prefer to work with my established developer tools and save the overhead of a CMS at all.

### What is next?

The next article we will have a look at how to customize Products to our needs, using custom currencies and be available in multiple languages.

Stay tuned!


