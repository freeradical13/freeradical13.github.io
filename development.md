# Development

## Conventions

* Use `<code>[...]</code>` instead of backticks because that allows for HTML formatting such as superscript, subscript, 
italics, etc.

## Convert Markdown to HTML

To convert a Markdown file to HTML, there are a few options:

1. The classic [Markdown.pl](https://daringfireball.net/projects/markdown/): Doesn't handle UTF-8 correctly.
1. [Grip](https://github.com/joeyespo/grip): Doesn't support offline rendering (there's an `offline-renderer` branch 
but that doesn't work).
1. [Pandoc](https://github.com/jgm/pandoc): Works.

Pandoc is the preferred method, although instructions for the others are kept for posterity.

### Pandoc

Pandoc: https://github.com/jgm/pandoc

Install: https://github.com/jgm/pandoc/blob/master/INSTALL.md

Usage:

    pandoc -f markdown index.md -s -o index.html

Automated Linux script:

    ./index.sh

### Markdown.pl

Download Markdown.pl: https://daringfireball.net/projects/markdown/

Usage:

    perldoc Markdown.pl

Run:

    perl Markdown.pl --html4tags index.md > index.html

#### Grip

Install:

    sudo pip install grip

Run:

    grip --export index.md
