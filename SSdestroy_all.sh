#!/bin/sh

containers=`docker ps -q | grep -v ^$` && \
stopped=`docker stop $containers` && \
docker rm $stopped
