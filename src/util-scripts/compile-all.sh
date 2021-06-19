#!/bin/sh

for file in `find . -name '*.tex' -and ! -name 'main.tex' -and ! -name 'preface.tex' -and ! -name 'title.tex'`
do
    # echo ${file}
    # make FILENAME=${file%.tex}
    sh ./scripts/compile.sh ${file%.tex}
done

sh ./scripts/compile.sh main
sh ./scripts/compile.sh main # Index
