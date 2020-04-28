#!/bin/bash

S3URI=s3://open-spades
GIT_REPO=https://github.com/Samuel-Cavicchi/open-spades-server.git
BASEDIR=$(dirname "$0")

# Just in case we want to keep data
git stash
git fetch
git reset --hard origin/master

aws s3 cp $S3URI/passwords.toml $BASEDIR/passwords.toml
cat $BASEDIR/passwords.toml >> $BASEDIR/config.toml

sh $BASEDIR/start.sh
