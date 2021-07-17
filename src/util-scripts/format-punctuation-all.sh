#!/bin/sh

for file in `find . -name '*.tex' -and ! -name 'main.tex' -and ! -name 'preface.tex' -and ! -name 'title.tex'`
do
    sh ./util-scripts/format-punctuation.sh $file
    echo $file
done
