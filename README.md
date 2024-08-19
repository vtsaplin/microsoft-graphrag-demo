# Microsoft GraphRAG Demo

## Overview
This project demonstrates the use of Microsoft’s GraphRAG (Graph-based Retrieval-Augmented Generation) implementation. The process includes setting up the environment, scraping web content, converting documents, building an index, running queries, and cleaning up.

## Prerequisites

- **Shell**: A Unix-like environment is recommended (Linux/MacOS).
- **Python**: Ensure Python (preferably Python 3) is installed.

## Setup and Usage

Follow these steps to set up and run the project:

### 1. Initialize the Environment
Run the initial environment setup script:
```bash
./init.sh
```

### 2. Define Environment Variables
Follow the guide [here](https://microsoft.github.io/graphrag/posts/config/env_vars/) to set up the necessary environment variables for Microsoft GraphRAG. Make sure to export these variables in your shell:

### 3. Set Up the Project
Install the required dependencies and perform initial setup:
```bash
./setup.sh
```

This script will run `pip install -r requirements.txt` and handle other environment setup tasks.

### 4. Scrape Website Content to `.docx`
Gather content from the web and store it in `.docx` format:
```bash
./run_scraper.sh
```

### 5. Convert `.docx` Files to Text
Convert the scraped `.docx` files to `.txt` format for further processing:
```bash
./run_conversion.sh
```

### 6. Build the Index
Create an index based on the converted text files for efficient querying:
```bash
./build_index.sh
```

### 7. Run Queries
Run predefined or custom queries against the indexed content:
```bash
./run_demo_queries.sh
```

### 8. Cleanup
Remove temporary files and clean up the environment:
```bash
./cleanup.sh
```
