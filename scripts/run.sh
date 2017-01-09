#!/usr/bin/env bash

cd /deploy/static
git init
git remote add origin $GIT_REPO
git config --global user.name $LOGNAME
git config --global user.email $EMAIL
git pull origin master

while :
do
    echo "Press [CTRL+C] to stop.."
    sleep 1000
done
