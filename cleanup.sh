#!/bin/bash

# Cleanup script for the GraphRAG project

# Define the paths to cleanup
DOCUMENTS_FOLDER="./docs"
RAG_FOLDER="./ragtest/input"

# Check if the documents folder exists
if [ -d "$DOCUMENTS_FOLDER" ]; then
    echo "Removing documents folder..."
    rm -r "$DOCUMENTS_FOLDER"
fi

# Check if the RAG folder exists
if [ -d "$RAG_FOLDER" ]; then
    echo "Removing RAG folder..."
    rm -r "$RAG_FOLDER"
fi

echo "Cleanup complete."
