#!/usr/bin/env bash

echo "LOGNAME: ${LOGNAME}"
echo "EMAILL: ${EMAIL}"
git config --global push.default simple
git config --global user.name $LOGNAME
git config --global user.email $EMAIL

cd /deploy
git clone $GIT_REPO static
cd /deploy/static
git branch --track master origin/master

python -m SimpleHTTPServer 1234
