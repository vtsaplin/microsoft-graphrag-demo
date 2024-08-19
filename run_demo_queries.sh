#!/bin/bash

# Define the path to the run_query.sh script
RUN_QUERY_SCRIPT="./run_query.sh"

# List of demo queries based on the example queries from the GraphRAG guide
DEMO_QUERIES=(
    "What are these documents about?"
    "What is Bitdefender?"
    "What are the products offered by Bitdefender?"
    "What are the pricing options for Bitdefender products?"
    "What are the key features of Bitdefender Antivirus Plus?"
)

# Check if the run_query.sh script exists and is executable
if [ ! -x "$RUN_QUERY_SCRIPT" ]; then
    echo "Error: $RUN_QUERY_SCRIPT does not exist or is not executable."
    exit 1
fi

# Loop through each query and run it
for QUERY in "${DEMO_QUERIES[@]}"; do
    echo "Running demo query: $QUERY"
    $RUN_QUERY_SCRIPT "$QUERY"

    # Check if the query command was successful
    if [ $? -eq 0 ]; then
        echo "Query executed successfully: $QUERY"
    else
        echo "Query execution failed: $QUERY"
    fi

    # Optional: add a delay between queries
    sleep 2
done
