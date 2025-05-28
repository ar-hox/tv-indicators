#!/bin/bash

# Documentation Build and Sync Script
# This script ensures documentation files are properly synchronized and built

set -e

echo "Pine Script V6 Documentation Build Script"
echo "========================================="

# Define directories
ROOT_DIR="$(pwd)"
DOCS_SOURCE_DIR="$ROOT_DIR/docs/source"

echo "Synchronizing documentation files..."

# Copy main documentation files to docs/source
cp "$ROOT_DIR/README.md" "$DOCS_SOURCE_DIR/"
cp "$ROOT_DIR/CONTRIBUTING.md" "$DOCS_SOURCE_DIR/"
cp "$ROOT_DIR/coding_guidelines.md" "$DOCS_SOURCE_DIR/"
cp "$ROOT_DIR/backtesting_and_optimization.md" "$DOCS_SOURCE_DIR/"
cp "$ROOT_DIR/llm_agent_integration.md" "$DOCS_SOURCE_DIR/"

# Create directories for Indicators and Strategies if they don't exist
mkdir -p "$DOCS_SOURCE_DIR/Indicators"
mkdir -p "$DOCS_SOURCE_DIR/Strategies"

# Copy directory README files
if [ -f "$ROOT_DIR/Indicators/README.md" ]; then
    cp "$ROOT_DIR/Indicators/README.md" "$DOCS_SOURCE_DIR/Indicators/"
fi

if [ -f "$ROOT_DIR/Strategies/README.md" ]; then
    cp "$ROOT_DIR/Strategies/README.md" "$DOCS_SOURCE_DIR/Strategies/"
fi

echo "Building documentation..."

# Change to docs directory and build
cd "$ROOT_DIR/docs"
make clean
make html

echo "Documentation build completed successfully!"
echo "Generated files are in: $ROOT_DIR/docs/build/html"
echo "To serve locally: python -m http.server 8000 --directory docs/build/html"