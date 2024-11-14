#/bin/bash

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
-sOutputFile=$2 $1
