#! /usr/bin/env bash
echo '>> clean up workspace...'; rm -rf build/* && cp -Rv chapters build/ && cp -Rv index.mdpp build/
cd build && for file in `find chapters -name "*.md"`;
do
  PREFIX=${file%/*}/
  sed -ie "s%!\[\](%![]($PREFIX%g" $file
done && markdown-pp index.mdpp -o index.md
