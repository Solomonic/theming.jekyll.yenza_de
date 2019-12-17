# Jekyll Website for rasta.online [![Build Status](https://travis-ci.org/Solomonic/theming.rasta_online.svg?branch=master)](https://travis-ci.org/Solomonic/theming.rasta_online)

This is the official reposotory for [rasta.online](http://rasta.online) and contains all contents to rebuild an offline version on your localhost.

You will get a website containing the following structure

- [the start page](http://rasta.online/index.html 'Visit Rasta.Online startpage ...')
- [Education section](http://rasta.online/ 'Browse all educational articles ...')
- [About section](http://rasta.online/about/ 'Find out more about the project ...')
- [Contact](http://rasta.online 'Get in contact with the community ...')

## License

[_CC BY 3.0_ license](http://creativecommons.org/licenses/by/3.0/).

## Development

Current preview [http://solomonic.github.io/theming.rasta_online](http://solomonic.github.io/theming.rasta_online)

If you want to run a local copy of the website please install `jekyll` and then:

```sh
$ git clone git@github.com/Solomonic/theming.rasta_online.git
$ cd theming.rasta_online
$ jekyll serve --baseurl ""
# if jekyll is installed via bundler just run
$ bundle exec jekyll serve --baseurl ""
# => The site will now be viewable in your browser at http://localhost:4000
```

We want to override the `baseurl` default setting, otherwise we'll endup with an root error on the local server.

If you want to work with jekyll repeatedly I highly recommend to add a `alias` to your `~/.bashrc` or `~/.bash_profile` to grant quick access

```
	# installed via bundler but accessable via normal "jekyll" command
	alias jekyll='bundle exec jekyll'
	# shorthand command "serve" for local testing 
	alias serve='bundle exec jekyll serve --baseurl ""'
```

The entire site uses [Jekyll](http://jekyllrb.com), so if you want to know how all the layouts, includes and other miscellany works, check out the [Jekyll Wiki](https://github.com/mojombo/jekyll/wiki).

## Materials Format

The majority of the site materials are written in [Markdown](http://whatismarkdown.com), a [lightweight markup language](http://en.wikipedia.org/wiki/Lightweight_markup_language) supported in the GitHub web application user interface. There is a syntax guide to the original [Markdown format](http://daringfireball.net/projects/markdown/syntax) and also [GitHub Flavored Markdown](http://github.github.com/github-flavored-markdown/).
