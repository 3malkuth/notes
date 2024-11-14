#!/bin/bash

# CONSTANTS
DIR=build
IMAGES=~/code/tri/kgdmData/books/sojourn1/images
FONTS=~/code/tri/kgdmData/fonts
MASTER="master.adoc"


# Check if "tmp_build" dir exists, if so, delete
if [ -d "$DIR" ]; then
  rm -r $DIR
fi

# Create the build dir
mkdir $DIR

# Check if link to images folder exists, if not, create link
if [ ! -d images ]; then
  ln -s $IMAGES images
fi

# Copy all files to the build dir
cp -r images/* $DIR
cp text/* $DIR
cp conf/* $DIR

cd $DIR
# Check if link to fonts folder exists, if not, create link
if [ ! -d fonts ]; then
  ln -s $FONTS fonts
fi

# Generate HTML
asciidoctor --out-file=booklet.html $MASTER

# Generate PDF
#asciidoctor-pdf -a pdfbuild -r asciidoctor-mathematical master.adoc
asciidoctor-pdf -a pdfbuild -a pdf-theme=pdf.yml -a pdf-fontsdir="fonts;GEM_FONTS_DIR" master.adoc
mv master.pdf book.pdf

# Generate EPUB
# TODO - PS you can use calibre ebook-converter
# asciidoctor-epub3 -a ebook-format=kf8 master.adoc
#asciidoctor-epub3 -a epub3-stylesdir= master.adoc
#asciidoctor-epub3 master.adoc
#mv master.epub book.epub

# Create Kindle version
# TODO
# /Applications/KindleGen_Mac_i386_v2/kindlegen booklet.epub

# Clean up, so that only the product files remain
rm *.png
rm *.jpg
rm *.conf
rm *.adoc
rm *.yml
rm *.css
#rm images
rm fonts
