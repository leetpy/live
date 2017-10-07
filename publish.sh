#!/bin/bash

# clean directory
make clean
make html

rm -rf docs/*
mv _build/html/* docs/
mv docs/_static docs/static 
find docs -name "*.html" | xargs sed -i 's/_static/static/'

git add .
git commit -m "update"
git push origin master
