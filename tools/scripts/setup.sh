#!/bin/bash

# Pine Script V6 Master Repository - Development Setup Script
# This script sets up the development environment for the repository

set -e  # Exit on any error

echo "🌲 Pine Script V6 Master Repository - Development Setup"
echo "=================================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

# Check Python version
python_version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
required_version="3.8"

if [ "$(printf '%s\n' "$required_version" "$python_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo "❌ Python $python_version is installed, but Python $required_version or higher is required."
    exit 1
fi

echo "✅ Python $python_version is installed"

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "⚠️  Docker is not installed. Some features will not be available."
    echo "   Please install Docker for full functionality."
else
    echo "✅ Docker is installed"
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "⚠️  Docker Compose is not installed. Some features will not be available."
else
    echo "✅ Docker Compose is installed"
fi

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "📦 Creating Python virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "📈 Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📚 Installing Python dependencies..."
pip install -r requirements.txt

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Activate the virtual environment: source venv/bin/activate"
echo "2. Build documentation: make docs"
echo "3. Serve documentation: make serve-local"
echo "4. Or use Docker: make serve"
echo ""
echo "For development with live reload:"
echo "   make dev"
echo ""
echo "For help with available commands:"
echo "   make help"
