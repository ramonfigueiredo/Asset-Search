#!/bin/bash

# Directory containing the .HEIC images
input_directory="/Users/ramon/Downloads/test_images_sim_search/water"
output_directory="/Users/ramon/Downloads/test_images_sim_search/water/png"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop through all .HEIC files in the input directory
for input_image in "$input_directory"/*.HEIC; do
  # Get the base name of the file (without extension)
  base_name=$(basename "$input_image" .HEIC)
  # Define the output image path
  output_image="$output_directory/$base_name.png"
  # Convert the image to .png format
  sips -s format png "$input_image" --out "$output_image"
done

echo "Conversion complete."