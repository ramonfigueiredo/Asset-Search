#!/bin/bash

# URL of the zip file containing images
ZIP_URL="https://example.com/path/to/your/images.zip"

# Directory to extract images to
EXTRACT_DIR="."

# Download the zip file
echo "Downloading $ZIP_URL..."
curl -o "$EXTRACT_DIR/images.zip" "$ZIP_URL"

# Extract the zip file
echo "Extracting to $EXTRACT_DIR..."
unzip "$EXTRACT_DIR/images.zip" -d "$EXTRACT_DIR"

# Remove the zip file
echo "Removing the zip file..."
rm "$EXTRACT_DIR/images.zip"

echo "Done."