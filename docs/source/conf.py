# Configuration file for the Sphinx documentation builder.
#
# For a full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import os
import sys
# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
# sys.path.insert(0, os.path.abspath('.'))
# sys.path.insert(0, os.path.abspath('../..')) # To access root directory for potential autodoc

# -- Project information -----------------------------------------------------
project = 'Pine Script V6 Master Repository'
copyright = '2024, Pine Script V6 Master Repository Contributors'
author = 'Pine Script V6 Master Repository Contributors'
release = '0.1.0'
version = '0.1'

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx_rtd_theme',        # Read the Docs theme
    'myst_parser',             # For Markdown support
    'sphinx_copybutton',       # Add 'Copy' buttons to code blocks
]

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}

# The master toctree document.
# For Sphinx 4.0+, root_doc is preferred over master_doc
# master_doc = 'index' # For older Sphinx
root_doc = 'index' # For Sphinx 4.0+

language = 'en'

# -- Options for HTML output -------------------------------------------------
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static'] # If you have custom static files (css, js)
# html_logo = "_static/logo.png" # Optional: if you have a logo
# html_favicon = "_static/favicon.ico" # Optional: if you have a favicon

# html_theme_options = {
#     'logo_only': False,
#     'display_version': True,
#     'prev_next_buttons_location': 'bottom',
#     'style_external_links': False,
#     'vcs_pageview_mode': '',
#     # Toc options
#     'collapse_navigation': True,
#     'sticky_navigation': True,
#     'navigation_depth': 4,
#     'includehidden': True,
#     'titles_only': False
# }

# -- MyST Parser Configuration -----------------------------------------------
myst_enable_extensions = [
    "amsmath",           # For AMS math environments
    "dollarmath",        # For parsing $...$ and $$...$$
    "html_image",        # For raw HTML image tags
    # "linkify",           # Convert bare URLs into links - disabled due to dependency
    "replacements",      # Replace {{key}} with values
    "smartquotes",       # Convert quotes to smart quotes
    "tasklist",          # For GFM task lists - [ ] and - [x]
]
myst_heading_anchors = 3 # Auto-generate header anchors up to level 3 for easy linking

# -- Options for intersphinx extension ---------------------------------------
# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {'python': ('https://docs.python.org/3', None)}

# -- Options for todo extension ----------------------------------------------
todo_include_todos = True

# --- Custom CSS or JS (if any) ---
# def setup(app):
#     app.add_css_file('custom.css') # place in _static/custom.css
