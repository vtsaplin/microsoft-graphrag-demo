#!/bin/bash

# Define constants for source and destination folders
SOURCE_FOLDER="./docs"

# Define the path to the virtual environment
VENV_PATH="venv"

# Check if the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Source folder does not exist: $SOURCE_FOLDER"
    exit 1
fi

# Check if the virtual environment exists
if [ ! -d "$VENV_PATH" ]; then
    echo "Virtual environment does not exist at: $VENV_PATH"
    exit 1
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_PATH/bin/activate"

# Run the index command directly
echo "Running index command..."
python -m graphrag.index --root ./ragtest

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate
