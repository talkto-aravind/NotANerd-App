# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# We need to import the `os` and `sys` modules to configure the Python path.
import os
import sys

# We'll add the parent directory of this file (the `backend` directory)
# to the Python path. This allows Sphinx to find and import your Python modules
# from the backend directory.
sys.path.insert(0, os.path.abspath('../../backend'))


# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'NotANerd App'
copyright = '2025, The NotANerd Author'
author = 'The NotANerd Author'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

# These are the Sphinx extensions we will use.
# `sphinx.ext.autodoc` automatically generates documentation from docstrings.
# `sphinx.ext.napoleon` allows Sphinx to parse Google-style docstrings.
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# The theme for your documentation. `sphinx_rtd_theme` is a popular, clean choice.
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

