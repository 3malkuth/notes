#!/bin/bash

asciidoctor-pdf -a pdf-theme=theme.yml \
	-a pdf-fontsdir=../../fonts/msttcorefonts \
	-a allow-uri-read=true \
	-a toc 0_main.adoc \
	-o predigten.pdf

