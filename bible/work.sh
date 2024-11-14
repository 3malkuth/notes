#!/bin/bash

WORD_DOC="work.docx"

#rm $WORD_DOC
echo "# Work" >> 0000_work.md

find . -name "*work*.md" | xargs pandoc -s -o $WORD_DOC

rm 0000_work.md
libreoffice $WORD_DOC
rm $WORD_DOC
