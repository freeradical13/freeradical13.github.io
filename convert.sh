#!/bin/sh
echo "<h1>Links</h1><ul>" > links.html
for i in *.md; do
  echo "Converting '${i}' to '$(basename "${i}" .md).html'"
  title="$(head -1 "${i}" | sed 's/^# //g')"
  pandoc -f markdown "${i}" -M "pagetitle=${title}" -s -o "$(basename "${i}" .md).html"
  echo "<li><a href=\"$(basename "${i}" .md).html\">${title}</a></li>" >> links.html
done
echo "</ul>" >> links.html
xdg-open links.html
