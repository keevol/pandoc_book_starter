#! /usr/bin/env bash
markdown-pp index.mdpp -o build/index.md && cd build/ && pandoc -s -N --toc --toc-depth=4 --self-contained -c ~/FuqiangWorks/templates/pandoc/ivy.css "index.md" > "index.md.html"
