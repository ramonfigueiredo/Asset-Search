# backend/config.py
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE_URI = os.path.join(BASE_DIR, 'asset_search.db')

# This directory should contain the datasets, one by folder
ROOT_IMAGE_DIRECTORY = "/Users/ramon/Downloads/test_images_sim_search"  # Update this path as needed
