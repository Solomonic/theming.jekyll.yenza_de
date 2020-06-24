#!/usr/bin/env bash

git status
bundle install
JEKYLL_ENV="production" bundle exec jekyll build
git status
git add .
git commit -m"[skip travis] Automated build"
git remote set-url origin https://$ROBOT@github.com/Solomonic/theming.rasta_online.git
git push origin HEAD:master --force