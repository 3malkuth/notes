#!/bin/bash

asciidoctor-pdf -a pdf-theme=theme.yml \
	-a pdf-fontsdir=../assets/fonts \
	-a allow-uri-read=true \
	-a toc 0_main.adoc \
	-r asciidoctor-diagram \
	-o adoc_diagrams.pdf

