#!/bin/bash
# Development installation script

# Ensure pip and build tools are up to date
pip install --upgrade pip setuptools wheel build

# Build the package
python -m build

# Install in development mode
pip install -e .