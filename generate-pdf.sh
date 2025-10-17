#!/bin/bash

# Script for generating PDF from HTML resume
# Requires wkhtmltopdf installation

echo "Generating PDF resume..."

# Check for wkhtmltopdf
if ! command -v wkhtmltopdf &> /dev/null; then
    echo "wkhtmltopdf not found. Installing..."
    
    # For Ubuntu/Debian
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y wkhtmltopdf
    # For macOS
    elif command -v brew &> /dev/null; then
        brew install wkhtmltopdf
    else
        echo "Please install wkhtmltopdf manually:"
        echo "Ubuntu/Debian: sudo apt-get install wkhtmltopdf"
        echo "macOS: brew install wkhtmltopdf"
        echo "Windows: download from https://wkhtmltopdf.org/downloads.html"
        exit 1
    fi
fi

# Generate PDF from compact version
wkhtmltopdf \
    --page-size A4 \
    --margin-top 10mm \
    --margin-right 10mm \
    --margin-bottom 10mm \
    --margin-left 10mm \
    --encoding UTF-8 \
    --print-media-type \
    --enable-local-file-access \
    --disable-smart-shrinking \
    index-pdf.html \
    Aleksandr_Kuznetsov_CV.pdf

if [ $? -eq 0 ]; then
    echo "PDF successfully created: Aleksandr_Kuznetsov_CV.pdf"
else
    echo "Error creating PDF"
    exit 1
fi
