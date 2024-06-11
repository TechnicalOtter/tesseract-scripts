#!/bin/bash

# This script will split up an image pdf into multiple ttf files using pdfimages/poppler-utils.
# Ensure poppler-utils is installed.

pdf="$1"
if [ -n "$pdf" ]; then

	echo "Splitting file $pdf into images..."
	directory="$(pwd)/images/"
	echo "Removing existing images directory (if one exists)..."
	rm -rf ./images
	echo "Creating images directory..."
	mkdir ./images

	echo "Splitting images. Please wait..."
	pdfimages -tiff $pdf $directory
	echo "Splitting complete. Results in $directory"
else
	echo "No pdf specified. Please specify a pdf."
fi