#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
bundle exec htmlproof ./_site --disable-external --only-4xx --allow-hash-href --check-html --directory-index-file "index.html"