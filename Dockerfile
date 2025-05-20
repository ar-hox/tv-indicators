# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
# Using --no-cache-dir to reduce image size
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the repository's content into the container at /app
COPY . .

# Build the Sphinx documentation
# The -b html flag specifies the HTML builder.
# docs/source is the input directory where conf.py and source files (.rst,.md) are located.
# docs/build/html is the output directory for the generated HTML files.
RUN sphinx-build -b html docs/source docs/build/html

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV NAME PineDocs

# Run a simple Python HTTP server to serve the documentation
# The server will serve files from the docs/build/html directory.
CMD ["python", "-m", "http.server", "8000", "--directory", "docs/build/html"]
