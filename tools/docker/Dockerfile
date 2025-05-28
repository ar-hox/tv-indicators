# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Set the working directory in the container
WORKDIR /app

# Install system dependencies if needed
RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container first (for better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy only necessary files for documentation build
COPY docs/ ./docs/
COPY *.md ./
COPY LICENSE .

# Build the Sphinx documentation
# The -b html flag specifies the HTML builder.
# docs/source is the input directory where conf.py and source files (.rst,.md) are located.
# docs/build/html is the output directory for the generated HTML files.
RUN sphinx-build -b html docs/source docs/build/html

# Create a non-root user for security
RUN adduser --disabled-password --gecos '' --uid 1000 appuser && \
    chown -R appuser:appuser /app
USER appuser

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Health check to ensure the service is running
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/ || exit 1

# Run a simple Python HTTP server to serve the documentation
# The server will serve files from the docs/build/html directory.
CMD ["python", "-m", "http.server", "8000", "--directory", "docs/build/html"]
