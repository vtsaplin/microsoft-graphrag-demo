#!/bin/bash

# Script to automate setting up venv and installing dependencies

# Step 1: Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Step 2: Activate the environment
echo "Activating virtual environment..."
source venv/bin/activate

# Step 3: Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Step 4: Install required packages from requirements.txt
if [ -f requirements.txt ]; then
    echo "Installing packages from requirements.txt..."
    pip install -r requirements.txt
else
    echo "requirements.txt not found. No packages installed."
fi

# Step 5: Install Playwright browsers
echo "Installing Playwright browsers..."
playwright install

# Instructions for the user
echo "Setup complete! Your virtual environment 'venv' is ready and Playwright browsers are installed."
echo "To activate the environment, use: source venv/bin/activate"
