#!/bin/bash
# https://asciidoc.org/faq.html#_can_you_create_odf_and_pdf_files_using_libreoffice
asciidoc -a icons -a numbered -a disable-javascript $1
lowriter --invisible --convert-to odt "${1%.*}.html"
