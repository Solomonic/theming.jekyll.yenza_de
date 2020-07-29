---
layout: post
title: High Performance AMP Blog with Jekyll - Part 4
date:   2020-07-29  13:00:00 +0700
author: Jens Krause

categories: education software-development
tags: internet jekyll AMP TravisCI

nav_title: Automated Testing
series: jekyll-travis-amp

seo_description: Today we setup Jekyll output testing with Travis CI. We want to ensure that the generated html-code is correct to catch a broken website before it goes online.

lightbox-image: true

---

We want a professional setup, so to achieve additional security to ensure that we are not deploying a broken website we want our output tested. One easy way is to setup an automated test that parses
the html of our generated website and checks for syntax errors as not closed html-tags and broken links. This is a kind of E2E test, which can be done with very few lines of code.

<!--more-->

## The Basics - what are we talking about today?

### The Travis CI lifecycle

A Travis CI build runs certain steps when it executes the build. We can hook into each step and define custom actions to execute within each step.
We are already using `install`, `script`, and `deploy` step in our `.tavis.yml` and you can find a full list in the [Job Lifecycle Docs](https://docs.travis-ci.com/user/job-lifecycle/)

```
# .travis.yml
...
install:
- bundle install
script:
- JEKYLL_ENV="production" bundle exec jekyll build
deploy:
  provider: script
  script: bash script/deploy.sh
...
```

### HTML Proofer

[HTML Proofer](https://github.com/gjtorikian/html-proofer) is a Gem that checks your resulting site to ensure all links and images exist and that we didn't forget to close a HTML tag in a template.
We'll run it after the jekyll build was done on our `docs` folder as an aditional test in the `script` step, so we can gain confidence that current changes don't break the website and we are one step closer to **C**ontinuous **D**elivery

## Install the plugin

We add `gem 'html-proofer'` in our `Gemfile`

```
# Gemfile
...
group :jekyll_plugins do
  gem 'html-proofer'
  gem 'jekyll_picture_tag'
end
```

and install it with `bundle install`

```bash
development/websites/my-new-website
▶ bundle install
...
Using html-proofer 3.15.3
...
Bundle complete! 8 Gemfile dependencies, 45 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

## Run the test locally

```bash
development/websites/my-new-website
▶ bundle exec htmlproofer docs
Running ["ImageCheck", "LinkCheck", "ScriptCheck"] on ["./docs"] on *.html... 


Checking 12 external links...
Ran on 4 files!


- ./docs/404.html
  *  External link http://localhost:4000/404.html failed: 404 No error
- ./docs/index.html
  *  image /generated/flag-775-e90e07ca7.png does not have an alt attribute (line 36)
- ./docs/jekyll/update/2020/07/22/welcome-to-jekyll.html
  *  External link http://localhost:4000/jekyll/update/2020/07/22/welcome-to-jekyll.html failed: 404 No error
htmlproofer 3.15.3 | Error:  HTML-Proofer found 3 failures!
```

We see that it finds 3 errors, 2 of them refer to an non existing external link and one to a missing `alt` tag for our flag image. We are ignoring the external links for a second and fix the misssing `alt` tag first.

### Provide an alt-tag for Jekyll Picture Tag

In our index.markdown we add the `--alt` parameter to create the missing attribute

```
# index.markdown
...
{%raw%}{% picture flag.png --alt "This is a flag for demo purpose" %}{%endraw%}
...
```
### Rebuild and check linking
```bash
development/websites/my-new-website
▶ bundle exec jekyll build
...

development/websites/my-new-website
▶ bundler exec htmlproofer docs
Running ["ImageCheck", "LinkCheck", "ScriptCheck"] on ["docs"] on *.html... 


Checking 12 external links...
Ran on 4 files!


- docs/404.html
  *  internally linking to /my-new-website/, which does not exist (line 21)
     <a class="site-title" rel="author" href="/my-new-website/">Your awesome title</a>
  *  internally linking to /my-new-website/about/, which does not exist (line 31)
     <a class="page-link" href="/my-new-website/about/">About</a>
  *  internally linking to /my-new-website/assets/main.css, which does not exist (line 18)
     <link rel="stylesheet" href="/my-new-website/assets/main.css">
- docs/about/index.html
  *  internally linking to /my-new-website/, which does not exist (line 21)
     <a class="site-title" rel="author" href="/my-new-website/">Your awesome title</a>
  *  internally linking to /my-new-website/about/, which does not exist (line 31)
     <a class="page-link" href="/my-new-website/about/">About</a>
  *  internally linking to /my-new-website/assets/main.css, which does not exist (line 18)
     <link rel="stylesheet" href="/my-new-website/assets/main.css">
- docs/index.html
  *  internally linking to /my-new-website/, which does not exist (line 21)
     <a class="site-title" rel="author" href="/my-new-website/">Your awesome title</a>
  *  internally linking to /my-new-website/about/, which does not exist (line 31)
     <a class="page-link" href="/my-new-website/about/">About</a>
  *  internally linking to /my-new-website/assets/main.css, which does not exist (line 18)
     <link rel="stylesheet" href="/my-new-website/assets/main.css">
  *  internally linking to /my-new-website/feed.xml, which does not exist (line 46)
     <a href="/my-new-website/feed.xml">via RSS</a>
  *  internally linking to /my-new-website/jekyll/update/2020/07/22/welcome-to-jekyll.html, which does not exist (line 41)
     <a class="post-link" href="/my-new-website/jekyll/update/2020/07/22/welcome-to-jekyll.html">
            Welcome to Jekyll!
          </a>
- docs/jekyll/update/2020/07/22/welcome-to-jekyll.html
  *  internally linking to /my-new-website/, which does not exist (line 23)
     <a class="site-title" rel="author" href="/my-new-website/">Your awesome title</a>
  *  internally linking to /my-new-website/about/, which does not exist (line 33)
     <a class="page-link" href="/my-new-website/about/">About</a>
  *  internally linking to /my-new-website/assets/main.css, which does not exist (line 20)
     <link rel="stylesheet" href="/my-new-website/assets/main.css">
  *  internally linking to /my-new-website/jekyll/update/2020/07/22/welcome-to-jekyll.html, which does not exist (line 67)
     <a class="u-url" href="/my-new-website/jekyll/update/2020/07/22/welcome-to-jekyll.html" hidden=""></a>
htmlproofer 3.15.3 | Error:  HTML-Proofer found 15 failures!
```
We see that the htmlproofer fails because it expects all files to be in our `baseurl` subdirectory `my-new-website`. This is exactly the place it 
lives in our live site, so we make it happy by moving everything into that subfolder and run it again.

```bash 
development/websites/my-new-website
▶ mv docs docs2 && mkdir docs && mv docs2 docs/my-new-website

development/websites/my-new-website
▶ bundler exec htmlproofer docs
Running ["ImageCheck", "LinkCheck", "ScriptCheck"] on ["docs"] on *.html... 


Checking 12 external links...
Ran on 4 files!


HTML-Proofer finished successfully
```

That looks good.

## Let's setup the test in the Travis CI build

We add the HTML Proofer call to our `.travis.yml` with the lesson learned that we also need to create the subdirectory in the docs folder. Afterwards we cleaning up and remove the modified docs folder to be clear for a deploy.
```
# .travis.yml
...
script:
- JEKYLL_ENV="production" bundle exec jekyll build
- mv docs docs2 && mkdir docs && mv docs2 docs/my-new-website
- bundle exec htmlproofer docs
- rm -rf docs
```

To speed up the installation of HTML-Proofer we also set the global variable `NOKOGIRI_USE_SYSTEM_LIBRARIES=true` and adding the appropriate addon for fetching with [libcurl](https://packages.debian.org/jessie/libcurl4-openssl-dev)

```
# .travis.yml
...
env:
  global:
  - NOKOGIRI_USE_SYSTEM_LIBRARIES=true
  - secure: fpXV7C9QagH87UQLu...
addons:
  apt:
    packages:
    - libcurl4-openssl-dev
```

### The updated `.travis.yml` file

After those changes your `.travis.yml` should looks similar to:

```
language: ruby
rvm:
- 2.6.3
dist: trusty
sudo: false
cache: bundler
notifications:
  email: false
install:
- bundle install

script:
- JEKYLL_ENV="production" bundle exec jekyll build
- mv docs docs2 && mkdir docs && mv docs2 docs/my-new-website
- bundle exec htmlproofer docs
- rm -rf docs

deploy:
  provider: script
  script: bash script/deploy.sh
  skip_cleanup: true
  on:
    tags: true
    branch: staging
branches:
  only:
  - staging
  - "/\\d+\\.\\d+(\\.\\d+)?(-\\S*)?$/"

env:
  global:
    - NOKOGIRI_USE_SYSTEM_LIBRARIES=true # speeds up installation of html-proofer
    - secure: fpXV7C9QagH87UQLu...
addons:
  apt:
    packages:
    - libcurl4-openssl-dev
```

## Let's run the build

We are adding our changes to git and push to start the build

```bash
development/websites/my-new-website
▶ git status
On branch staging
Your branch is up to date with 'origin/staging'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   .travis.yml
	modified:   Gemfile
	modified:   index.markdown

no changes added to commit (use "git add" and/or "git commit -a")

▶ git add . && git commit -m"setup html proofer" && git push
```

Now we head over to this [Travis CI](https://travis-ci.org/) build and have a look what happens
{% include amp_image.html url="jekyll-amp/travis-test-with-html-proofer.png" size="cover" alt="Travis CI build with HTML Proofer" %}

Great, that worked well.

## Conclusion

We setup an automated test that ensures the validity of our output with **HTML Proofer**. If any issue is found, the build will fail and we don't push
broken html to our website. 