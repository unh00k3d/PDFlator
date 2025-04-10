#!/bin/bash
# Script to build and upload PDFlator to PyPI

# Clean previous builds
rm -rf build/ dist/ *.egg-info/

# Ensure dependencies are installed
pip install --upgrade pip build twine

# Build the distributions
python -m build

# Upload to PyPI
echo "Uploading to PyPI..."
twine upload dist/*

echo "Done! PDFlator is now available on PyPI."
echo "Users can install it with: pip install pdflator"