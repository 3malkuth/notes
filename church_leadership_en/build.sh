#!/bin/bash

asciidoctor-pdf -a pdf-theme=../config/theme.yml \
	-a pdf-fontsdir=../assets/fonts/msttcorefonts \
	-a allow-uri-read=true \
	-a toc 0_main.adoc \
	-o church_leadership.pdf

