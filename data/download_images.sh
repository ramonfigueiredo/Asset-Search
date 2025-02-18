#!/bin/bash

# URL of the zip file containing images
ZIP_URL="https://drive.google.com/uc?id=1VS9CQgCZXbXdEystdpYRf3c9GeSSRQ33"

# Directory to extract images to
EXTRACT_DIR="."

# Download the zip file using gdown
echo "Downloading $ZIP_URL..."
gdown "$ZIP_URL" -O "$EXTRACT_DIR/images.zip"

# Extract the zip file
echo "Extracting images"
unzip "$EXTRACT_DIR/images.zip" -d "$EXTRACT_DIR"

# Remove the zip file
echo "Removing the zip file..."
rm "$EXTRACT_DIR/images.zip"
rm -r __MACOSX

echo "Done."