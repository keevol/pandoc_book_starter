#! /usr/bin/env bash
rsync -vrl --delete chapters build/ && rsync -vrl --delete index.mdpp build/
cd build && for file in `find chapters -name "*.md"`;
do
  PREFIX=${file%/*}/
  sed -ie "s%!\[\](%![]($PREFIX%g" $file
done && markdown-pp index.mdpp -o index.md
