#project = 'Платформа Цифриум'
#copyright = '2024, Цифриум'
#author = 'Цифриум'


#extensions = []

#templates_path = ['_templates']
#exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

#language = 'ru'


#html_theme = 'alabaster'
#html_static_path = ['_static']

project = 'Платформа Цифриум'
copyright = '2024, Цифриум'
author = 'Цифриум'
release = '1.0'

extensions = ['sphinx.ext.autodoc', 
              'sphinx.ext.napoleon', 
              "myst_parser"]

templates_path = ['_templates']
exclude_patterns = []

language = 'ru'

html_static_path = ['_static']

# html_theme = 'sphinx_rtd_theme'
html_theme = "djangodocs"
html_theme_path = ["_theme"]

html_last_updated_fmt = "%b %d, %Y"

html_theme = 'alabaster'
html_static_path = ['_static']
