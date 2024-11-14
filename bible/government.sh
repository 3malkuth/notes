#!/bin/bash

WORD_DOC="government.docx"

#rm $WORD_DOC
echo "# Government" >> 0000_gov.md

find . -name "*gov*.md" | xargs pandoc -s -o $WORD_DOC

rm 0000_gov.md
libreoffice $WORD_DOC
rm $WORD_DOC
