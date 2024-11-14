#!/bin/bash

WORD_DOC="faith_and_trust.docx"

#rm $WORD_DOC
echo "# Faith & Trust" >> 0000_faith.md

find . -name "*faith*.md" | xargs pandoc -s -o $WORD_DOC

rm 0000_faith.md
libreoffice $WORD_DOC
rm $WORD_DOC
