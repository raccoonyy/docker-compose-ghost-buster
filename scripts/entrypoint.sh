#!/usr/bin/env bash
set -e
cmd="$@"

VIRTUAL_HOST=$GITHUB_ID.github.io
PUBLIC_URL=$GITHUB_ID.github.io
GIT_REPO=git@github.com:$GITHUB_ID/$GITHUB_ID.github.com.git
export VIRTUAL_HOST
export PUBLIC_URL
export GIT_REPO

>&2 echo "For GENERATE & PREVIEW: docker-compose run buster fab preview"
>&2 echo "For DEPLOY: docker-compose run buster fab deploy"

exec $cmd
