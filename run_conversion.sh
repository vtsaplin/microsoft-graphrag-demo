#!/bin/bash

# Define constants for source and destination folders
SOURCE_FOLDER="./docs"
DESTINATION_FOLDER="./ragtest/input"

# Define the path to the virtual environment
VENV_PATH="venv"

# Check if the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Source folder does not exist: $SOURCE_FOLDER"
    exit 1
fi

# Create the destination folder if it does not exist
if [ ! -d "$DESTINATION_FOLDER" ]; then
    echo "Destination folder does not exist. Creating: $DESTINATION_FOLDER"
    mkdir -p "$DESTINATION_FOLDER"
fi

# Check if the virtual environment exists
if [ ! -d "$VENV_PATH" ]; then
    echo "Virtual environment does not exist at: $VENV_PATH"
    exit 1
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_PATH/bin/activate"

# Run the Python script with the provided constants
echo "Running conversion script..."
python convert_docx_to_txt.py "$SOURCE_FOLDER" "$DESTINATION_FOLDER"

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate
