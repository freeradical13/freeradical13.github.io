#!/bin/sh
pandoc -f markdown index.md -s -o index.html && \
  xdg-open index.html
