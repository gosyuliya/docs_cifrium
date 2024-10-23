docs_dir = doc
ghdocs:
 rm -rf $(docs_dir)
 $(MAKE) clean
 $(MAKE) html
 cp -r build/html $(docs_dir)
 mv $(docs_dir)/_static $(docs_dir)/static
 mv $(docs_dir)/_sources $(docs_dir)/sources
 perl -pi -e "s/_sources/sources/g;" $(docs_dir)/*.html
 perl -pi -e "s/_static/static/g;" $(docs_dir)/*.html
 git add .
 git commit -a -m "Updates $(project)."
 git checkout gh-pages
 cp -rf $(docs_dir)/* .
 git add .
 git commit -a -m 'Updates $(project) documentation.'
 git checkout master
 rm -rf $(docs_dir)
 git push origin gh-pages
