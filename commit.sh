#!/bin/sh

args="$*"
echo "$args" | grep -q [a-zA-Z0-9] && git add --all && git commit -m "$args" & git push origin master
