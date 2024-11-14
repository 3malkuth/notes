#!/bin/bash

# Check if the required tools are installed
if ! command -v pdftotext &> /dev/null || ! command -v pandoc &> /dev/null; then
    echo "Error: pdftotext and pandoc must be installed."
    exit 1
fi

# Check if the user provided a PDF file as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input.pdf>"
    exit 1
fi

# Input PDF file
input_pdf="$1"

# Output Markdown file (same name as input but with .md extension)
output_md="${input_pdf%.pdf}.md"

# Convert PDF to text
temp_txt=$(mktemp)
pdftotext "$input_pdf" "$temp_txt"

# Convert text to Markdown
pandoc "$temp_txt" -o "$output_md"

# Clean up temporary file
rm "$temp_txt"

echo "Conversion complete: $output_md"

