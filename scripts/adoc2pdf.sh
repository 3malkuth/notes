#!/bin/bash
# https://asciidoc.org/faq.html#_can_you_create_odf_and_pdf_files_using_libreoffice
asciidoc -a icons -a numbered -a disable-javascript article.adoc
lowriter --invisible --convert-to odt article.html
lowriter --invisible --convert-to pdf article.odt
