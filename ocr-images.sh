#!/bin/bash

# This script will list all files in the images directory and pass htem directly to tesseract.
# The output will always be called "output.pdf"

ls ./images/*.tif | tesseract - output txt pdf