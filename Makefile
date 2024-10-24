project=Цифриум
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
