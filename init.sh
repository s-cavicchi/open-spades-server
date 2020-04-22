#!/bin/bash

S3URI=s3://open-spades
GIT_REPO=https://github.com/Samuel-Cavicchi/open-spades-server.git

# Just in case we want to keep data
git stash
git fetch
git reset --hard origin/master

aws s3 cp $S3URI/passwords.toml ./passwords.toml
cat passwords.toml >> config.toml

sh ./start.sh
