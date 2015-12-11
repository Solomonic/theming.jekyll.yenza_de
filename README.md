# Jekyll Website for rasta.online

This is the official reposotory for [rasta.online](http://rasta.online) and contains all contents to rebuild an offline version on your localhost.

You will get a website containing the following structure

- [the start page](http://rasta.online/index.html 'Vistit Rasta.Online's startpage ...')
- [Education section](http://rasta.online/ 'Browse all educational articles ...')
- [About section](http://rasta.online/about/ 'Find out more about the project ...')
- [Contact](http://rasta.online 'Get in contact with the community ...')

## License

[_CC BY 3.0_ license](http://creativecommons.org/licenses/by/3.0/).

## Development

If you want to run a local, offline copy of the website:

```sh
$ git clone git@github.com/Solomonic/theming.rasta_online.git
$ cd theming.rasta_online
$ script/setup
$ script/server
# => The site will now be viewable in your browser at http://localhost:4000
```
If you want to pass arguments into `script/server` like `--watch` to do auto-file regeneration
you can still do so by just passing in the arguments.

The entire site uses [Jekyll](http://jekyllrb.com), so if you want to know how all the layouts, includes and other miscellany works, check out the [Jekyll Wiki](https://github.com/mojombo/jekyll/wiki).

## Materials Format

The majority of the site materials are written in [Markdown](http://whatismarkdown.com), a [lightweight markup language](http://en.wikipedia.org/wiki/Lightweight_markup_language) supported in the GitHub web application user interface. There is a syntax guide to the original [Markdown format](http://daringfireball.net/projects/markdown/syntax) and also [GitHub Flavored Markdown](http://github.github.com/github-flavored-markdown/).