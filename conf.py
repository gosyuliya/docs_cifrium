#project = 'Платформа Цифриум'
#copyright = '2024, Цифриум'
#author = 'Цифриум'


#extensions = []

#templates_path = ['_templates']
#exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

#language = 'ru'


#html_theme = 'alabaster'
#html_static_path = ['_static']
import sys
import functools
from os.path import abspath, dirname, join

from sphinx import version_info as sphinx_version

sys.setrecursionlimit(2000)

# Make sure we get the version of this copy of Django
sys.path.insert(1, dirname(dirname(abspath(__file__))))

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
sys.path.append(abspath(join(dirname(__file__), "_ext")))

#import github_links

project = 'Платформа Цифриум'
copyright = '2024, Цифриум'
author = 'Цифриум'
release = '1.0'

extensions = [
   # "djangodocs",
    "sphinx.ext.extlinks",
    "sphinx.ext.intersphinx",
    "sphinx.ext.autosectionlabel",
    #"sphinxtogithub",
]

htmlhelp_basename = "Djangodoc"

templates_path = ['_templates']
exclude_patterns = []

language = 'ru'

html_theme = 'sphinx_rtd_theme'
#html_theme = "djangodocs"
#html_theme_path = ["_theme"]

# html_theme = 'alabaster'
html_static_path = ['_static']

html_last_updated_fmt = "%b %d, %Y"

#linkcode_resolve = functools.partial(
    #github_links.github_linkcode_resolve,
   # version=version,
    #next_version=django_next_version,
#)
