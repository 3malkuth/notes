#!/bin/bash

WORD_DOC="friend.docx"

#rm $WORD_DOC
echo "# Friendship" >> 0000_friend.md

find . -name "*friend*.md" | xargs pandoc -s -o $WORD_DOC

rm 0000_friend.md
libreoffice $WORD_DOC
rm $WORD_DOC
