#!/bin/bash

WORD_DOC="genesis.docx"

#rm $WORD_DOC
echo "# Genesis" >> title.md

pandoc -s -o $WORD_DOC title.md introduction.md overview.md history.md government.md

rm title.md
libreoffice $WORD_DOC
rm $WORD_DOC
