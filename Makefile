<<<<<<< HEAD
# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
=======
project=Р¦РёС„СЂРёСѓРј
docs_dir=$(TMPDIR)/$(project)-docs

ghdocs:
    rm -rf $(docs_dir)
    $(MAKE) -C docs html
    cp -r docs/_build/html $(docs_dir)
    mv $(docs_dir)/_static $(docs_dir)/static
    mv $(docs_dir)/_sources $(docs_dir)/sources
    perl -pi -e "s/_sources/sources/g;" $(docs_dir)/*.html
    perl -pi -e "s/_static/static/g;" $(docs_dir)/*.html
    git checkout gh-pages
    rm -r sources static
    cp -rf $(docs_dir)/* .
    git add .
    git commit -a -m 'Updates $(project) documentation.'
    git checkout master
    rm -rf $(docs_dir)
>>>>>>> 8ef2599199045fb8a97190663f074c8025836414
