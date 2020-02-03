#!/bin/sh

SOURCE="src/asciidoc/"
TARGET="target/site"
REVEALJS_DIR="$TARGET/reveal.js"
mkdir -p $TARGET

if test ! -d $REVEALJS_DIR ; then
    wget --directory-prefix=$TARGET https://github.com/highlightjs/highlightjs-mde-languages/releases/download/0.1.0/mde-languages.min.js 
    git clone -b 3.9.2 --depth 1 https://github.com/hakimel/reveal.js.git $REVEALJS_DIR
    cd $REVEALJS_DIR; curl -sL https://gitlab.univ-nantes.fr/bousse-e/stereopticon/raw/master/install-or-update-stereopticon.sh | bash -
    cd - 
fi

bundle exec asciidoctor-revealjs $SOURCE/*.adoc -r asciidoctor-diagram -D $TARGET
rsync -r src/images/ $TARGET/images