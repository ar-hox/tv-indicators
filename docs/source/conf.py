# Configuration file for the Sphinx documentation builder.
#
# For a full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import os
import sys
from pathlib import Path

# Add project root to sys.path for potential autodoc usage
sys.path.insert(0, os.path.abspath('../..'))

# -- Project information -----------------------------------------------------
project = 'Pine Script V6 Master Repository'
copyright = '2025, Pine Script V6 Master Repository Contributors'
author = 'Pine Script V6 Master Repository Contributors'
release = '1.0.0'
version = '1.0'

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx_rtd_theme',        # Read the Docs theme
    'myst_parser',             # For Markdown support
    'sphinx_copybutton',       # Add 'Copy' buttons to code blocks
]

templates_path = ['_templates']
exclude_patterns = [
    '_build', 
    'Thumbs.db', 
    '.DS_Store',
    '**/.git',
    '**/node_modules',
    '**/__pycache__'
]

# The suffix(es) of source filenames.
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}

# The master toctree document.
root_doc = 'index'

language = 'en'

# -- Options for HTML output -------------------------------------------------
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# Theme options
html_theme_options = {
    'logo_only': False,
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': False,
    'collapse_navigation': True,
    'sticky_navigation': True,
    'navigation_depth': 4,
    'includehidden': True,
    'titles_only': False
}

# -- MyST Parser Configuration -----------------------------------------------
myst_enable_extensions = [
    "amsmath",           # For AMS math environments
    "dollarmath",        # For parsing $...$ and $$...$$
    "html_image",        # For raw HTML image tags
    "linkify",           # Convert bare URLs into links
    "replacements",      # Replace {{key}} with values
    "smartquotes",       # Convert quotes to smart quotes
    "tasklist",          # For GFM task lists - [ ] and - [x]
]
myst_heading_anchors = 3  # Auto-generate header anchors up to level 3

# -- Options for intersphinx extension ---------------------------------------
intersphinx_mapping = {
    'python': ('https://docs.python.org/3', None)
}

# -- Options for todo extension ----------------------------------------------
todo_include_todos = True

# -- Copy button configuration -----------------------------------------------
copybutton_prompt_text = r">>> |\.\.\. |\$ |In \[\d*\]: | {2,5}\.\.\.: | {5,8}: "
copybutton_prompt_is_regexp = True
