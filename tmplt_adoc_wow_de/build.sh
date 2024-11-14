#!/bin/bash

asciidoctor-pdf -a pdf-theme=../config/theme.yml \
	-a pdf-fontsdir=../assets/fonts/msttcorefonts \
	-a toc 0_main.adoc \
	-a allow-uri-read=true \
	-a front_page_image="https://unsplash.com/photos/bYh_d5zDEAc/download?w=1920" \
  -a back_page_image="https://unsplash.com/photos/bYh_d5zDEAc/download?w=1920" \
	-o wow_doc_de.pdf

