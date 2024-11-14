#!/bin/bash

WORD_DOC="family.docx"

#rm $WORD_DOC
echo "# Family" >> 0000_family.md

find . -name "*family*.md" | xargs pandoc -s -o $WORD_DOC

rm 0000_family.md
libreoffice $WORD_DOC
rm $WORD_DOC
