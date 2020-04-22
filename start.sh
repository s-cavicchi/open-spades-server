#!/bin/bash
CONTAINER_NAME=cheeky
docker run \
           --rm \
           -v $PWD:/config \
           -p 32887:32887/udp -p 32886:32886/tcp \
           --name $CONTAINER_NAME \
           piqueserver/piqueserver:master

