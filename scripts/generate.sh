#!/usr/bin/env bash

wget -O ./static/rss/index.rss http://ghost:2368/rss/
buster generate --github-id=$GITHUB_ID --domain=http://ghost:2368/
