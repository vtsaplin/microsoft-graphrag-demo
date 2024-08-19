#!/bin/bash

URL="https://example.com"
MAX_PAGES=50
OUTPUT_FOLDER="docs"

python3 scrape_site.py "$URL" "$MAX_PAGES" --output_folder "$OUTPUT_FOLDER"
