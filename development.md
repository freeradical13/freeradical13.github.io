# Development

## Convert Markdown to HTML Locally

Download Markdown.pl: https://daringfireball.net/projects/markdown/

Usage:

    perldoc Markdown.pl

Run:

    perl Markdown.pl --html4tags index.md > index.html

### Github flavored Markdown

Install:

    sudo pip install grip

Run:

    grip --export index.md

Automated Linux script:

    ./index.sh
