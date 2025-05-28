# Development Tools

This directory contains all development tools, build scripts, and configuration files.

## Structure

```
tools/
├── docker/                 # Docker configuration
│   ├── Dockerfile         # Main Docker image definition
│   └── docker-compose.yml # Docker Compose services
├── scripts/               # Build and utility scripts
│   ├── Makefile          # Build automation
│   └── setup.sh          # Development environment setup
└── requirements/          # Dependency management
    └── requirements.txt   # Python package requirements
```

## Tool Categories

### Docker (`/docker/`)

**Files:**
- `Dockerfile` - Multi-stage Docker build for documentation
- `docker-compose.yml` - Service definitions and development environment

**Usage:**
```bash
# Build and serve documentation
docker-compose up docs_service

# Development with live reload
docker-compose --profile dev up docs_dev
```

### Scripts (`/scripts/`)

**Makefile** - Build automation and common tasks:
```bash
make help           # Show available commands
make build          # Build Docker image
make serve          # Serve documentation
make dev            # Start development server
make clean          # Clean build artifacts
```

**setup.sh** - Development environment setup:
```bash
./setup.sh          # Set up Python environment and dependencies
```

### Requirements (`/requirements/`)

**requirements.txt** - Python dependencies for Sphinx documentation:
- Sphinx and extensions
- Theme and plugins
- Development tools

## Quick Start

### First Time Setup
```bash
# From repository root
chmod +x tools/scripts/setup.sh
./tools/scripts/setup.sh
```

### Daily Development
```bash
# Using Make (from repository root)
make serve          # Quick documentation server

# Using Docker directly
cd tools/docker
docker-compose up docs_service
```

### Available Commands

| Command | Description |
|---------|-------------|
| `make help` | Show all available commands |
| `make build` | Build Docker images |
| `make serve` | Serve documentation using Docker |
| `make dev` | Start development server with live reload |
| `make clean` | Clean build artifacts |
| `make docs` | Build documentation locally |
| `make install` | Install Python dependencies locally |

## Development Workflow

1. **Setup Environment**: Run `./tools/scripts/setup.sh`
2. **Make Changes**: Edit source files
3. **Test Locally**: Use `make dev` for live reload
4. **Build**: Use `make build` to create production images
5. **Deploy**: Use `make serve` for final testing

## Tool Requirements

- **Docker** and **Docker Compose** (recommended)
- **Python 3.8+** (for local development)
- **Make** (for build automation)

## Customization

### Adding New Scripts
1. Place scripts in `/tools/scripts/`
2. Make them executable: `chmod +x script_name.sh`
3. Add to Makefile if appropriate
4. Document in this README

### Modifying Docker Setup
1. Edit `Dockerfile` for image changes
2. Edit `docker-compose.yml` for service changes
3. Test changes: `docker-compose build --no-cache`
4. Update documentation

### Managing Dependencies
1. Edit `requirements.txt` for Python packages
2. Test locally: `pip install -r tools/requirements/requirements.txt`
3. Test in Docker: `docker-compose build docs_service`
4. Update version pins as needed
