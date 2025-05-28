# Documentation

This directory contains all project documentation organized for easy navigation and maintenance.

## Structure

```
docs/
├── source/             # Sphinx documentation source
│   ├── conf.py        # Sphinx configuration
│   ├── index.rst      # Main documentation index
│   └── *.rst          # Additional Sphinx files
├── guides/            # User and developer guides
│   ├── coding_guidelines.md
│   ├── backtesting_and_optimization.md
│   ├── llm_agent_integration.md
│   └── CONTRIBUTING.md
├── api/               # API documentation (future)
└── examples/          # Usage examples and tutorials
```

## Documentation Types

### Guides (`/guides/`)

**For Contributors:**
- `CONTRIBUTING.md` - How to contribute to the project
- `coding_guidelines.md` - Pine Script coding standards and best practices

**For Developers:**
- `backtesting_and_optimization.md` - Strategy development and testing
- `llm_agent_integration.md` - AI integration capabilities and usage

### Sphinx Documentation (`/source/`)

Generated HTML documentation available at `http://localhost:8000` when running the Docker container.

### Examples (`/examples/`)

- Practical usage examples
- Tutorial walkthroughs
- Integration demonstrations

### API Documentation (`/api/`)

- Function reference (future)
- Library documentation (future)
- Integration APIs (future)

## Building Documentation

### Using Docker (Recommended)
```bash
# From repository root
cd tools/docker
docker-compose up docs_service
```

### Local Build
```bash
# From repository root
cd docs
sphinx-build -b html source build/html
python -m http.server 8000 --directory build/html
```

### Development with Live Reload
```bash
# From repository root
cd tools/docker
docker-compose --profile dev up docs_dev
```

## Documentation Standards

- **Markdown** for guides and user documentation
- **reStructuredText** for Sphinx technical documentation
- **Clear headings** and section organization
- **Code examples** with syntax highlighting
- **Cross-references** between related documents
- **Table of contents** for longer documents

## Contributing to Documentation

1. Follow the existing structure and style
2. Use clear, concise language
3. Include practical examples
4. Test documentation builds locally
5. Update relevant index files when adding new content
