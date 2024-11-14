#!/bin/bash

asciidoctor-pdf -a pdf-theme=../config/theme.yml \
	-a pdf-fontsdir=../assets/fonts/msttcorefonts \
	-a stylesheet=custom_theme.css \
	-a allow-uri-read=true \
	-a toc tmplt_slide_deck.adoc \
	-a front_page_image="https://unsplash.com/photos/bYh_d5zDEAc/download?w=1920" \
  -a back_page_image="https://unsplash.com/photos/bYh_d5zDEAc/download?w=1920" \
	-o tmplt_slide_deck.pdf

