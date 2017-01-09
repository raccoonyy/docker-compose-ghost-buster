#!/usr/bin/env bash

cd /deploy/static
git init
git remote add origin $GIT_REPO
git config --global user.name $LOGNAME
git config --global user.email $EMAIL
git pull origin master

cd /deploy
wget -O ./static/rss/index.rss http://localhost:2368/rss/
buster generate --github-id=$GITHUB_ID
buster preview
