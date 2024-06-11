#!/bin/bash

# This script will run both scripts to create an OCR'd PDF.

pdf="$1"
if [ -n "$pdf" ]; then
	./split-pdf.sh $pdf
	./ocr-images.sh
else
	echo "Please specify a PDF first!"
fi