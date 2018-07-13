#!/bin/sh

grep '"sinatra"' Gemfile >/dev/null 2>/dev/null || (echo "No sinatra found in a Gemfile" && exit 1)

docker build -t node_sinatra . && \
docker run -p 80:80 -p 4567:4567 -d node_sinatra > .id && \
docker logs `cat .id`
