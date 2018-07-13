#!/bin/sh

echo $* | grep -q [a-zA-Z0-9] && git add --all && git commit -m "$*" & git push origin master
