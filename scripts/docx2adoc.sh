#!/bin/bash

pandoc --from=docx --to=asciidoc --wrap=none --atx-headers \
  --extract-media=extracted-media $1 > $2
