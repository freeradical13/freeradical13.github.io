#!/bin/sh
# usage: push.sh "Some commit message"

git commit -a -m "${@}" && \
  git push
