#!/bin/bash

# Define the path to the virtual environment
VENV_PATH="venv"

# Define the root directory of the index
INDEX_ROOT="./ragtest"

# Define the query command with required arguments
QUERY_COMMAND="python -m graphrag.query --root $INDEX_ROOT --method global"

# Check if a query string parameter is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <query_string>"
    exit 1
fi

# Get the query string from the command-line argument
QUERY_STRING="$1"

# Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_PATH/bin/activate"

# Check if the activation was successful
if [ $? -ne 0 ]; then
    echo "Failed to activate virtual environment."
    exit 1
fi

# Run the query command with the query string
echo "Running query command with query: $QUERY_STRING"
$QUERY_COMMAND "$QUERY_STRING"

# Check if the query command was successful
if [ $? -eq 0 ]; then
    echo "Query executed successfully: $QUERY_STRING"
else
    echo "Query execution failed: $QUERY_STRING"
    exit 1
fi

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate
