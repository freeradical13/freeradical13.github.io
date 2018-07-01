#!/bin/sh
pandoc -f markdown math.md -s -o math.html && \
  xdg-open math.html
