#!/bin/bash

WORD_DOC="war.docx"

#rm $WORD_DOC
echo "# War" >> 0000_war.md

find . -name "*war*.md" | xargs pandoc -s -o title.md $WORD_DOC

rm 0000_war.md
libreoffice $WORD_DOC
rm $WORD_DOC
