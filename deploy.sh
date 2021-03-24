#!/usr/bin/bash

make html
cd ../carltonshepherd.github.io/
rm -rf *
cp -r ../site-src/output/* .
git add .
git commit -m "Build"
git push
