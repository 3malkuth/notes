#!/bin/bash


FILES="introduction.md \
       content.md
       conclusion.md"

cat $FILES | grep -v "[[_TOC_]]" | pandoc --pdf-engine=xelatex -o output.pdf --template=theme.tex --metadata-file=metadata.yaml

