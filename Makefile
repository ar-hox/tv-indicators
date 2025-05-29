.PHONY: help build clean docs serve dev install test lint format check-requirements

# Default target
help:
	@echo "Available targets:"
	@echo "  build           - Build Docker image"
	@echo "  clean           - Clean build artifacts"
	@echo "  docs            - Build documentation locally"
	@echo "  serve           - Serve documentation (Docker)"
	@echo "  dev             - Start development server with live reload"
	@echo "  install         - Install Python dependencies"
	@echo "  test            - Run tests (when implemented)"
	@echo "  lint            - Run linting (when implemented)"
	@echo "  format          - Format code (when implemented)"
	@echo "  check-requirements - Check for outdated dependencies"

# Build Docker image
build:
	docker-compose build docs_service

# Clean build artifacts
clean:
	rm -rf docs/build/
	docker system prune -f
	docker image prune -f

# Build documentation locally (requires local Python environment)
docs:
	sphinx-build -b html docs/source docs/build/html

# Serve documentation using Docker
serve:
	docker-compose up docs_service

# Start development server with live reload
dev:
	docker-compose --profile dev up docs_dev

# Install Python dependencies locally
install:
	pip install -r requirements.txt

# Check for outdated dependencies
check-requirements:
	pip list --outdated

# Quick serve for local development (requires local Python environment)
serve-local:
	python -m http.server 8000 --directory docs/build/html

# Build and serve in one command
up: build serve

# Stop all services
down:
	docker-compose down

# View logs
logs:
	docker-compose logs -f docs_service

# Shell into container
shell:
	docker-compose exec docs_service /bin/bash

# Update documentation and rebuild
update-docs: clean docs

# Validate Sphinx configuration
validate-sphinx:
	sphinx-build -W -b html docs/source docs/build/html
